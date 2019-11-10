import numpy as np
from src.base.task import BaseTask
from src.utils.utils import DenseTransformer
from sklearn.base import TransformerMixin
from src.utils.utils import couple_params
from src.utils.utils import FixRandomSeed
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_selection import SelectKBest, chi2
from sklearn.pipeline import FeatureUnion, Pipeline
from sklearn.preprocessing import StandardScaler
from bs4 import BeautifulSoup
#  pytorch
from torch import nn
from torch import Tensor
import torch.nn.functional as F
from skorch import NeuralNetClassifier
from skorch.callbacks import EarlyStopping
from torch.optim import Adam
from src.utils.utils import XTestFitter
from src.utils.utils import NoXTestFitter
import spacy


class HtmlFeatureExtractor(TransformerMixin):
    def __init__(self):
        super(HtmlFeatureExtractor, self).__init__()

    def fit(self, x, y=None, **fit_params):
        return self

    def transform(self, x, y=None):
        transformed = [self.transform_sample(sample) for sample in x]
        return transformed

    def transform_sample(self, sample: str):
        features = []
        soup = BeautifulSoup(sample, 'html.parser')

        #  link features
        links = soup.find_all('a')
        if len(links) > 0:
            link_features = np.array([HtmlFeatureExtractor.get_link_features(link) for link in links])
            mean_link_features = np.mean(link_features, axis=0)
            sum_link_features = np.sum(link_features, axis=0)
        else:
            mean_link_features = np.array([0, 0, 0])
            sum_link_features = np.array([0, 0, 0])
        features += list(mean_link_features)
        features += list(sum_link_features)

        #  text features
        text = soup.get_text()
        plain_text_proportion = len(text) / len(sample)
        features.append(plain_text_proportion)

        words = text.split()
        unique_words = set(words)
        repetitiveness = len(words) / len(unique_words)
        features.append(repetitiveness)

        # embeddings = np.array([self.nlp(word).vector for word in words])
        # topic = np.mean(embeddings, axis=0)
        # features += list(topic.flatten())
        # std = np.std(embeddings, axis=0)
        # features += list(std.flatten())
        return features

    @staticmethod
    def get_link_features(link: str):
        features = []
        href = link.get('href')
        href = '' if href is None else href
        features.append(len(href))
        features.append('https' in href)
        features.append('.com' in href)
        return np.array(features)

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


def get_classifier_from_net(dataset):
    weights = [
        dataset.num_c1 / dataset.train_size,
        dataset.num_c0 / dataset.train_size
    ]  # inverse frequency ( for balanced acc)
    net = NeuralNetClassifier(
        Net,
        optimizer=Adam,
        criterion=nn.CrossEntropyLoss,
        criterion__weight=Tensor(weights),
        batch_size=200,
        max_epochs=500,
        callbacks=[
            EarlyStopping(patience=10, threshold=1e-5),
            FixRandomSeed(),
        ],
        module__input_dim=100,
        module__hidden_layer_sizes=(10, 10),
        module__dropout=0.3,
        verbose=False
    )
    net.set_params(callbacks__print_log=None)  # deactivate logging in each epoch
    return net


class Task(BaseTask):
    def get_model(self, **kwargs):
        selection = SelectKBest(score_func=chi2, k=1000)
        net = get_classifier_from_net(self.dataset)
        cheater = XTestFitter()
        uncheater = NoXTestFitter(cheater)
        pipeline = Pipeline([
            ('x_test_fitter', cheater),  # cheat by using test data for fitting
            ('feature_extraction', FeatureUnion([
                #('bag_of_words', TfidfVectorizer(ngram_range=(1, 3))),
                ('html_features', HtmlFeatureExtractor())
                ])),
            ('no_x_test_fitter', uncheater),  # stop cheating (subsequent steps need labels)
            ('feature_selection', selection),
            ('sparse_to_dense', DenseTransformer()),
            ('normalization', StandardScaler()),
            ('classification', net)  # todo: enable cheating by unsupervised pre-training (autoencoder)
        ], verbose=False)
        couple_params(selection, 'k', net, 'module__input_dim')
        couple_params(cheater, 'active', uncheater, 'active')  # todo: shouldn't be necessary, adjust XTestFitter
        return pipeline

    def get_param_distribution(self):
        return {
            'feature_selection__k': [7000, 10000, 12000],
            'classification__module__hidden_layer_sizes': [(10, 10), (8, 8), (7, 7), (6, 6)],
            'classification__module__dropout': [0.1, 0.15, 0.2],
            'x_test_fitter__active': [0, 1],
        }

    def get_params(self):
        return {
            'feature_selection__k': 8,
            'classification__module__hidden_layer_sizes': (10, 10),
            'classification__module__dropout': 0.2,
            'x_test_fitter__active': 0,
        }

    @property
    def unit(self):
        return 1

    @property
    def challenge(self):
        return 3

    @property
    def include_file_names(self):
        return False  # todo: set to True
