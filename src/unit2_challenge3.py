from src.base.task import BaseTask
from sklearn.feature_extraction.text import HashingVectorizer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import PCA
from sklearn.svm import SVC
from sklearn.feature_selection import SelectKBest, chi2
from sklearn.pipeline import Pipeline
from sklearn.base import TransformerMixin
from src.utils.utils import DenseTransformer


class Task(BaseTask):
    @property
    def include_file_names(self):
        return False

    @property
    def unit(self):
        return 2

    @property
    def challenge(self):
        return 3

    def get_model(self):
        return Pipeline([
            ('HashingVectorizer', TfidfVectorizer(
                ngram_range=(1, 1),
                analyzer='char_wb',
                max_features=2000
            )),
            ('selection', SelectKBest(score_func=chi2, k=200)),
            ('to_dense', DenseTransformer()),
            ('pca', PCA(n_components=20)),
            ('svm', SVC()),
        ])

    def get_param_distribution(self):
        return {}

    def get_params(self):
        return {}
