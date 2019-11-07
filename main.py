import warnings
import importlib
warnings.simplefilter(action='ignore', category=FutureWarning)


def get_task(unit, challenge):
    task_path = 'src.unit{}_challenge{}'.format(unit, challenge)
    module = importlib.import_module(task_path)
    return module.Task()


if __name__ == '__main__':
    task = get_task(unit=1, challenge=2)
    task.evaluate()
