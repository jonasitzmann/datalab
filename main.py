#!/usr/bin/env python
import sys
import warnings
import importlib
from src.base.task import BaseTask
from src.utils.utils import save_last_score, get_last_score
from enum import Enum, auto
warnings.simplefilter(action='ignore', category=FutureWarning)
warnings.simplefilter(action='ignore', category=UserWarning)


class Mode(Enum):
    TEST = auto()
    FIND_PARAMS = auto()
    SAVE_PREDICTIONS = auto()


def get_task(unit, challenge, samples_factor=1) -> BaseTask:
    task_path = 'src.unit{}_challenge{}'.format(unit, challenge)
    module = importlib.import_module(task_path)
    return module.Task(samples_factor)


def main(unit, challenge, parallel, samples_factor, verbose, mode):
    if len(sys.argv) == 2:
        samples_factor = float(sys.argv[1])
    task: BaseTask = get_task(unit=unit, challenge=challenge, samples_factor=samples_factor)
    if mode == Mode.TEST:
        score = task.cross_validate(parallel=parallel, n_folds=1)
        last_score = get_last_score(task)
        if last_score:
            print('last score: {:.2%}'.format(last_score))
        save_last_score(score, task)
    elif mode == Mode.FIND_PARAMS:
        task.find_params(parallel, verbose)
    elif mode == Mode.SAVE_PREDICTIONS:
        task.save_predictions('test')


if __name__ == '__main__':
    unit = 3
    challenge = 3
    parallel = 0  # set to 0 or False for debugging
    samples_factor = 1
    verbose = True
    mode = Mode.TEST
    main(unit, challenge, parallel, samples_factor, verbose, mode)
