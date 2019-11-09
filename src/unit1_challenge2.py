import numpy as np
from src.base.task import BaseTask
from sklearn.pipeline import Pipeline
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import PCA
from sklearn.svm import SVC
from einfuehrung_mit_spam_1 import DenseTransformer
from sklearn.base import (BaseEstimator, ClassifierMixin)
from src.utils.utils import ClfSwitcher
import email
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_selection import SelectKBest, chi2
from sklearn.neural_network import MLPClassifier
from sklearn.pipeline import FeatureUnion, Pipeline
from sklearn.preprocessing import StandardScaler
from einfuehrung_mit_spam_1 import DenseTransformer
from einfuehrung_mit_spam_1 import HandCraftedFeatureExtractor
#  pytorch
from torch import nn
import torch.nn.functional as F
from skorch import NeuralNetClassifier
from skorch.callbacks import EarlyStopping
from skorch.callbacks import ProgressBar
from torch.optim import Adam


def set_input_dim_decorator(func, net):
    def wrapper(*args, **kwargs):
        net.set_params(module__input_dim=kwargs['k'])
        return func(*args, **kwargs)
    return wrapper


class Net(nn.Module):
    def __init__(self, input_dim=1000, hidden_layer_sizes=(10, 10), dropout=0):
        self.output_dim = 2
        super(Net, self).__init__()
        self.l0 = nn.Linear(input_dim, hidden_layer_sizes[0])
        self.drop = nn.Dropout(p=dropout)
        self.l1 = nn.Linear(*hidden_layer_sizes)
        self.l2 = nn.Linear(hidden_layer_sizes[0], self.output_dim)

    def forward(self, x, **kwargs):
        x = x.float()
        x = self.l0(x)
        x = self.drop(x)
        x = F.relu(x)
        x = self.l1(x)
        x = self.drop(x)
        x = F.relu(x)
        x = self.l2(x)
        return x


class XSpamClassifier(BaseEstimator, ClassifierMixin):

    def __init__(self):
        self.trigger_text = 'X-Spam-Status: No'

    def fit(self, x, y=None, **fit_params):
        return self

    def predict(self, x, y=None):
        return np.array([self.trigger_text not in text for text in x])

    def do_apply(self, text):
        return self.trigger_text in text


class Task(BaseTask):
    def get_model(self):
        print('get model for unit {}, challenge {}'.format(self.unit, self.challenge))
        net = NeuralNetClassifier(
            Net,
            optimizer=Adam,
            criterion=nn.CrossEntropyLoss,
            batch_size=200,
            max_epochs=500,
            callbacks=[EarlyStopping(patience=10, threshold=1e-5)],
            module__input_dim=1000,
            module__hidden_layer_sizes=(10, 10),
            module__dropout=0.3,
        )
        selection = SelectKBest(score_func=chi2, k=1000)
        selection.set_params = set_input_dim_decorator(selection.set_params, net)
        pipeline = Pipeline([
            ('feature_extraction', FeatureUnion([
                ('bag_of_words', TfidfVectorizer(ngram_range=(1, 3))),
                ('other_features', HandCraftedFeatureExtractor())])),
            ('feature_selection', selection),
            ('sparse_to_dense', DenseTransformer()),
            ('normalization', StandardScaler()),
            ('classification', net)
        ], verbose=False)
        return pipeline

    def get_param_distribution(self):
        return {
            'feature_selection__k': [500, 2000, 10000, 40000],
            'classification__module__hidden_layer_sizes': [(5, 5), (10, 10), (5, 10), (10, 5), (20, 20)],
            'classification__module__dropout': [0.1, 0.2, 0.3, 0.4, 0.5]
        }

    def get_params(self):
        return {
            'feature_selection__k': 5000,
            'classification__module__hidden_layer_sizes': (10, 10),
            'classification__module__dropout': 0.3
        }

    @property
    def unit(self):
        return 1

    @property
    def challenge(self):
        return 2
