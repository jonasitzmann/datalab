import torch
import torch.nn as nn
from torch.autograd import Variable
import torch
from sklearn.base import TransformerMixin
from sklearn.base import ClassifierMixin
from skorch import NeuralNetClassifier
from sklearn.pipeline import Pipeline
from src.utils.utils import lookup_key_seq
from src.utils.utils import to_padded_tensor
from src.utils.utils import load_embeddings
from torch.optim import Adam
from skorch.callbacks import EarlyStopping
from torch import Tensor

class RNNClassifier(nn.Module):
    def __init__(self, input_size, hidden_size, output_size, n_layers=1, embedding_weights=None, bidirectional=True):
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
        xs = xs.t()
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

