from src.base.task import BaseTask
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_extraction.text import HashingVectorizer
from sklearn.svm import SVC
from sklearn.pipeline import Pipeline
from lxml import etree
from sklearn.base import TransformerMixin
from zipfile import ZipFile

class XMLTransformer(TransformerMixin):
    def __init__(self):
        super(XMLTransformer, self).__init__()

    def fit(self, X, y=None):
        return self

    def transform(self, X, y=None):
        transformed = [self.transform_sample(sample) for sample in X]
        return transformed

    def transform_sample(self, sample):
        filename, binary_data = sample.split('\n', 1)
        # todo: the data has to be unzipped first. maybe the get_dataset function should do that
        # alternatively the file can be read and unzipped here (see variable filename) (i don't know how)
        return sample



class Task(BaseTask):
    @property
    def include_file_names(self):
        return True

    @property
    def unit(self):
        return 2

    @property
    def challenge(self):
        return 1

    def get_model(self):
        return Pipeline([
            ('XMLTransformer', XMLTransformer()),
            ('svm', SVC()),
        ])

    def get_param_distribution(self):
        return {}

    def get_params(self):
        return {}
