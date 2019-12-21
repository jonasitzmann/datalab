from src.base.task import BaseTask


class Task(BaseTask):

    @property
    def train_data_link(self):
        return "https://www.sec.cs.tu-bs.de/~danarp/datalab/task2/f496d7ed1c565096ba67cc8d02efda54.tar.gz"

    def get_model(self):
        return None


