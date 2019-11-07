import pickle
import warnings
import traceback
import numpy as np
from sklearn.datasets import load_files
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_selection import SelectKBest, chi2
from sklearn.model_selection import RandomizedSearchCV
from sklearn.model_selection import cross_val_score
from scipy.stats import randint
from sklearn.neural_network import MLPClassifier
from sklearn.base import clone
from sklearn.pipeline import FeatureUnion, Pipeline
from sklearn.preprocessing import StandardScaler
from einfuehrung_mit_spam_1 import DenseTransformer
from einfuehrung_mit_spam_1 import HandCraftedFeatureExtractor
from sklearn.ensemble import VotingClassifier
from helpers import dotdict
from sklearn.decomposition import PCA
from sklearn.svm import SVC

warnings.simplefilter(action='ignore', category=FutureWarning)


def get_dataset(unit, challenge):
    print('loading data')
    path = 'data/unit_{}/challenge_{}/'.format(unit, challenge)
    train_data = load_files(path + 'train', shuffle=True, encoding='utf-8', decode_error='ignore')
    test_data = load_files(path + 'test', encoding='utf-8', decode_error='ignore')
    dataset = {
        'x_train': train_data.data,
        'y_train': train_data.target,
        'x_test': test_data.data,
        'test_names': [name.split('/')[-1] for name in test_data.filenames]
    }
    return dotdict(dataset)


def save_predictions(dataset, unit, challenge, score):
    path = 'predictions/unit_{}/challenge_{}/score_{}.csv'.format(unit, challenge, score)
    with open(path, 'w') as file:
        for name, prediction in zip(dataset.test_names, dataset.test_preds):
            file.write('{};{}\n'.format(name, prediction))


def fit_predict(classifier, dataset):
    classifier = classifier.fit(dataset.x_train, dataset.y_train)
    dataset.test_preds = classifier.predict(dataset.x_test)
    return dataset


def endless_random_search(model, dataset,  param_distribution):
    print('start endless_random_search')
    best_score = 0.
    iter = 0
    while True:
        iter += 1
        clf = RandomizedSearchCV(model, param_distribution, n_iter=1, n_jobs=-1, cv=5, scoring='balanced_accuracy')
        try:
            clf = clf.fit(dataset.x_train, dataset.y_train)
            score = clf.best_score_
            if score > best_score:
                best_params = clf.best_params_
                best_model = clf.best_estimator_
                best_score = score
                print("best params")
                print(best_params)
                print("best score after {} iteration{}: {}".format(iter, "s" if iter > 1 else "", best_score))
                pickle.dump(best_model, open('best_model.bin', 'wb'))
        except Exception:
            print('Error (skipping param set):\n{}'.format(traceback.format_exc()))


def evaluate_classifier(classifier, dataset, n_folds=5):
    print('evaluating classifier')
    scores = cross_val_score(classifier, dataset.x_train, dataset.y_train, n_jobs=7, scoring='balanced_accuracy', cv=n_folds)
    print('cross validation scores:\n{}'.format(scores))
    mean_score = np.mean(scores)
    print('mean score: {}'.format(mean_score))
    return mean_score


def get_pipeline_unit1_challenge1():
    pipeline = Pipeline([
        ('feature_extraction', FeatureUnion([
            ('bag_of_words', TfidfVectorizer()),
            ('other_features', HandCraftedFeatureExtractor())])),
        ('feature_selection', SelectKBest(score_func=chi2)),
        ('sparse_to_dense', DenseTransformer()),
        ('normalization', StandardScaler()),
        ('classifier', MLPClassifier(max_iter=5000, tol=1e-6))
    ], verbose=False)
    return pipeline


def get_hyperparams_distribution_unit1_challenge1():
    return {
        #  'feature_extraction__bag_of_words__ngram_range': [(1, 3), (1, 5)],
        'feature_selection__k': randint(3000, 5000),
        'classifier__hidden_layer_sizes': [(10, 10), (10, 10, 10), (3, 10), (3, 10, 10)]
    }


def get_best_hyperparams_unit1_challenge1():
    return {
        'feature_extraction__bag_of_words__ngram_range': (1, 3),
        'feature_selection__k': 15000,
        'classifier__hidden_layer_sizes': (10, 10, 10)
    }


def get_pipeline_unit1_challenge2():
    pipeline = Pipeline([
        ('feature_extraction', TfidfVectorizer(ngram_range=(1, 1), max_features=2000)),
        ('sparse_to_dense', DenseTransformer()),
        ('pca', PCA(n_components=30)),
        ('classifier', SVC())
    ])
    return pipeline


def main():  # this function is called by the bot
    unit = 1
    challenge = 1
    dataset = get_dataset(unit, challenge)
    classifier = get_pipeline_unit1_challenge1()
    best_params = get_best_hyperparams_unit1_challenge1()
    classifier = classifier.set_params(**best_params)
    evaluate_classifier(classifier, dataset)
    n_estimators = 10
    print('making ensemble of {} classifiers'.format(n_estimators))
    # todo: BaggingClassifier does not work
    ensemble = VotingClassifier([(str(i), clone(classifier)) for i in range(n_estimators)])
    score = evaluate_classifier(ensemble, dataset)
    print('making predictions')
    dataset = fit_predict(classifier, dataset)
    print('saving predictions')
    save_predictions(dataset, unit, challenge, score)
    print('done')


if __name__ == '__main__':
    main()
