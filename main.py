import warnings
import importlib
from src.base.task import BaseTask
from src.utils.utils import save_last_score, get_last_score
from einfuehrung_mit_spam_1 import calc_embeddings
warnings.simplefilter(action='ignore', category=FutureWarning)
warnings.simplefilter(action='ignore', category=UserWarning)


def get_task(unit, challenge, samples_factor=1):
    task_path = 'src.unit{}_challenge{}'.format(unit, challenge)
    module = importlib.import_module(task_path)
    return module.Task(samples_factor)


if __name__ == '__main__':
    task: BaseTask = get_task(unit=1, challenge=3, samples_factor=0.02)
    parallel = True  # set to False for debugging
    verbose = False
    task.find_params(parallel=parallel, verbose=verbose)
    # score = task.evaluate(parallel=parallel, n_folds=3)
    last_score = get_last_score(task)
    if last_score:
        print('last score: {:.2%}'.format(last_score))
    save_last_score(score, task)
