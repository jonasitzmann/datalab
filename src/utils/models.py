import torch.nn as nn
from torch.autograd import Variable
import torch
import torch.nn as nn
import torch.nn.functional as F
from sklearn.base import ClassifierMixin
from skorch import NeuralNetClassifier
from sklearn.pipeline import Pipeline
from src.utils.utils import lookup_key_seq
from src.utils.utils import to_padded_tensor
from src.utils.utils import load_embeddings
from src.base.optional_transformer import OptionalTransformer
from torch.optim import Adam
from skorch.callbacks import EarlyStopping
from sklearn.base import TransformerMixin
from sys import getsizeof
import numpy as np
from sklearn.base import ClusterMixin
from sklearn.cluster import KMeans
from sklearn.mixture import GaussianMixture
from sklearn.base import BaseEstimator
from sklearn.preprocessing import StandardScaler


class FileSizeClusterer(ClusterMixin):
    def __init__(self, seed=True):
        super(FileSizeClusterer, self).__init__()
        if seed:
            np.random.seed(0)
        self.kmeans = KMeans(n_clusters=30)

    def to_filesize(self, xs):
        return np.array([[getsizeof(x)] for x in xs])

    def fit(self, xs, ys=None):
        xs = self.to_filesize(xs)
        self.kmeans.fit(xs)
        return self

    def predict(self, xs):
        xs = self.to_filesize(xs)
        predictions = self.kmeans.predict(xs)
        return predictions


class FileSizeExtractor(TransformerMixin):
    def __init__(self, log=True):
        super(FileSizeExtractor, self).__init__()
        self.func = np.log if log else lambda x: x

    def fit(self, xs, ys=None):
        return self

    def transform(self, xs, ys=None):
        return np.array([[self.func(getsizeof(x))] for x in xs])

class SequenceNormalizer(TransformerMixin):
    def __init__(self):
        super().__init__()
        self.normalizers = None

    def fit(self, xs, ys=None):
        self.normalizers = [StandardScaler() for i in range(len(xs[0][0]))]
        xs = np.array(xs)
        for i, normalizer in enumerate(self.normalizers):
            normalizer.fit(xs[:, :, i])
        return self

    def transform(self, xs, ys=None):
        xs = np.array(xs)
        for i, normalizer in enumerate(self.normalizers):
            xs[:, :, i] = normalizer.transform(xs[:, :, i])
        return xs




class RNNClassifieNoEmbeddings(nn.Module):
    def __init__(self,
                 input_size,
                 hidden_size,
                 output_size,
                 n_layers=1,
                 bidirectional=True):
        super().__init__()
        self.hidden_size = hidden_size
        self.n_layers = n_layers
        self.n_directions = int(bidirectional) + 1
        self.gru = nn.GRU(input_size,
                          hidden_size,
                          n_layers,
                          bidirectional=bidirectional,
                          dropout=0.3
                          )
        self.fc = nn.Linear(hidden_size, output_size)

    def forward(self, xs):
        # Note: we run this all at once (over the whole input sequence)
        # input shape: B x S (input size)
        # transpose to make S(sequence) x B (batch)
        xs = xs.transpose_(0, 1)
        batch_size = xs.size(1)
        # Make a hidden
        hidden = self._init_hidden(batch_size)
        output, hidden = self.gru(xs, hidden)
        fc_output = self.fc(hidden[-1])
        return fc_output

    def _init_hidden(self, batch_size):
        hidden = torch.zeros(self.n_layers * self.n_directions,
                             batch_size, self.hidden_size)
        return Variable(hidden)




class RNNClassifier(nn.Module):
    def __init__(self,
                 input_size,
                 hidden_size,
                 output_size,
                 n_layers=1,
                 embedding_weights=None,
                 bidirectional=True):
        super(RNNClassifier, self).__init__()
        self.embedding_weights = embedding_weights
        self.hidden_size = hidden_size
        self.n_layers = n_layers
        self.n_directions = int(bidirectional) + 1
        if embedding_weights is not None:
            self.embedding = nn.Embedding.from_pretrained(embedding_weights, freeze=True)
        else:
            self.embedding = nn.Embedding(input_size, hidden_size)
        self.gru = nn.GRU(self.embedding.embedding_dim,
                          hidden_size,
                          n_layers,
                          bidirectional=bidirectional,
                          dropout=0.3
                          )
        self.fc = nn.Linear(hidden_size, output_size)

    def forward(self, xs):
        # Note: we run this all at once (over the whole input sequence)
        # input shape: B x S (input size)
        # transpose to make S(sequence) x B (batch)
        xs = xs.transpose_(0, 1)
        batch_size = xs.size(1)
        # Make a hidden
        hidden = self._init_hidden(batch_size)

        # Embedding S x B -> S x B x I (embedding size)
        embedded = self.embedding(xs)
        output, hidden = self.gru(embedded, hidden)
        fc_output = self.fc(hidden[-1])
        return fc_output

    def _init_hidden(self, batch_size):
        hidden = torch.zeros(self.n_layers * self.n_directions,
                             batch_size, self.hidden_size)
        return Variable(hidden)


class Text2Glove(TransformerMixin):
    def __init__(self, vocab, max_seq_len=15_000):
        super(Text2Glove, self).__init__()
        self.vocab = vocab
        self.max_seq_len = max_seq_len

    def fit(self, xs, ys=None):
        return self

    def transform(self, texts, ys=None):
        transformed = [lookup_key_seq(text.split(), self.vocab)[:self.max_seq_len] for text in texts]
        return to_padded_tensor(transformed)


