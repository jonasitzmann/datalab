from abc import ABC, abstractmethod
from src.utils.utils import get_dataset
from src.utils.utils import endless_random_search
from src.utils.utils import evaluate_classifier


class BaseTask(ABC):
    def __init__(self):
        print('working on **unit {}**, **challenge {}**'.format(self.unit, self.challenge))
        pass

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

    def evaluate(self):
        dataset = get_dataset(self.unit, self.challenge)
        model = self.get_model()
        params = self.get_params()
        model = model.set_params(**params)
        score = evaluate_classifier(model, dataset)
        return score

    def find_params(self):
        dataset = get_dataset(self.unit, self.challenge)
        model = self.get_model()
        params = self.get_param_distribution()
        endless_random_search(model, dataset, params)
