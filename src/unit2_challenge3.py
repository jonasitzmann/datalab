from src.base.task import BaseTask
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.pipeline import Pipeline
from sklearn.base import ClassifierMixin
from sklearn.base import TransformerMixin
import re
from src.utils.utils import lookup_key_seq
from src.utils.utils import to_padded_tensor
from src.utils.models import RNNClassifier
from torch import nn
from torch import Tensor
from skorch import NeuralNetClassifier
from skorch.callbacks import EarlyStopping
from torch.optim import Adam
from sklearn.ensemble import VotingClassifier
from src.utils.utils import load_embeddings




class ObjDataClassifier(ClassifierMixin):
    def __init__(self):
        super(ObjDataClassifier, self).__init__()

    def fit(self, *args, **kwargs):
        return self

    def predict(self, xs):
        return list(map(lambda x: '\\objdata' in x.decode('utf-8', errors='ignore'), xs))


class Rtf2Glove(TransformerMixin):
    def __init__(self, vocab, max_seq_len=10_000):
        super(Rtf2Glove, self).__init__()
        self.vocab = vocab
        self.pattern = re.compile('({|}|\\\\(?P<label>.+?)(\\s|\\\\|$|{|;|}))')
        self.max_seq_len = max_seq_len

    def fit(self, xs, ys=None):
        return self

    def transform(self, xs, ys=None):
        texts = (self.pattern.sub('', x) for x in xs)
        transformed = [lookup_key_seq(text.split(), self.vocab)[:self.max_seq_len] for text in texts]
        return to_padded_tensor(transformed)


class Rtf2Structure(TransformerMixin):
    def __init__(self, max_vocab_size=1500, max_seq_len=12_000):
        super(Rtf2Structure, self).__init__()
        self.max_seq_len = max_seq_len
        self.pattern = re.compile('({|}|\\\\(?P<label>.+?)(\\s|\\\\|$|{|;|}))')
        self.vectorizer = CountVectorizer(max_features=max_vocab_size)

    def match2str(self, match):
        if match[0] in ['{', '}']:
            result = match[0]
        else:
            result = match[1] # a tag, not a brace
        return result

    def extract_structure(self, text):
        matches = self.pattern.findall(text)
        structure = list(map(self.match2str, matches))
        return structure[:self.max_seq_len]

    def fit(self, xs, ys=None):
        structures = list(map(self.extract_structure, xs))
        structure_strings = [' '.join(structure) for structure in structures]
        self.vectorizer.fit(structure_strings)
        return self

    def transform(self, xs, ys=None):
        transformed = list(map(self.extract_structure, xs))
        vocab = self.vectorizer.vocabulary_
        transformed = [lookup_key_seq(seq, vocab)[:self.max_seq_len] for seq in transformed]
        transformed = to_padded_tensor(transformed)
        return transformed


class Task(BaseTask):
    def __init__(self, samples_factor=1):
        super(Task, self).__init__(samples_factor)

    @property
    def train_data_link(self):
        return "https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/02-maldocs/d17837265e4822726982d301551931de39d229bc.zip"

    @property
    def test_data_link(self):
        return "https://www.sec.cs.tu-bs.de/teaching/ws19/datalab/02-maldocs/e22dcc91e7b17814cbc407f20a922678c48c3199.zip"

    @property
    def include_file_names(self):
        return False

    @property
    def unit(self):
        return 2

    @property
    def challenge(self):
        return 3

    def get_classifier_from_net(self, input_size, hidden_size, embedding_weights=None, n_layers=1, log_dir='log/default'):
        weights = [
            self.num_c1 / self.train_size,
            self.num_c0 / self.train_size
        ]  # inverse frequency ( for balanced acc)
        callbacks = [
                      EarlyStopping(patience=10, threshold=1e-4),
                      #FixRandomSeed(),
                  ]
        if log_dir:
            pass
            #callbacks.append(TensorBoard(log_dir))
        net = NeuralNetClassifier(
            RNNClassifier,
            module__input_size=input_size,
            module__hidden_size=hidden_size,
            module__output_size=2,
            module__embedding_weights=embedding_weights,
            module__n_layers=n_layers,
            optimizer=Adam,
            criterion=nn.CrossEntropyLoss,
            criterion__weight=Tensor(weights),
            batch_size=200,
            max_epochs=100,
            callbacks=callbacks,
            optimizer__weight_decay=0.01,
            optimizer__lr=1e-2,
            verbose=True
        )
        #net.set_params(callbacks__print_log=None)  # deactivate logging in each epoch
        return net

    def get_model(self):
        structure_extractor = Rtf2Structure()
        structure_net = self.get_classifier_from_net(
            input_size=structure_extractor.max_seq_len,
            hidden_size=15,
            log_dir='log/structure_net',
            n_layers=2
        )

        vocab, embedding_vectors = load_embeddings()
        rtf2glove = Rtf2Glove(vocab)
        text_net = self.get_classifier_from_net(
            input_size=rtf2glove.max_seq_len,
            hidden_size=15,
            embedding_weights=embedding_vectors,
            log_dir='log/text_net',
            n_layers=2
        )
        return VotingClassifier([
            ('structure', Pipeline([('structure_extractor', structure_extractor), ('s_net', structure_net)])),
            ('text', Pipeline([('rtf2glove', rtf2glove), ('text_net', text_net)]))
            ],
            voting='soft',
            weights=[2, 1],
            n_jobs=2
        )

    def get_param_distribution(self):
        return {
            'structure__s_net__module__n_layers': [1, 2, 3],
            'structure__s_net__module__hidden_size': [10, 20, 30],
            'rtf2glove__text_net__module__n_layers': [1, 2, 3],
            'rtf2glove__text_net__module__hidden_size': [10, 20, 30],
        }

    def get_params(self):
        return {}

    def decode_data(self):
        return True