def get_rnn_pipeline():
    vocab, weights = load_embeddings()
    tokenizer = Text2Glove(vocab)
    net = NeuralNetClassifier(
        module=RNNClassifier,
        module__input_size=tokenizer.max_seq_len,
        module__hidden_size=8,
        module__output_size=2,
        module__n_layers=2,
        module__embedding_weights=weights,
        optimizer=Adam,
        criterion=nn.CrossEntropyLoss,
        batch_size=100,
        max_epochs=50,
        callbacks=[EarlyStopping(patience=4)],
        optimizer__weight_decay=0.01,
        optimizer__lr=1e-2,
        verbose=True
    )
    pipeline = Pipeline([
        ('tokenizer', tokenizer),
        ('net', net)
    ])
    return pipeline


class XTestFitter(OptionalTransformer):
    def __init__(self):
        super(XTestFitter).__init__()
        self.x_train_size = None
        self.x_test = None

    def fit(self, x_train, y=None, x_test=None, **fit_params):
        self.x_test = x_test
        return self

    def transform(self, x_train, y_train=None, **kwargs):
        self.x_train_size = len(x_train)
        if isinstance(self.x_test, list):
            x_train = list(x_train + self.x_test)
        else:
            print('no x_test provided. fitting on x_train only')
        return x_train


class NoXTestFitter(OptionalTransformer):
    def __init__(self, x_test_fitter: XTestFitter):
        super(NoXTestFitter).__init__()
        self.x_test_fitter = x_test_fitter

    def fit(self, x_train, y=None, **fit_params):
        return self

    def transform(self, x_train, y_train=None, **kwargs):
        if self.x_test_fitter.x_train_size is not None:
            x_train = x_train[:self.x_test_fitter.x_train_size]
        self.x_test_fitter.x_train_size = None
        return x_train


class DenseTransformer(TransformerMixin):
    def fit(self, X, y=None, **fit_params):
        return self

    def transform(self, X, y=None, **fit_params):
        if hasattr(X, 'todense'):
            X = X.todense()
        return X


class ClfSwitcher(ClassifierMixin):
    def __init__(self, model1, model2, take_model1):
        self.model1 = model1
        self.model2 = model2
        self.take_model1 = take_model1

    def split(self, x, y=None):
        idxs = range(len(x))
        model1_idxs = [i for i in idxs if self.take_model1(x[i])]
        model2_idxs = [i for i in idxs if i not in model1_idxs]
        x1 = [x_i for i, x_i in enumerate(x) if i in model1_idxs]
        x2 = [x_i for i, x_i in enumerate(x) if i in model2_idxs]
        if y is not None:
            y1 = np.array(y)[model1_idxs]
            y2 = np.array(y)[model2_idxs]
            return x1, y1, x2, y2
        else:
            return x1, x2, model1_idxs, model2_idxs

    def fit(self, x, y, **kwargs):
        x1, y1, x2, y2 = self.split(x, y)
        self.model1 = self.model1.fit(x1, y1)
        self.model2 = self.model2.fit(x2, y2)
        return self

    def predict(self, x, y=None):
        x1, x2, model1_idxs, model2_idxs = self.split(x)
        preds_1 = self.model1.predict(x1)
        preds_2 = self.model2.predict(x2)
        preds = np.zeros(len(x))
        preds[model1_idxs] = preds_1
        preds[model2_idxs] = preds_2
        return preds


class GmmClusterer(ClusterMixin, BaseEstimator):
    def __init__(self, n_clusters=5):
        super(GmmClusterer, self).__init__()
        self.gmm = self.get_model(n_clusters)
        self.labels_ = None

    def fit(self, xs, ys=None):
        self.gmm = self.gmm.fit(xs)
        self.labels_ = self.predict(xs)
        return self

    def set_params(self, n_clusters):
        self.gmm = self.get_model(n_clusters)

    def get_model(self, n_clusters):
        return GaussianMixture(n_components=n_clusters, n_init=60, max_iter=200)

    def predict(self, xs):
        return self.gmm.predict(xs)


class CNN(nn.Module):
    def __init__(self, output_size):
        super(CNN, self).__init__()
        self.cnn = nn.Sequential(
            nn.Conv2d(2, 8, (4, 4), 1),
            nn.ReLU(),
            nn.Dropout(0.15),
            nn.MaxPool2d(kernel_size=3, stride=3),
            nn.Conv2d(8, 5, (3, 3), 1),
            nn.Dropout(0.15),
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=3, stride=3),
        )
        n_hidden = 50
        self.fc = nn.Sequential(
            nn.Linear(125, n_hidden),
            nn.Dropout(0.35),
            nn.ReLU(),
            nn.Linear(n_hidden, output_size),
            nn.Softmax()
        )

    def forward(self, x):
        x = x.float()
        x = self.cnn(x)
        x = x.view(x.shape[0], -1)
        x = self.fc(x)
        return x


class NDStandardScaler(TransformerMixin):
    def __init__(self, **kwargs):
        self._scaler = StandardScaler(copy=True, **kwargs)
        self._orig_shape = None

    def fit(self, X, y=None, **kwargs):
        X = np.array(X)
        # Save the original shape to reshape the flattened X later
        # back to its original shape
        if len(X.shape) > 1:
            self._orig_shape = X.shape[1:]
        X = self._flatten(X)
        self._scaler.fit(X, **kwargs)
        return self

    def transform(self, X, y=None, **kwargs):
        X = np.array(X)
        X = self._flatten(X)
        X = self._scaler.transform(X, **kwargs)
        X = self._reshape(X)
        return X

    def _flatten(self, X):
        # Reshape X to <= 2 dimensions
        if len(X.shape) > 2:
            n_dims = np.prod(self._orig_shape)
            X = X.reshape(-1, n_dims)
        return X

    def _reshape(self, X):
        # Reshape X back to it's original shape
        if len(X.shape) >= 2:
            X = X.reshape(-1, *self._orig_shape)
        return X
