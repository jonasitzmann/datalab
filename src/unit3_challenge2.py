from src.base.task import BaseTask
from sklearn.cluster import KMeans

class Task(BaseTask):
    def get_model(self):
        return KMeans()


    @property
    def train_data_link(self):
        return 'https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/03-clust/d0f626fb065b9bd661f3f681cf032853478d2f46.zip'