from src.base.task import BaseTask
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import PCA
from sklearn.feature_extraction.text import HashingVectorizer
from sklearn.svm import SVC
from sklearn.pipeline import Pipeline
from lxml import etree
from sklearn.base import TransformerMixin
from zipfile import ZipFile
from src.utils.utils import DenseTransformer
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

    def fit(self, X, y=None):
        return self

    def transform(self, docx_files, y=None):
        transformed = [DocxExtractor.transform_sample(docx) for docx in docx_files]
        return transformed

    def transform_sample(docx):
        with ZipFile(BytesIO(docx)) as extracted:
            document_content = extracted.open('word/document.xml').read()
        return document_content


class XMLParser(TransformerMixin):
    def __init__(self):
        super(XMLParser, self).__init__()

    def fit(self, X, y=None):
        return self

    def transform(self, xml_strings, y=None):
        transformed = [self.transform_sample(xml_string) for xml_string in xml_strings]
        return transformed

    def transform_sample(self, xml_string):
        root = etree.fromstring(xml_string)
        # findall(tag)' suchr rekursiv nach einem tag
        # getchildren() gibt eine Liste der Kind-implemente
        # manchnal ist zum Beispiel ziemlich viel in getchildren()[0].getchildren()





class Task(BaseTask):
    @property
    def include_file_names(self):
        return True

    @property
    def unit(self):
        return 2

    @property
    def challenge(self):
        return 1

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
