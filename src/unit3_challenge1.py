from src.base.task import BaseTask
from sklearn.cluster import KMeans

class Task(BaseTask):
    @property
    def unit(self):
        pass

    @property
    def challenge(self):
        pass

    def get_model(self):
        return KMeans()

    def get_param_distribution(self):
        return {}

    def get_params(self):
        return {}

    @property
    def train_data_link(self):
        return 'https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/03-clust/e51c1b83588081a18e169f3b00da49bc6fa29442.zip'