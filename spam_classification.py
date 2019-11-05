import argparse
import os
import pprint
import pickle
import re
import shutil
import sys
import warnings
from collections import Counter, defaultdict
from zipfile import ZipFile

import numpy as np
import spacy
import torch
from scipy.spatial import distance
from singleton_decorator import singleton
from sklearn.cluster import KMeans, MiniBatchKMeans
from sklearn.datasets import load_files
from sklearn.decomposition import PCA
from sklearn.ensemble import RandomForestClassifier
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_selection import SelectKBest, chi2
from sklearn.model_selection import (GridSearchCV, cross_val_score,
                                     train_test_split)
from sklearn.neural_network import MLPClassifier
from sklearn.pipeline import FeatureUnion, Pipeline
from sklearn.preprocessing import FunctionTransformer, StandardScaler
from sklearn.svm import SVC
from skorch import NeuralNetClassifier

from einfuehrung_mit_spam_1 import (DenseTransformer,
                                    HandCraftedFeatureExtractor,
                                    load_embeddings, load_training_data)
from helpers import cache_result, pad_3d_array
from lstm import LSTMClassifier

warnings.simplefilter(
    action='ignore',
    category=FutureWarning)  # disable future warnings

parser = argparse.ArgumentParser()
parser.add_argument('--telegram', help='log messages are sent to telegram',
                    type=bool, default=False, required=False)
parser.add_argument('--n_samples', help='number of samples to use for training',
                    type=int, default=-1, required=False)
parser.add_argument('--verbose', help='print debug information',
                    type=bool, default=False, required=False)

args = parser.parse_args()


def log(text):
    if type(text) is dict:
        for key, value in text.items():
            log("{}:".format(key))
            log(str(value))
    else:
        print(text)
        if args.telegram:
            text = text.replace("[", "\[")
            #text = text.replace("]", "\]")
            text = text.replace("_", "\_")
            text = text.replace("'", "\"")
            for line in text.split('\n'):
                os.system("bot '{}'".format(line))


#  configuration
TRAIN_DATA_PATH = 'training.zip'
CACHE_DIR = 'cache'


def get_bow_pipeline():
    dataset = load_files('training', shuffle=True,
                         encoding='utf-8', decode_error='ignore')
    xs, ys = dataset.data, dataset.target
    feature_extractor = FeatureUnion([
        ('bag_of_words', TfidfVectorizer(ngram_range=(1, 6))),
        #  ('bag_of_concepts', BagOfConceptVectorizer())  # todo: implement
        ('other_features', HandCraftedFeatureExtractor())
    ])
    pipeline = Pipeline([
        ('feature_extraction', feature_extractor),
        ('feature_selection', SelectKBest(score_func=chi2, k=1000)),
        ('sparse_to_dense', DenseTransformer()),
        #  ('pca', PCA(n_components=100)),
        ('normalization', StandardScaler()),
        # ('classifier', SVC())
        ('classifier', MLPClassifier(max_iter=1000,
                                     hidden_layer_sizes=(20, 20, 10), tol=1e-6, verbose=True))
    ], memory=None, verbose=args.verbose)
    hyperparams = {
        'feature_selection__k': [1000],
        'classifier__hidden_layer_sizes': [(20, 10, 10), (20, 40, 10)],
        # 'feature_extraction__bag_of_words__ngram_range': [(1, 5)]
    }
    return xs, ys, pipeline, hyperparams


def big_run():
    global args
    args.verbose = True
    args.telegram=True
    log('running big run')
    try:
        xs, ys, pipeline, _ = get_bow_pipeline()
        hyperparams = {
            'feature_extraction__bag_of_words__ngram_range': [(1, 3), (1, 6), (1, 9)],
            'feature_selection__k': [1000, 2000, 4000, 8000],
            'classifier__hidden_layer_sizes': [(20, 20, 20), (10, 40, 10), (5, 10, 5), (20, 30, 30, 20)]
        }
        log('params:')
        log(hyperparams)
        gs_classifier = GridSearchCV(
            pipeline, hyperparams, n_jobs=-1, verbose=args.verbose, cv=2, scoring='balanced_accuracy')
        xs_train, xs_test, ys_train, ys_test = train_test_split(xs, ys)
        gs_classifier = gs_classifier.fit(xs_train, ys_train)
        acc = gs_classifier.score(xs_test, ys_test)
        log('best params:')
        log(gs_classifier.best_params_)
        log('accuracy: {}'.format(acc))
    except Exception as ex:
        log('\nError:\n{}'.format(str(ex)))




def get_lstm_pipeline():
    n_samples = 100
    _, ys = load_training_data('training.zip', n_samples)
    xs = list(load_embeddings('training_embeddings_sm', n_samples))
    xs = pad_3d_array(xs)
    xs_shape = xs.shape
    ys = np.array(ys, dtype=np.long)
    input_dim = xs.shape[2]
    xs = xs.reshape(xs.shape[0], -1)
    lstm = NeuralNetClassifier(
        module=LSTMClassifier,
        module__input_dim=input_dim,
        max_epochs=200,
        optimizer=torch.optim.Adam,
        # Shuffle training data on each epoch
        # iterator_train__shuffle=True
    )
    pipeline = Pipeline([
        ('normalization', StandardScaler()),
        ('reshape_2', FunctionTransformer(
            lambda x: x.reshape(-1, *xs_shape[1:]))),
        ('lstm', lstm)
    ], verbose=args.verbose
    )
    return xs, ys, pipeline


def evaluate_pipeline(pipeline, xs, ys, short=False):
    if short:
        xs_train, xs_test, ys_train, ys_test = train_test_split(xs, ys)
        pipeline.fit(xs_train, ys_train)
        log('accuracy: {}'.format(pipeline.score(xs_test, ys_test)))
    else:
        try:
            accuracies = cross_val_score(
                pipeline, xs, ys, verbose=args.verbose, n_jobs=7, scoring='balanced_accuracy', cv=2)
            log('cross validation accuracies: {}'.format(accuracies))
        except Exception as ex:
            log('Error:\n{}'.format(str(ex)))


def main():
    #xs, ys, pipeline = get_lstm_pipeline()
    xs, ys, pipeline, params = get_bow_pipeline()
    gs_classifier = GridSearchCV(
        pipeline, params, n_jobs=7, verbose=args.verbose, cv=2, scoring='balanced_accuracy')
    evaluate_pipeline(gs_classifier, xs, ys, short=True)

if __name__ == '__main__':
    main()
