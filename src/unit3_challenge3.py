from src.base.task import BaseTask
from sklearn.cluster import KMeans

class Task(BaseTask):
    @property
    def unit(self):
        return 3

    @property
    def challenge(self):
        return 3

    def get_model(self):
        return KMeans()

    def get_param_distribution(self):
        return {}

    def get_params(self):
        return {}

    @property
    def train_data_link(self):
        return 'https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/03-clust/507feadd0b2eda5df50c8efbafcb937bc303c2e3.zip'