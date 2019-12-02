from src.base.task import BaseTask
from sklearn.metrics.cluster import adjusted_mutual_info_score
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.base import ClusterMixin
from sklearn.cluster import KMeans
from sklearn.pipeline import Pipeline
from src.utils.models import FileSizeExtractor
from src.utils.utils import FeaturePlotter
from src.utils.utils import ClusterPredPlotter
from src.utils.utils import ElbowPlotter
import numpy as np
from src.utils.models import GmmClusterer


class Task(BaseTask):
    def get_model(self):
        model = GmmClusterer(n_clusters=12)
        feature_names = ['log(file_size)']
        return Pipeline([
            ('file_size_extractor', FileSizeExtractor(log=True)),
            # ('plotter', FeaturePlotter(feature_names=feature_names)),
            # ('pred_plotter', ClusterPredPlotter(model, feature_names)),
            # ('elbow_plot', ElbowPlotter(model, metric=self.metric, k_range=(1, 15))),
            ('gmm', model)
        ])

    @property
    def metric(self):
        return adjusted_mutual_info_score

    @property
    def train_data_link(self):
        return 'https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/03-clust/507feadd0b2eda5df50c8efbafcb937bc303c2e3.zip'

    @property
    def test_data_link(self):
        return 'https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/03-clust/e947a25d6806ac94269daf2c72b021b2d06ef0ec.zip'

    @property
    def decode_data(self):
        return True
