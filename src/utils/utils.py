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
from src.base.optional_transformer import OptionalTransformer
from torch.utils.tensorboard import SummaryWriter
import webbrowser
from subprocess import Popen
from zipfile import ZipFile
import wget


def lookup_key(string, vocab, tokenizer):
    s = string.lower()
    split = tokenizer(s)
    return lookup_key_seq(split, vocab)


def lookup_key_seq(seq, vocab):
    return [vocab.get(w, -1) + 1 for w in seq]


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


class DenseTransformer(TransformerMixin):
    def fit(self, X, y=None, **fit_params):
        return self

    def transform(self, X, y=None, **fit_params):
        if hasattr(X, 'todense'):
            X = X.todense()
        return X


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

