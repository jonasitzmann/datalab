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


class XSpamClassifier(BaseEstimator, ClassifierMixin):
    def __init__(self):
        self.trigger_text = 'X-Spam-Status: No'

    def fit(self, X, y=None, **fit_params):
        return self

    def predict(self, X, y=None):
        return np.array([self.trigger_text not in text for text in X])

    def do_apply(self, text):
        return self.trigger_text in text




class Task(BaseTask):
    def __init__(self):
        super(Task, self).__init__()

    def get_model(self):
        pipeline = Pipeline([
            ('feature_extraction', TfidfVectorizer(ngram_range=(1, 1), max_features=1000)),
            ('sparse_to_dense', DenseTransformer()),
            ('pca', PCA(n_components=30)),
            ('classifier', SVC())
        ])
        xspam = XSpamClassifier()
        switcher = ClfSwitcher(xspam, pipeline, lambda x: xspam.trigger_text in x)
        return Pipeline([
            ('feature_extraction', FeatureUnion([
                ('bag_of_words', TfidfVectorizer(ngram_range=(1, 3))),
                ('other_features', HandCraftedFeatureExtractor())])),
            ('feature_selection', SelectKBest(score_func=chi2, k=10000)),
            ('sparse_to_dense', DenseTransformer()),
            ('normalization', StandardScaler()),
            ('classifier', MLPClassifier(max_iter=5000, tol=1e-6, hidden_layer_sizes=(10, 10)))
        ], verbose=False)

    def get_param_distribution(self):
        return {}

    def get_params(self):
        return {
            'feature_extraction__bag_of_words__ngram_range': (1, 3),
            'feature_selection__k': 1000,
            'classifier__hidden_layer_sizes': (10, 10)
        }

    @property
    def unit(self):
        return 1

    @property
    def challenge(self):
        return 2
