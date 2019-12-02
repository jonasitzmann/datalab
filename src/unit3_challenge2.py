from sklearn.metrics.cluster import adjusted_mutual_info_score
from src.base.task import BaseTask
from src.utils.utils import FileSizeClusterer


class Task(BaseTask):
    def get_model(self):
        return FileSizeClusterer()

    @property
    def metric(self):
        return adjusted_mutual_info_score

    @property
    def train_data_link(self):
        return 'https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/03-clust/d0f626fb065b9bd661f3f681cf032853478d2f46.zip'
