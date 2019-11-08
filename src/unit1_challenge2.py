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
from torch.optim import Adam


class Net(nn.Module):
    def __init__(self, input_dim=10000, hidden_layer_sizes=(10, 10)):
        self.output_dim = 2
        super(Net, self).__init__()
        self.l0 = nn.Linear(input_dim, hidden_layer_sizes[0])
        self.l1 = nn.Linear(*hidden_layer_sizes)
        self.l2 = nn.Linear(hidden_layer_sizes[0], self.output_dim)

    def forward(self, x, **kwargs):
        x = x.float()
        x = self.l0(x)
        x = F.relu(x)
        x = self.l1(x)
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
            max_epochs=50,
            optimizer=Adam,
            criterion=nn.CrossEntropyLoss,
            batch_size=200,
        )
        return Pipeline([
            ('feature_extraction', FeatureUnion([
                ('bag_of_words', TfidfVectorizer(ngram_range=(1, 3))),
                ('other_features', HandCraftedFeatureExtractor())])),
            ('feature_selection', SelectKBest(score_func=chi2, k=10000)),  # todo: update net.input_dim accordingly
            ('sparse_to_dense', DenseTransformer()),
            ('normalization', StandardScaler()),
            ('classifier', net)
        ], verbose=False)

    def get_param_distribution(self):
        return {}

    def get_params(self):
        return {
            'feature_extraction__bag_of_words__ngram_range': (1, 3),
            'feature_selection__k': 1000,
            #'classifier__hidden_layer_sizes': (10, 10)
        }

    @property
    def unit(self):
        return 1

    @property
    def challenge(self):
        return 2
