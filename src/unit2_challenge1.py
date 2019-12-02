from src.base.task import BaseTask
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import PCA
from sklearn.feature_extraction.text import HashingVectorizer
from sklearn.svm import SVC
from sklearn.pipeline import Pipeline
from lxml import etree
from sklearn.base import TransformerMixin
from zipfile import ZipFile
from src.utils.models import DenseTransformer
from io import BytesIO
import xmltodict
from collections import OrderedDict

def flatten_dict(d):
    def items():
        for key, value in d.items():
            if isinstance(value, dict):
                for subkey, subvalue in flatten_dict(value).items():
                    yield key + "." + subkey, subvalue
            else:
                yield key, value
    return OrderedDict(items())

class DocxExtractor(TransformerMixin):
    def __init__(self):
        super(DocxExtractor, self).__init__()
        self.n_errors = 0
        self.n_errors_when_malicious = 0

    def fit(self, X, y=None):
        self.n_errors = 0
        self.n_errors_when_malicious = 0
        for x_i, y_i in zip(X, y):
            self.transform_sample(x_i, y_i)
        print('{} errors: ({} for malicious files in DocxExtractor)'.format(self.n_errors, self.n_errors_when_malicious))
        return self

    def transform(self, docx_files, y=None):
        transformed = [self.transform_sample(docx) for docx in docx_files]
        return transformed

    def transform_sample(self, docx, y=0):
        try:
            with ZipFile(BytesIO(docx)) as extracted:
                document_content = extracted.open('word/document.xml').read()
            return document_content
        except Exception as ex:
            self.n_errors += 1
            if y:
                self.n_errors_when_malicious += 1
            return ""


class XMLParser(TransformerMixin):
    def __init__(self):
        super(XMLParser, self).__init__()

    def fit(self, X, y=None):
        self.n_errors = 0
        self.n_errors_when_malicious = 0
        for x_i, y_i in zip(X, y):
            self.transform_sample(x_i, y_i)
        print('{} errors: ({} for malicious files in XMLParser)'.format(self.n_errors, self.n_errors_when_malicious))
        return self

    def transform(self, xml_strings, y=None):
        transformed = [self.transform_sample(xml_string) for xml_string in xml_strings]
        return transformed

    def transform_sample(self, xml_string, y=0):
        try:
            root = etree.fromstring(xml_string)
        except Exception as ex:
            self.n_errors += 1
            if y:
                self.n_errors_when_malicious += 1
        # findall(tag)' suchr rekursiv nach einem tag
        # getchildren() gibt eine Liste der Kind-implemente
        # manchnal ist zum Beispiel ziemlich viel in getchildren()[0].getchildren()
        return [0]




class Task(BaseTask):
    @property
    def include_file_names(self):
        return True

    def get_model(self):
        return Pipeline([
            ('DocxExtractor', DocxExtractor()),  # transforms file names to xml strings
            ('xmlparser', XMLParser()),
            #('vectorizer', TfidfVectorizer(ngram_range=(1, 2))),
            #('todense', DenseTransformer()),
            #('pca', PCA(n_components=20)),
            ('svm', SVC()),
        ])

    def get_param_distribution(self):
        return {}

    def get_params(self):
        return {}

    @property
    def train_data_link(self):
        return "https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/02-maldocs/300d556fc1f85395d5e2b6c1e09ff560e2f20266.zip"

    @property
    def test_data_link(self):
        return "https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/02-maldocs/34d2c2172a0a746873d197ca8f36071a8303475b.zip"


