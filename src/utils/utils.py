from datetime import datetime
import traceback
import numpy as np
import pandas as pd
import os
from glob import glob
from sklearn.datasets import load_files
from sklearn.model_selection import RandomizedSearchCV
from sklearn.model_selection import cross_val_score
from sklearn.base import BaseEstimator
from sklearn.base import TransformerMixin
from skorch.callbacks import Callback
import torch
import random
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import StratifiedKFold
from sklearn.metrics import balanced_accuracy_score
from sklearn.metrics import make_scorer
from sklearn.base import ClassifierMixin
from joblib import Parallel, delayed, parallel_backend
from sklearn.model_selection._search import ParameterSampler
from sklearn.pipeline import Pipeline


class FixRandomSeed(Callback):

    def __init__(self, seed=42):
        self.seed = 42

    def initialize(self):
        torch.manual_seed(self.seed)
        torch.cuda.manual_seed(self.seed)
        random.seed(self.seed)
        np.random.seed(self.seed)
        torch.backends.cudnn.deterministic = True




class dotdict(dict):
    """dot.notation access to dictionary attributes"""
    __getattr__ = dict.get
    __setattr__ = dict.__setitem__
    __delattr__ = dict.__delitem__


def get_dataset(unit, challenge, samples_factor):
    print('loading {0:.0%} of the training data'.format(samples_factor))
    path = 'data/unit_{}/challenge_{}/'.format(unit, challenge)
    train_data = load_files(path + 'train', shuffle=True, encoding='utf-8', decode_error='ignore')
    test_data = load_files(path + 'test', encoding='utf-8', decode_error='ignore')
    n_samples_train = int(len(train_data.data) * samples_factor)
    n_samples_test = int(len(test_data.data) * samples_factor)
    dataset = dotdict({
        'x_train': train_data.data[:n_samples_train],
        'y_train': train_data.target[:n_samples_train],
        'x_test': test_data.data[:n_samples_test],
        'test_names': [name.split('/')[-1] for name in test_data.filenames],
        'unit': unit,
        'challenge': challenge,
    })
    num_c0 = sum(dataset.y_train == 0)
    num_c1 = sum(dataset.y_train == 1)
    train_size = len(dataset.y_train)
    print('class 0: {} ({:.0%})\nclass 1: {} ({:.0%})'.format(
        num_c0, num_c0 / train_size, num_c1, num_c1 / train_size))
    dataset.num_c0 = num_c0
    dataset.num_c1 = num_c1
    dataset.train_size = train_size
    return dataset


def save_predictions(dataset, score):  # todo: parallelize
    print('saving predictions')
    folder = 'predictions/unit_{}/challenge_{}'.format(dataset.unit, dataset.challenge)
    if not os.path.isdir(folder):
        os.mkdir(folder)
    file_path = '{}/score_{}.csv'.format(folder, score)
    with open(file_path, 'w') as file:
        for name, prediction in zip(dataset.test_names, dataset.test_preds):
            file.write('{};{}\n'.format(name, prediction))
    print('saved')


def get_cheat_dict(classifier: Pipeline, x_test=None):
    cheat_dict = {}
    if 'x_test_fitter' in classifier.named_steps.keys():
        cheat_dict['x_test_fitter__x_test'] = x_test
    return cheat_dict


def fit_predict(classifier, dataset):
    print('fitting on entire training data')
    cheat_dict = get_cheat_dict(classifier, dataset.x_test)
    classifier.fit(dataset.x_train, dataset.y_train, **cheat_dict)
    dataset.test_preds = classifier.predict(dataset.x_test)
    return dataset


def endless_random_search(model:BaseEstimator, dataset,  param_distribution: dict):
    print('start endless_random_search')
    df = pd.DataFrame(columns=[*param_distribution.keys(), 'score'])
    best_score = 0.
    iter = 0
    while True:
        iter += 1
        params = list(ParameterSampler(param_distribution, 1))[0]
        try:
            model.set_params(**params)
            score = cross_validate(model, dataset, verbose=False)
            df.loc[iter] = [*params.values(), score]
            df.to_csv('params_score.csv')
            if score > best_score:
                best_params = params
                best_score = score
                print("best params")
                print(best_params)
                print("best score after {} iteration{}: {:.2%}".format(iter, "s" if iter > 1 else "", best_score))
                dataset = fit_predict(model, dataset)
                save_predictions(dataset, best_score)
            else:
                print('score: {:.2%}'.format(score))

        except Exception as ex:
            print('Error (skipping param set):\n{}'.format(traceback.format_exc()))


def evaluate_cv(classifier, dataset, n_folds=5):
    print('evaluating classifier')
    scores = cross_val_score(classifier, dataset.x_train, dataset.y_train, n_jobs=7, scoring='balanced_accuracy', cv=n_folds)
    print('cross validation scores:\n{}'.format(scores))
    mean_score = np.mean(scores)
    print('mean score: {}'.format(mean_score))
    return mean_score


def merge_predictions(unit, challenge, n_best):
    path = 'predictions/unit_{}/challenge_{}/'.format(unit, challenge)
    files = glob(path + '*.csv')
    scores_files = sorted([(float(os.path.basename(file)[6:-4]), file) for file in files])[-n_best:]
    all_predictions = pd.DataFrame()
    for score, file in scores_files:
        df = pd.read_csv(file, sep=';', header=None, names=['name', 'prediction'])
        df = df.sort_values(by='name')
        all_predictions["name"] = df.name
        all_predictions[score] = df.prediction
    all_predictions['mean_pred'] = all_predictions.drop(columns='name').mean(axis=1)
    all_predictions['voted'] = all_predictions.mean_pred.round()
    dt_string = datetime.now().strftime("%d.%m__%H:%M:%S")
    path += 'voted/'
    if not os.path.exists(path):
        os.mkdir(path)
    filename = '{}/voted_{}.csv'.format(path, dt_string)
    all_predictions['name'] = ['data/spam1-test/' + name for name in all_predictions['name']]
    all_predictions[['name', 'voted']].to_csv(filename, index=False, sep=';', header=False, float_format='%.0f')


