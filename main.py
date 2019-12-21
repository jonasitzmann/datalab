#!/usr/bin/env python
import sys
import warnings
import importlib
from src.base.task import BaseTask
from src.utils.utils import save_last_score, get_last_score
from enum import Enum, auto
import matplotlib.pyplot as plt
warnings.simplefilter(action='ignore', category=FutureWarning)
warnings.simplefilter(action='ignore', category=UserWarning)


class Mode(Enum):
    TEST = auto()
    FIND_PARAMS = auto()
    SAVE_PREDICTIONS = auto()


def get_task(unit, challenge, samples_factor=1, n_classes=-1) -> BaseTask:
    task_path = 'src.unit{}_challenge{}'.format(unit, challenge)
    module = importlib.import_module(task_path)
    return module.Task(samples_factor, n_classes=n_classes)


def main(unit, challenge, parallel, samples_factor, n_classes, verbose, mode, test):
    task: BaseTask = get_task(unit=unit, challenge=challenge, samples_factor=samples_factor, n_classes=n_classes)
    if mode == Mode.TEST:
        score = task.evaluate(parallel=parallel, n_folds=4, test=test)
        print('score: {:.2%}'.format(score))
        last_score = get_last_score(task)
        if last_score:
            print('last score: {:.2%}'.format(last_score))
        save_last_score(score, task)
    elif mode == Mode.FIND_PARAMS:
        task.find_params(parallel, verbose)
    elif mode == Mode.SAVE_PREDICTIONS:
        task.save_predictions('test')


if __name__ == '__main__':
    unit = 4
    challenge = 1
    parallel = 0  # set to 0 or False for debugging
    n_classes = -1
    test = False
    samples_factor = 1
    if len(sys.argv) == 2:
        print(sys.argv)
        samples_factor = float(sys.argv[1])
    verbose = True
    mode = Mode.FIND_PARAMS
    main(unit, challenge, parallel, samples_factor, n_classes, verbose, mode, test)
    plt.show()
