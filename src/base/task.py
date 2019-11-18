from abc import ABC, abstractmethod
from src.utils.utils import get_dataset
from src.utils.utils import endless_random_search
from src.utils.utils import evaluate_cv
from src.utils.utils import cross_validate


class BaseTask(ABC):
    def __init__(self, samples_factor=1):
        print('working on unit {}, challenge {}'.format(self.unit, self.challenge))
        self.dataset = get_dataset(self.unit, self.challenge, samples_factor)
        self.model = self.get_model()
        self.param_distribution = self.get_param_distribution()
        self.model = self.model.set_params(**self.get_params())

    @property
    @abstractmethod
    def include_file_names(self):
        return False

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

    def evaluate(self, n_folds=4, parallel=True):
        score = cross_validate(self.model, self.dataset, n_folds=n_folds, parallel=parallel)
        return score

    def find_params(self, parallel=True, verbose=False):
        endless_random_search(self.model, self.dataset, self.param_distribution, parallel=parallel, verbose=verbose)

    def get_false_negatives(self, n_samples=5):
        xs, ys = self.dataset.x_train, self.dataset.y_train
        model = self.model.fit(xs, ys)
        print('score on training data: {}'.format(model.score(xs, ys)))
        predictions = model.predict(xs)
        false_negatives = [x for x, y, pred in zip(xs, ys, predictions) if y and not pred]
        return false_negatives[:n_samples]
