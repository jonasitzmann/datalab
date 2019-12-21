from datetime import datetime
import numpy as np
import pandas as pd
import os
from glob import glob
from sklearn.model_selection import cross_val_score
from sklearn.base import BaseEstimator
from sklearn.base import TransformerMixin
from skorch.callbacks import Callback
import torch
import torchwordemb  # torch has to be imported first!
import random
from sklearn.preprocessing import StandardScaler
from sklearn.pipeline import Pipeline
from torch.utils.tensorboard import SummaryWriter
from sklearn.cluster import KMeans
from zipfile import ZipFile
import matplotlib.pyplot as plt
import seaborn as sns
import wget
from sklearn.metrics.cluster import silhouette_score
from yellowbrick.cluster import KElbowVisualizer
import json
from collections import Counter


def lookup_key(string, vocab, tokenizer):
    s = string.lower()
    split = tokenizer(s)
    return lookup_key_seq(split, vocab)


def lookup_key_seq(seq, vocab):
    return [vocab.get(w, -1) + 1 for w in seq]


def to_padded_tensor_without_embeddings(seqs, max_seq_len=500):
    max_len = max(list(map(len, seqs)))
    max_len = min(max_len, max_seq_len)
    seqs_tensor = np.zeros([len(seqs), max_len, len(seqs[0][0])])  # todo: this only works for 3d tensors
    for i, seq in enumerate(seqs):
        size = min(len(seq), max_len)
        seqs_tensor[i, :len(seq)] = np.array(seq[:size])
    return torch.autograd.Variable(torch.tensor(seqs_tensor, dtype=torch.float32))


def to_padded_tensor(seqs):
    max_len = max(list(map(len, seqs)))
    max_len = min(max_len, 500)
    seqs_tensor = np.zeros([len(seqs), max_len])
    for i, seq in enumerate(seqs):
        size = min(len(seq), max_len)
        seqs_tensor[i, :len(seq)] = np.array(seq[:size])
    return torch.autograd.Variable(torch.tensor(seqs_tensor, dtype=torch.long))


class TensorBoard(Callback):
    def __init__(
            self,
            log_dir,
            add_graph=True,
            close_after_train=True,
            extract_sample=lambda ds: ds[0][0].unsqueeze(0),
    ):
        self.writer = SummaryWriter(flush_secs=5, log_dir=log_dir)
        self.add_graph = add_graph
        self.close_after_train = close_after_train
        self.extract_sample = extract_sample
        port = 7000
        # Popen("tensorboard --logdir {} --reload_interval 5 --port {}".format(log_dir, port), shell=True)
        # webbrowser.open('http://localhost:{}'.format(port))

    def get_default_log_keys(self):
        return [
            ('train_loss', 'Loss/train'),
            ('valid_loss', 'Loss/valid'),
            ('valid_acc', 'Loss/valid_acc'),
            ('dur', 'duration'),
        ]

    def initialize(self):
        self.first_run_ = True

        return self

    def on_epoch_begin(self, net, dataset_train, **kwargs):
        if self.first_run_:
            self.first_run_ = False
            if self.add_graph:
                x = self.extract_sample(dataset_train)
                self.writer.add_graph(net.module_, x.to(net.device))

    def add_scalar_maybe(self, history, key, global_step=None, name=None):
        hist = history[-1]
        val = hist.get(key)
        if val is None:
            return

        name = name if name is not None else key
        global_step = global_step if global_step is not None else hist['epoch']
        self.writer.add_scalar(tag=name, scalar_value=val, global_step=global_step)

    def on_epoch_end(self, net, **kwargs):
        history = net.history
        epoch = history[-1, 'epoch']
        for key, name in self.get_default_log_keys():
            self.add_scalar_maybe(history, key, name=name, global_step=epoch)

    def on_train_end(self, net, **kwargs):
        if self.close_after_train:
            self.writer.close()


class FixRandomSeed(Callback):

    def __init__(self):
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


def get_cheat_dict(classifier, x_test=None):
    cheat_dict = {}
    if isinstance(classifier, Pipeline) and 'x_test_fitter' in classifier.named_steps.keys():
        cheat_dict['x_test_fitter__x_test'] = x_test
    return cheat_dict


def get_filename_unique(filename):
    i = 1
    name, extension = filename.rsplit('.', 1)
    new_name = '{}_{}.{}'.format(name, i, extension)
    while os.path.isfile(new_name):
        i += 1
        new_name = '{}_{}.{}'.format(name, i, extension)
    return new_name


def evaluate_cv(classifier, dataset, n_folds=5):
    print('evaluating classifier')
    scores = cross_val_score(classifier, dataset.x_train, dataset.y_train, n_jobs=7, scoring='balanced_accuracy',
                             cv=n_folds)
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
    all_predictions['name'] = [name for name in all_predictions['name']]
    all_predictions[['name', 'voted']].to_csv(filename, index=False, sep=';', header=False, float_format='%.0f')


def couple_params_decorator(func1, param1: str, func2, param2: str):
    def wrapper(*args, **kwargs):
        func2(**{param2: kwargs[param1]})
        return func1(*args, **kwargs)

    return wrapper


def couple_params(obj1: BaseEstimator, param1, obj2: BaseEstimator, param2):
    obj1.set_params = couple_params_decorator(obj1.set_params, param1, obj2.set_params, param2)


