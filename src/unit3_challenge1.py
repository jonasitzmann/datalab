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
        return 'https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/03-clust/e51c1b83588081a18e169f3b00da49bc6fa29442.zip'