from src.base.task import BaseTask
from sklearn.pipeline import Pipeline
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import PCA
from sklearn.svm import SVC
from einfuehrung_mit_spam_1 import DenseTransformer


class Task(BaseTask):
    def __init__(self):
        super(Task, self).__init__()

    def get_model(self):
        pipeline = Pipeline([
            ('feature_extraction', TfidfVectorizer(ngram_range=(1, 1), max_features=2000)),
            ('sparse_to_dense', DenseTransformer()),
            ('pca', PCA(n_components=30)),
            ('classifier', SVC())
        ])
        return pipeline

    def get_param_distribution(self):
        return {}

    def get_params(self):
        return {}

    @property
    def unit(self):
        return 1

    @property
    def challenge(self):
        return 2
