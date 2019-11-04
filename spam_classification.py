import os
import shutil
import sys
import numpy as np
from collections import defaultdict
from collections import Counter
from zipfile import ZipFile
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import train_test_split
from sklearn.decomposition import PCA
from sklearn.feature_selection import SelectKBest
from sklearn.feature_selection import chi2
from sklearn.cluster import KMeans
from sklearn.cluster import MiniBatchKMeans
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from scipy.spatial import distance
import re
import warnings
import spacy
import pickle
from singleton_decorator import singleton
from helpers import cache_result
from sklearn.pipeline import Pipeline
from sklearn.pipeline import FeatureUnion
from sklearn.preprocessing import FunctionTransformer
from einfuehrung_mit_spam_1 import load_training_data
from einfuehrung_mit_spam_1 import DenseTransformer
from einfuehrung_mit_spam_1 import HandCraftedFeatureExtractor
from einfuehrung_mit_spam_1 import load_embeddings
from sklearn.datasets import load_files
from sklearn.neural_network import MLPClassifier
from sklearn.model_selection import GridSearchCV
from skorch import NeuralNetClassifier
import argparse
from lstm import LSTMClassifier
from helpers import pad_3d_array
import torch
warnings.simplefilter(
    action='ignore',
    category=FutureWarning)  # disable future warnings

parser = argparse.ArgumentParser()
parser.add_argument('--telegram', help='log messages are sent to telegram', type=bool, default=False, required=False)
parser.add_argument('--n_samples', help='number of samples to use for training', type=int, default=-1, required=False)
parser.add_argument('--verbose', help='print debug information', type=bool, default=False, required=False)

args = parser.parse_args()


def log(text):
    print(text)
    if args.telegram:
        os.system('bot "{}"'.format(text))


#  configuration
TRAIN_DATA_PATH = 'training.zip'
CACHE_DIR = 'cache'


def get_bow_pipeline():
    dataset = load_files('training', shuffle=True, encoding='utf-8', decode_error='ignore')
    xs, ys = dataset.data[:1000], dataset.target[:1000]
    feature_extractor = FeatureUnion([
        ('bag_of_words', TfidfVectorizer(ngram_range=(1, 3))),
        #  ('bag_of_concepts', BagOfConceptVectorizer())  # todo: implement
        ('other_features', HandCraftedFeatureExtractor())
    ])
    pipeline = Pipeline([
        ('feature_extraction', feature_extractor),
        ('feature_selection', SelectKBest(score_func=chi2, k=2000)),
        ('sparse_to_dense', DenseTransformer()),
        #('pca', PCA(n_components=100)),
        ('normalization', StandardScaler()),
        # ('classifier', SVC())
        ('classifier', MLPClassifier(hidden_layer_sizes=(10, 30, 10), max_iter=500, tol=1e-8, verbose=args.verbose))
    ], memory=None, verbose=args.verbose)
    hyperparams = {
        'feature_selection__k': [100, 1000, 2000, 5000],
        'classifier__hidden_layer_sizes': [(10, 30, 10), (20, 60, 20)]
    }
    return xs, ys, pipeline, hyperparams


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
        #iterator_train__shuffle=True
    )
    pipeline = Pipeline([
        ('normalization', StandardScaler()),
        ('reshape_2', FunctionTransformer(lambda x: x.reshape(-1, *xs_shape[1:]))),
        ('lstm', lstm)
    ], verbose=args.verbose
)
    return xs, ys, pipeline


def evaluate_pipeline(pipeline, xs, ys):
    #try:
        accuracies = cross_val_score(pipeline, xs, ys, verbose=args.verbose, n_jobs=-1)
        log('cross validation accuracies: {}'.format(accuracies))
    #except Exception as ex:
        pass
        #log('Error:\n{}'.format(str(ex)))





if __name__ == '__main__':
    #xs, ys, pipeline = get_lstm_pipeline()
    xs, ys, pipeline, params = get_bow_pipeline()
    #evaluate_pipeline(pipeline, xs, ys)
    gs_classifier = GridSearchCV(pipeline, params)
    xs_train, xs_test, ys_train, ys_test = train_test_split(xs, ys)
    gs_classifier.fit(xs_train, ys_train)
    print('best parameters: {}'.format(gs_classifier.best_params_))
    log(gs_classifier.score(xs_test, ys_test))