class ClfSwitcher(BaseEstimator):
    def __init__(self, model1, model2, take_model1):
        self.model1 = model1
        self.model2 = model2
        self.take_model1 = take_model1

    def split(self, x, y=None):
        idxs = range(len(x))
        model1_idxs = [i for i in idxs if self.take_model1(x[i])]
        model2_idxs = [i for i in idxs if i not in model1_idxs]
        x1 = [x_i for i, x_i in enumerate(x) if i in model1_idxs]
        x2 = [x_i for i, x_i in enumerate(x) if i in model2_idxs]
        if y is not None:
            y1 = np.array(y)[model1_idxs]
            y2 = np.array(y)[model2_idxs]
            return x1, y1, x2, y2
        else:
            return x1, x2, model1_idxs, model2_idxs

    def fit(self, x, y, **kwargs):
        x1, y1, x2, y2 = self.split(x, y)
        self.model1 = self.model1.fit(x1, y1)
        self.model2 = self.model2.fit(x2, y2)
        return self

    def predict(self, x, y=None):
        x1, x2, model1_idxs, model2_idxs = self.split(x)
        preds_1 = self.model1.predict(x1)
        preds_2 = self.model2.predict(x2)
        preds = np.zeros(len(x))
        preds[model1_idxs] = preds_1
        preds[model2_idxs] = preds_2
        return preds


def couple_params_decorator(func1, param1: str, func2, param2: str):
    def wrapper(*args, **kwargs):
        func2(**{param2: kwargs[param1]})
        return func1(*args, **kwargs)
    return wrapper


def couple_params(obj1: BaseEstimator, param1, obj2: BaseEstimator, param2):
    obj1.set_params = couple_params_decorator(obj1.set_params, param1, obj2.set_params, param2)


def calc_score(model, scorer, i, xs_train, ys_train, xs_test, ys_test):
    cheat_dict = get_cheat_dict(model, xs_test)
    model.fit(xs_train, ys_train, **cheat_dict)
    score = scorer(model, xs_test, ys_test)
    print("score for fold {}: {:.2%}".format(i+1, score))
    return score


def cross_validate(model: ClassifierMixin, dataset, n_folds=4, n_jobs=4, verbose=True):
    if verbose:
        print("starting {}-fold cross validation using balanced accuracy".format(n_folds))
    xs, ys = dataset.x_train, dataset.y_train
    scorer = make_scorer(balanced_accuracy_score)
    k_fold = StratifiedKFold(n_folds, shuffle=True, random_state=0)
    fold_params = []
    for i, (train_idxs, test_idxs) in enumerate(k_fold.split(xs, ys)):
        xs_train = [xs[idx] for idx in train_idxs]
        xs_test = [xs[idx] for idx in test_idxs]
        ys_train = ys[train_idxs]
        ys_test = ys[test_idxs]
        fold_params.append((i, xs_train, ys_train, xs_test, ys_test))
    parallel = False
    if parallel:
        scores = Parallel(n_jobs=n_jobs)(delayed(calc_score)(model, scorer, *params) for params in fold_params)
    else:
        scores = [calc_score(model, scorer, *params) for params in fold_params]
    mean_score = np.mean(scores)
    if verbose:
        print("mean score: {:.2%} (+/- {:.2%})".format(mean_score, np.std(scores) * 2))
    return mean_score


def normalize(x_train, x_test):
    normalizer = StandardScaler()
    normalizer.fit(x_train)
    return normalizer.transform(x_train), normalizer.transform(x_test)


class DenseTransformer(TransformerMixin):
    def fit(self, X, y=None, **fit_params):
        return self

    def transform(self, X, y=None, **fit_params):
        if hasattr(X, 'todense'):
            X = X.todense()
        return X


class OptionalTransformer(TransformerMixin):
    def __init__(self, active=True):
        super(OptionalTransformer, self).__init__()
        self.active = active
        self.transform = self.if_active(self.transform)

    def set_params(self, active=None, **kwargs):
        if active is not None:
            self.active = bool(active)

    def if_active(self, func):
        def wrapper(pass_param, *args, **kwargs):
            if self.active:
                return func(pass_param, *args, **kwargs)
            else:
                return pass_param
        return wrapper


class XTestFitter(OptionalTransformer):
    def __init__(self):
        super(XTestFitter).__init__()
        self.x_train_size = None
        self.x_test = None

    def fit(self, x_train, y=None, x_test=None, **fit_params):
        self.x_test = x_test
        return self

    def transform(self, x_train, y_train=None, **kwargs):
        self.x_train_size = len(x_train)
        if isinstance(self.x_test, list):
            x_train = list(x_train + self.x_test)
        else:
            print('no x_test provided. fitting on x_train only')
        return x_train


class NoXTestFitter(OptionalTransformer):
    def __init__(self, x_test_fitter: XTestFitter):
        super(NoXTestFitter).__init__()
        self.x_test_fitter = x_test_fitter

    def fit(self, x_train, y=None, **fit_params):
        return self

    def transform(self, x_train, y_train=None, **kwargs):
        if self.x_test_fitter.x_train_size is not None:
            x_train = x_train[:self.x_test_fitter.x_train_size]
        self.x_test_fitter.x_train_size = None
        return x_train


