import sys
from sklearn.metrics.cluster import adjusted_mutual_info_score
from sklearn.feature_extraction.text import TfidfVectorizer, CountVectorizer
from src.base.task import BaseTask
from src.utils.models import FileSizeClusterer
from sklearn.base import TransformerMixin
import numpy as np
from io import BytesIO
from zipfile import ZipFile
from sklearn.pipeline import make_pipeline
from sklearn.cluster import KMeans
from androguard.misc import AnalyzeAPK
from androguard.misc import APK
from src.utils.utils import SavedDict
from src.utils.utils import ElbowPlotter
import os
from src.utils.models import DenseTransformer
from src.utils.models import GmmClusterer
from sklearn.preprocessing import StandardScaler

class FeatureExtractor(TransformerMixin):
    def __init__(self, working_dir):
        super(FeatureExtractor, self).__init__()
        self.json_path = os.path.join(working_dir, 'more_features.json')
        self.vectorizer = TfidfVectorizer()

    def fit(self, xs, ys=None):
        return self

    def transform(self, xs, ys=None):
        xs_len = len(xs)
        transformed = []
        with SavedDict(self.json_path) as d:
            for i, sample in enumerate(xs):
                if i % 10 == 0:
                    print('{} of {}'.format(i, xs_len))
                transformed.append(self.transform_sample(sample, d))
        return transformed

    def transform_sample(self, sample, cache_dict):
        filename, app = sample
        if filename not in cache_dict.keys():
            cache_dict[filename] = self.extract_features(app)
        return cache_dict[filename]

    def extract_features(self, app):
        features = {}
        try:
            a, d, dx = AnalyzeAPK(app, raw=True)
            features['permissions'] = ' '.join(list(map(lambda x: x.rsplit('.', 1)[1], a.permissions)))
            features['min_sdk'] = a.get_min_sdk_version()
            features['log_size'] = np.log(sys.getsizeof(app))
        except Exception as ex:
            pass
        return features


class Vectorizer(TransformerMixin):
    def __init__(self, text_vectorizer):
        self.text_vectorizer = text_vectorizer

    def get_texts(self, xs):
        return [x['permissions'] if 'permissions' in x.keys() else "" for x in xs]

    def fit(self, xs, ys=None):
        self.text_vectorizer.fit(self.get_texts(xs))
        return self

    def transform(self, xs, ys=None):
        transformed = [self.transform_sample(x) for x in xs]
        return transformed



    def transform_sample(self, sample):
        text_features = self.text_vectorizer.transform(self.get_texts([sample]))
        text_features = list(np.array(text_features.todense())[0])
        min_sdk = sample.get('min_sdk', 0)
        if min_sdk != min_sdk or min_sdk is None:
            min_sdk = 0
        log_size = sample.get('log_size', 0)
        if log_size != log_size or log_size is None:
            log_size = 0
        all_features = text_features #+ [min_sdk, log_size]
        return all_features



class Task(BaseTask):
    def get_model(self):
        return make_pipeline(
            FeatureExtractor(working_dir=self.path),
            Vectorizer(TfidfVectorizer()),
            StandardScaler(),
            # ElbowPlotter(model=KMeans(), metric=self.metric, k_range=(10, 30), unsupervised=True),
            KMeans(n_clusters=30, n_init=50, max_iter=1000)
        )

    @property
    def metric(self):
        return adjusted_mutual_info_score

    @property
    def include_file_names(self):
        return True

    @property
    def mode(self):
        return BaseTask.Mode.CLUSTERING

    @property
    def train_data_link(self):
        return 'https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/03-clust/d0f626fb065b9bd661f3f681cf032853478d2f46.zip'
    @property
    def test_data_link(self):
        return "https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/03-clust/813e0f0cffaa77809374d0ce34f170e153c47605.zip"