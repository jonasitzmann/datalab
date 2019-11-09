import numpy as np
from src.base.task import BaseTask
from src.utils.utils import DenseTransformer
from src.utils.utils import ClfSwitcher
from sklearn.base import (BaseEstimator, ClassifierMixin)
from src.utils.utils import couple_params
from src.utils.utils import FixRandomSeed
import email
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_selection import SelectKBest, chi2
from sklearn.pipeline import FeatureUnion, Pipeline
from sklearn.preprocessing import StandardScaler
from einfuehrung_mit_spam_1 import HandCraftedFeatureExtractor
#  pytorch
from torch import nn
from torch import Tensor
import torch.nn.functional as F
from skorch import NeuralNetClassifier
from skorch.callbacks import EarlyStopping
from torch.optim import Adam


class Net(nn.Module):
    def __init__(self, input_dim=1000, hidden_layer_sizes=(10, 10), dropout=0):
        self.output_dim = 2
        super(Net, self).__init__()
        self.l0 = nn.Linear(input_dim, hidden_layer_sizes[0])
        self.drop = nn.Dropout(p=dropout)
        self.l1 = nn.Linear(*hidden_layer_sizes)
        self.l2 = nn.Linear(hidden_layer_sizes[1], self.output_dim)

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
    def get_model(self, **kwargs):
        #  print('get model for unit {}, challenge {}'.format(self.unit, self.challenge))
        ds = self.dataset
        weights = Tensor([ds.num_c1 / ds.train_size, ds.num_c0 / ds.train_size])  # inverse frequency ( for balanced acc)
        net = NeuralNetClassifier(
            Net,
            optimizer=Adam,
            criterion=nn.CrossEntropyLoss,
            criterion__weight=weights,
            batch_size=200,
            max_epochs=500,
            callbacks=[
                EarlyStopping(patience=10, threshold=1e-5),
                FixRandomSeed(),
            ],
            module__input_dim=1000,
            module__hidden_layer_sizes=(10, 10),
            module__dropout=0.3,
            verbose=False
        )
        net.set_params(callbacks__print_log=None)  # deactivate logging in each epoch
        selection = SelectKBest(score_func=chi2, k=1000)
        couple_params(selection, 'k', net, 'module__input_dim')
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
            'feature_selection__k': [5000],
            'classification__module__hidden_layer_sizes': [(5, 5), (10, 10), (5, 10), (10, 5), (20, 20)],
            'classification__module__dropout': [0.1, 0.2, 0.3, 0.4]
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
