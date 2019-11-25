#!/usr/bin/env python
import sys
import warnings
import importlib
from src.base.task import BaseTask
from src.utils.utils import save_last_score, get_last_score
from einfuehrung_mit_spam_1 import calc_embeddings


def get_task(unit, challenge, samples_factor=1) -> BaseTask:
    task_path = 'src.unit{}_challenge{}'.format(unit, challenge)
    module = importlib.import_module(task_path)
    return module.Task(samples_factor)


if __name__ == '__main__':
    warnings.simplefilter(action='ignore', category=FutureWarning)
    warnings.simplefilter(action='ignore', category=UserWarning)

    parallel = 0  # set to 0 or False for debugging
    samples_factor = 0.1
    if len(sys.argv) == 2:
        samples_factor = float(sys.argv[1])
    verbose = True
    task: BaseTask = get_task(unit=3, challenge=1, samples_factor=samples_factor)
    print(task.x_train[0])
    # false_negatives = task.get_false_negatives(n_samples=5)
    # print('false negatives:')
    # print('\n\n\n\n'.join([fn for fn in false_negatives]))
    # task.save_predictions('test')
    # task.find_params(parallel=parallel, verbose=verbose)
    # score = task.cross_validate(parallel=parallel, n_folds=1)
    # last_score = get_last_score(task)
    # if last_score:
    #     print('last score: {:.2%}'.format(last_score))
    # save_last_score(score, task)
