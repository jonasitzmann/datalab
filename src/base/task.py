import os
from abc import ABC, abstractmethod
from src.utils.utils import calc_score
import pandas as pd
from zipfile import ZipFile
from sklearn.model_selection import StratifiedKFold
from sklearn.metrics import balanced_accuracy_score
from sklearn.metrics.cluster import adjusted_mutual_info_score
from sklearn.metrics import make_scorer
from sklearn.metrics import confusion_matrix
from joblib import Parallel, delayed
import numpy as np
import wget
from sklearn.model_selection._search import ParameterSampler
from sklearn.model_selection import train_test_split
import traceback
from src.utils.utils import get_cheat_dict
from src.utils.utils import get_filename_unique
import inspect
import re



class BaseTask(ABC):
    def __init__(self, samples_factor=1):
        filename = inspect.getfile(self.__class__).split('/')[-1]
        pattern = r'unit(?P<unit>\d)_challenge(?P<challenge>\d).py'
        match = re.match(pattern, filename)
        assert match, 'file name must match the following pattern:\n{}'.format(pattern)
        self.unit = match.group('unit')
        self.challenge = match.group('challenge')
        print('working on unit {}, challenge {}'.format(self.unit, self.challenge))
        path = 'data/unit_{}/challenge_{}/'.format(self.unit, self.challenge)
        os.makedirs(path, exist_ok=True)
        self.train_path = path + 'train.zip'
        self.test_path = path + 'test.zip'
        self.x_train = self.y_train = self.x_test = self.test_names = None
        self.num_c0 = self.num_c1 = self.train_size = 0
        self.load_dataset(samples_factor)
        self.model = self.get_model()
        self.param_distribution = self.get_param_distribution()
        if hasattr(self.model, 'set_params'):
            self.model = self.model.set_params(**self.get_params())

    @property
    def include_file_names(self):
        return False

    @property
    def decode_data(self):
        return False

    @property
    def metric(self):
        return balanced_accuracy_score

    @abstractmethod
    def get_model(self):
        return None

    def get_param_distribution(self):
        return {}

    def get_params(self):
        return {}

    @property
    def train_data_link(self):
        return None

    @property
    def test_data_link(self):
        return None

    def cross_validate(self, n_folds=1, n_jobs=6, verbose=True, parallel=True):
        if verbose:
            print("starting {}-fold cross validation using {}".format(n_folds, self.metric.__name__))
        xs, ys = self.x_train, self.y_train
        scorer = make_scorer(self.metric)
        if n_folds == 1:
            x_train, x_test, y_train, y_test = train_test_split(xs, ys, stratify=ys)
            score = calc_score(self.model, scorer, 0, x_train, y_train, x_test, y_test, verbose=verbose)
            print('score: {:.2%}'.format(score))
        else:
            k_fold = StratifiedKFold(n_folds, shuffle=True, random_state=0)
            fold_params = []
            for i, (train_idxs, test_idxs) in enumerate(k_fold.split(xs, ys)):
                xs_train = [xs[idx] for idx in train_idxs]
                xs_test = [xs[idx] for idx in test_idxs]
                ys_train = ys[train_idxs]
                ys_test = ys[test_idxs]
                fold_params.append((i, xs_train, ys_train, xs_test, ys_test))
            if parallel:
                scores = Parallel(n_jobs=n_jobs)(
                    delayed(calc_score)(self.model, scorer, *params, verbose=verbose)
                    for params in fold_params)
            else:
                print('parallel option disabled. (debugging mode)')
                scores = [calc_score(self.model, scorer, *params) for params in fold_params]
            score = np.mean(scores)
            if verbose:
                print("mean score: {:.2%} (+/- {:.2%})".format(score, np.std(scores) * 2))
        return score

    def get_false_negatives(self, n_samples=5):
        xs, ys = self.x_train, self.y_train
        model = self.model.fit(xs, ys)
        predictions = model.predict(xs)
        print('score on training data: {}'.format(self.metric(ys, predictions)))
        c_mat = pd.DataFrame(
            confusion_matrix(ys, predictions) / len(ys),
            index=['true:yes', 'true:no'],
            columns=['pred:yes', 'pred:no'])
        print('confusion_matrix:\n{}'.format(c_mat))
        false_negatives = [x for x, y, pred in zip(xs, ys, predictions) if y and not pred]
        return false_negatives[:n_samples]

    def load_dataset(self, samples_factor):
        if not os.path.exists(self.train_path):
            self.download_train_data()
        print('loading {:.0%} of the training data'.format(samples_factor))
        with ZipFile(self.train_path) as train_files:
            labels_file = list(filter(lambda x: 'labels' in x, train_files.namelist()))[0]
            columns = ['name', 'label']
            df = pd.read_csv(train_files.open(labels_file), sep=';', index_col=None, header=None, names=columns)
            df = df.sample(frac=samples_factor, random_state=0)
            self.y_train = df.label.to_numpy()
            self.x_train = [train_files.open(name).read() for name in df.name]
            if self.decode_data:
                self.x_train = [x.decode('utf-8', errors='ignore') for x in self.x_train]
        min_class = np.min(self.y_train)
        max_class = np.max(self.y_train)
        if min_class == 0 and max_class == 1:  # todo: change to list to support general case of n classes
            self.num_c0 = sum(self.y_train == 0)
            self.num_c1 = sum(self.y_train == 1)
        self.train_size = len(self.y_train)
        for cls_idx in range(min_class, max_class + 1):
            n_class_samples = sum(self.y_train == cls_idx)
            class_ratio = n_class_samples / self.train_size
            print('class {}: {} ({:.0%})'.format(cls_idx, n_class_samples, class_ratio))

    def load_test_data(self):
        print('loading test data')
        if not os.path.exists(self.test_path):
            self.download_test_data()
        with ZipFile(self.test_path) as test_files:
            self.test_names = test_files.namelist()
            self.x_test = [test_files.open(name).read() for name in self.test_names]
            if self.decode_data:
                self.x_test = [x.decode('utf-8', errors='ignore') for x in self.x_test]

    def download_train_data(self):
        assert self.train_data_link is not None, "specify train_data_link to download train data"
        print('downloading training data')
        wget.download(self.train_data_link, out=self.train_path)

    def download_test_data(self):  # todo: this is duplicated
        if self.test_data_link is None:
            print('specify test_data_link to download test data')
            return False
        print('downloading test data')
        wget.download(self.test_data_link, out=self.test_path)

    def find_params(self, parallel=True, verbose=False):
        file_name = get_filename_unique('params_score.csv')
        print('endless_random_search (params are saved to {})'.format(file_name))
        df = pd.DataFrame(columns=[*self.param_distribution.keys(), 'score'])
        best_score = 0.
        iter = 0
        while True:
            iter += 1
            params = list(ParameterSampler(self.param_distribution, 1))[0]
            try:
                self.model.set_params(**params)
                score = self.cross_validate(verbose=verbose, parallel=parallel, n_folds=1)
                params_and_score = params
                params_and_score['score'] = score
                df = df.append(params_and_score, ignore_index=True)
                df.to_csv(file_name)
                if score > best_score:
                    best_params = params
                    best_score = score
                    print("best params")
                    print(best_params)
                    print("best score after {} iteration{}: {:.2%}".format(iter, "s" if iter > 1 else "", best_score))
                else:
                    print('score: {:.2%}'.format(score))
                self.save_predictions(score)

            except Exception as ex:
                print('Error (skipping param set):\n{}'.format(traceback.format_exc()))

    def save_predictions(self, score=""):  # todo: parallelize
        predictions = self.fit_predict()
        print('saving predictions')
        folder = 'predictions/unit_{}/challenge_{}'.format(self.unit, self.challenge)
        os.makedirs(folder, exist_ok=True)
        pred_file_name = "preds_score_{}".format(score) if score else "preds"
        file_path = get_filename_unique('{}/{}.csv'.format(folder, pred_file_name))
        with open(file_path, 'w') as file:
            for name, prediction in zip(self.test_names, predictions):
                file.write('{};{}\n'.format(name, prediction))
        print('saved')

    def fit_predict(self):
        if self.x_test is None:
            self.load_test_data()
        print('fitting on entire training data')
        cheat_dict = get_cheat_dict(self.model, self.x_test)
        self.model.fit(self.x_train, self.y_train, **cheat_dict)
        # if hasattr(self.model, 'predict_proba'):
        #     predictions = self.model.predict_proba(self.x_test)
        # else:
        predictions = self.model.predict(self.x_test)
        return predictions
