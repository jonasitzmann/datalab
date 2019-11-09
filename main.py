import warnings
import importlib
from src.base.task import BaseTask
warnings.simplefilter(action='ignore', category=FutureWarning)


def get_task(unit, challenge, samples_factor=1):
    task_path = 'src.unit{}_challenge{}'.format(unit, challenge)
    module = importlib.import_module(task_path)
    return module.Task(samples_factor)


if __name__ == '__main__':
    task: BaseTask = get_task(unit=1, challenge=2, samples_factor=0.01)
    task.find_params()
