# todo: take a look at https://zeltser.com/media/docs/analyzing-malicious-document-files.pdf
from src.base.task import BaseTask
from sklearn.feature_extraction.text import HashingVectorizer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import PCA
from sklearn.svm import SVC
from sklearn.feature_selection import SelectKBest, chi2
from sklearn.pipeline import Pipeline
from sklearn.base import TransformerMixin
from src.utils.utils import DenseTransformer
from tools.pdfid.pdfid import PDFiD
from xml.dom.minidom import Document
from io import BytesIO


class PDFKeywordCounter(TransformerMixin):
    def __init__(self):
        super(PDFKeywordCounter, self).__init__()

    def fit(self, x, y=None, **fit_params):
        return self

    def transform(self, x, y=None):
        return [self.extract_keywords(pdf_file) for pdf_file in x]

    def extract_keywords(self, pdf_file):
        pdf_as_bytes = BytesIO(pdf_file)
        pdfid: Document = PDFiD(pdf_as_bytes, file_is_binary=True)
        count_dict = {}
        hexcount_dict = {}
        for node in pdfid.documentElement.getElementsByTagName('Keywords')[0].childNodes:
            count_dict[node.getAttribute('Name')] = int(node.getAttribute('Count'))
            hexcount_dict[node.getAttribute('Name')] = int(node.getAttribute('HexcodeCount'))
        return list(count_dict.values())


class Task(BaseTask):
    @property
    def include_file_names(self):
        return False

    @property
    def unit(self):
        return 2

    @property
    def challenge(self):
        return 2

    def get_model(self):
        return Pipeline([
            ('keyword_counter', PDFKeywordCounter()),
            ('svm', SVC(gamma='auto')),
        ])

    def get_param_distribution(self):
        return {}

    def get_params(self):
        return {}
