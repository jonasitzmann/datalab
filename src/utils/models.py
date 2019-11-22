import torch
import torch.nn as nn
from torch.autograd import Variable
import torch


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
