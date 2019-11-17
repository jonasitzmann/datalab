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
    # # experimental
    # from tools.pdfid.pdfid import PDFiD
    # from xml.dom.minidom import Document
    # pdfid: Document = PDFiD('data/unit_2/challenge_2/train/1_malicious/zzaahzbrbfaetvhl_2017.pdf')
    # count_dict = {}
    # hexcount_dict = {}
    # for node in pdfid.documentElement.getElementsByTagName('Keywords')[0].childNodes:
    #     count_dict[node.getAttribute('Name')] = int(node.getAttribute('Count'))
    #     hexcount_dict[node.getAttribute('Name')] = int(node.getAttribute('HexcodeCount'))
    # print(count_dict)
    # print(hexcount_dict)


    task: BaseTask = get_task(unit=2, challenge=2, samples_factor=0.1)
    parallel = True  # set to False for debugging
    verbose = True
    # task.find_params(parallel=parallel, verbose=verbose)
    score = task.evaluate(parallel=parallel)
    last_score = get_last_score(task)
    if last_score:
        print('last score: {:.2%}'.format(last_score))
    save_last_score(score, task)