def calc_score(model, scorer, i, xs_train, ys_train, xs_test, ys_test, verbose=True):
    cheat_dict = get_cheat_dict(model, xs_test)
    model.fit(xs_train, ys_train, **cheat_dict)
    score = scorer(model, xs_test, ys_test)
    if verbose:
        print("score for fold {}: {:.2%}".format(i + 1, score))
    return score


def get_last_score_path(task):
    return 'tmp/last_score_unit{}_challenge{}'.format(task.unit, task.challenge)


def get_last_score(task):
    score = None
    try:
        score = float(open(get_last_score_path(task), 'r').read())
    except Exception:
        pass
    return score


def save_last_score(score, task):
    path = get_last_score_path(task)
    folder = '/'.join(path.split('/')[:-1])
    if not os.path.exists(folder):
        os.mkdir(folder)
    with open(path, 'w') as f:
        f.write(str(score))


def normalize(x_train, x_test):
    normalizer = StandardScaler()
    normalizer.fit(x_train)
    return normalizer.transform(x_train), normalizer.transform(x_test)


def flatten(arr):
    return [e for sublist in arr for e in sublist]


def load_embeddings():
    os.makedirs('embeddings', exist_ok=True)
    glove_path = 'embeddings/glove.txt'
    if not os.path.exists(glove_path):
        print('downloading pre-trained embedding vectors')
        link = 'http://nlp.stanford.edu/data/glove.6B.zip'
        zip_path = glove_path.replace('.txt', '.zip')
        wget.download(link, out=zip_path)
        with ZipFile(zip_path) as zip_file:
            tmp = zip_file.extract('glove.6B.50d.txt')
            os.replace(tmp, glove_path)
    vocab, vec = torchwordemb.load_glove_text(glove_path)
    return vocab, vec


class FeaturePlotter(TransformerMixin):
    def __init__(self, feature_names=None, label='features'):
        super(TransformerMixin, self).__init__()
        self.feature_names = feature_names
        self.labels_name = 'label'
        self.title = label

    def fit(self, xs, ys=None):
        n_features = xs.shape[1]
        if self.feature_names is None:
            columns = ['x_{}'.format(i) for i in range(xs.shape[1])]
        else:
            columns = self.feature_names
            n_names = len(self.feature_names)
            assert(n_names == n_features), 'got {} features but {} names'.format(n_features, n_names)
        df = pd.DataFrame(xs, columns=columns)
        df[self.labels_name] = 'unknown' if ys is None else ["'{}'".format(y) for y in ys]
        self.distplot(df)
        return self

    def transform(self, xs, ys=None):
        return xs

    def distplot(self, df):
        plt.title(self.title)
        g = sns.PairGrid(df, hue=self.labels_name)
        g.map_upper(plt.scatter)
        g.map_lower(sns.kdeplot, shade=True, shade_lowest=False)
        g.map_diag(sns.distplot, hist=False)


class ElbowPlotter(TransformerMixin):
    def __init__(self, model, metric, k_range=(1, 10), unsupervised_metric=silhouette_score, unsupervised=False):
        super(ElbowPlotter, self).__init__()
        self.model = model
        self.metric = metric
        self.k_range = k_range
        self.unsupervised_metric = unsupervised_metric
        self.unsupervised = unsupervised

    def fit(self, xs, ys=None):
        ax = plt.subplot()
        scores = []
        ks = range(self.k_range[0] + 1, self.k_range[1] + 2)
        for k in ks:
            self.model.set_params(n_clusters=k)
            self.model = self.model.fit(xs)
            predictions = self.model.predict(xs)
            if ys is None or self.unsupervised:
                metric = self.unsupervised_metric
                scores.append(metric(xs, predictions))
            else:
                metric = self.metric
                scores.append(metric(predictions, ys))
        ax.plot(ks, scores)
        # ax.xlabel('ks')
        # ax.xticks(ks)
        # ax.ylabel(metric.__name__)
        return self

    def transform(self, xs, ys=None):
        return xs


class ClusterPredPlotter(TransformerMixin):
    def __init__(self, model, feature_names=None):
        super(ClusterPredPlotter, self).__init__()
        self.plotter = FeaturePlotter(feature_names, label='predictions')
        self.model = model

    def fit(self, xs, ys=None):
        self.model = self.model.fit(xs)
        preds = self.model.predict(xs)
        self.plotter.fit(xs, preds)
        return self

    def transform(self, xs, ys=None):
        return xs


class SavedDict:
    def __init__(self, json_path):
        self.json_path = json_path
        self.original_dict = {}
        if os.path.isfile(json_path):
            with open(json_path, 'rb') as file:
                self.original_dict = json.load(file)
        self.modified_dict = self.original_dict.copy()

    def __enter__(self):
        return self.modified_dict

    def __exit__(self, exc_type, exc_val, exc_tb):
        if self.original_dict != self.modified_dict:
            with open(self.json_path, 'w') as file:
                json.dump(self.modified_dict, file)


def most_common(arr, allow_none=True):
    if not allow_none:
        arr = [e for e in arr if e is not None]
    result = None
    if arr:
        result = Counter(arr).most_common(1)[0][0]
    return result

