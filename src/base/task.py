from abc import ABC, abstractmethod
from src.utils.utils import get_dataset
from src.utils.utils import endless_random_search
from src.utils.utils import evaluate_classifier


class BaseTask(ABC):
    def __init__(self):
        print('working on **unit {}**, **challenge {}**'.format(self.unit, self.challenge))
        self.model = self.get_model()
        self.param_distribution = self.get_param_distribution()
        self.model = self.model.set_params(**self.get_params())

    @property
    @abstractmethod
    def unit(self):
        pass

    @property
    @abstractmethod
    def challenge(self):
        pass

    @abstractmethod
    def get_model(self):
        pass

    @abstractmethod
    def get_param_distribution(self):
        pass

    @abstractmethod
    def get_params(self):
        pass

    def evaluate(self, n_folds=5):
        dataset = get_dataset(self.unit, self.challenge)
        score = evaluate_classifier(self.model, dataset, n_folds=n_folds)
        return score

    def find_params(self):
        dataset = get_dataset(self.unit, self.challenge)
        endless_random_search(self.model, dataset, self.param_distribution)
