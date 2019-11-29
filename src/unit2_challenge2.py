# todo: take a look at https://zeltser.com/media/docs/analyzing-malicious-document-files.pdf
from src.base.task import BaseTask
from sklearn.svm import SVC
from sklearn.pipeline import Pipeline
from sklearn.base import TransformerMixin
import re
from tika import parser
from src.utils.models import get_rnn_pipeline


class PdfTextExtractor(TransformerMixin):
    def __init__(self):
        super(PdfTextExtractor, self).__init__()

    def fit(self, x, y=None):
        return self

    def transform(self, x, y=None):
        return [self.transform_sample(sample) for sample in x]

    def transform_sample(self, sample):
        try:
            raw = parser.from_buffer(sample)
            content = raw['content']
        except Exception as ex:
            content = ""
        if content is None:
            content = ""
        return content


class PDFKeywordCounter(TransformerMixin):
    def __init__(self):
        super(PDFKeywordCounter, self).__init__()
        self.hex_pattern = '#[0-9a-fA-F]{2}'
        self.keywords = open('src/pdf_keywords.txt', 'r').read().split('\n')
        self.keywords = [kw.lower() for kw in self.keywords]

    def fit(self, x, y=None, **fit_params):
        return self

    def transform(self, x, y=None):
        return [self.extract_keywords(pdf_file) for pdf_file in x]

    def hex_to_char_match(self, match):
        hex = match.group(0)[1:]
        return chr(int(hex, 16))

    def hex_to_char_str(self, str):
        return re.sub(self.hex_pattern, self.hex_to_char_match, str)

    def extract_keywords(self, pdf_file):
        pdf_file: str = pdf_file.decode('utf-8', errors='ignore')
        pdf_file = pdf_file.lower()
        pdf_file = self.hex_to_char_str(pdf_file)
        return [pdf_file.count(word) for word in self.keywords]


class Task(BaseTask):
    @property
    def train_data_link(self):
        return "https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/02-maldocs/bb232326c7a75be4bc09238606d3982fcf85454a.zip"

    @property
    def test_data_link(self):
        return "https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/02-maldocs/196438d8cf278b2bc8699b8a03f91612495eebdb.zip"

    @property
    def include_file_names(self):
        return False

    def get_model(self):
        return Pipeline([
            # ('keyword_counter', PDFKeywordCounter()),
            # ('svm', SVC(gamma='auto')),
            ('text_extractor', PdfTextExtractor()),
            ('rnn_pipeline', get_rnn_pipeline())
        ])

    def get_param_distribution(self):
        return {}

    def get_params(self):
        return {}

    @property
    def decode_data(self):
        return False

