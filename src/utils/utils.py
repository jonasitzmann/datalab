import traceback
import numpy as np
from sklearn.datasets import load_files
from sklearn.model_selection import RandomizedSearchCV
from sklearn.model_selection import cross_val_score
from scipy.stats import randint
from helpers import dotdict


def get_dataset(unit, challenge):
    print('loading data')
    path = 'data/unit_{}/challenge_{}/'.format(unit, challenge)
    train_data = load_files(path + 'train', shuffle=True, encoding='utf-8', decode_error='ignore')
    test_data = load_files(path + 'test', encoding='utf-8', decode_error='ignore')
    dataset = {
        'x_train': train_data.data,
        'y_train': train_data.target,
        'x_test': test_data.data,
        'test_names': [name.split('/')[-1] for name in test_data.filenames],
        'unit': unit,
        'challenge': challenge,
    }
    return dotdict(dataset)


def save_predictions(dataset, score):
    print('saving predictions')
    path = 'predictions/unit_{}/challenge_{}/score_{}.csv'.format(dataset.unit, dataset.challenge, score)
    with open(path, 'w') as file:
        for name, prediction in zip(dataset.test_names, dataset.test_preds):
            file.write('{};{}\n'.format(name, prediction))
    print('saved')


def fit_predict(classifier, dataset):
    print('fitting on entire training data')
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
                dataset = fit_predict(best_model, dataset)
                save_predictions(dataset, best_score)

        except Exception:
            print('Error (skipping param set):\n{}'.format(traceback.format_exc()))


def evaluate_classifier(classifier, dataset, n_folds=5):
    print('evaluating classifier')
    scores = cross_val_score(classifier, dataset.x_train, dataset.y_train, n_jobs=7, scoring='balanced_accuracy', cv=n_folds)
    print('cross validation scores:\n{}'.format(scores))
    mean_score = np.mean(scores)
    print('mean score: {}'.format(mean_score))
    return mean_score


