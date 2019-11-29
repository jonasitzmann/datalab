from src.base.task import BaseTask
from sklearn.cluster import KMeans
from sklearn.metrics.cluster import adjusted_mutual_info_score
from sklearn.base import TransformerMixin
from sklearn.base import ClusterMixin
from sklearn.pipeline import make_pipeline
from sklearn.feature_extraction.text import TfidfVectorizer
import numpy as np

# todo: why doesn't pipeline work for k-means?


class WindowsClusterer(ClusterMixin):
    def __init__(self):
        super(WindowsClusterer, self).__init__()
        self.kmeans = KMeans(n_clusters=10)
        self.vectorizer = TfidfVectorizer()

    def fit(self, xs, *args):
        xs = [x.decode('utf-8', errors='ignore') for x in xs]
        xs = self.vectorizer.fit_transform(xs)
        self.kmeans.fit(xs)
        return self

    def predict(self, xs):
        xs = [x.decode('utf-8', errors='ignore') for x in xs]
        xs = self.vectorizer.transform(xs)
        predictions = self.kmeans.predict(xs)
        return predictions


class Task(BaseTask):
    def get_model(self):
        return WindowsClusterer()

    @property
    def train_data_link(self):
        return 'https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/03-clust/507feadd0b2eda5df50c8efbafcb937bc303c2e3.zip'

    @property
    def metric(self):
        return adjusted_mutual_info_score
