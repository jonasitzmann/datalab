from torch import nn
import torch.nn.functional as F


class LSTMClassifier(nn.Module):
    def __init__(self, input_dim):
        super(LSTMClassifier, self).__init__()
        self.hidden_dim = 10
        self.lstm = nn.LSTM(input_dim, self.hidden_dim, 1, batch_first=True)
        self.hidden2class = nn.Linear(self.hidden_dim, 2)

    def forward(self, embedding_sequence):
        size = len(embedding_sequence)
        _, lstm_out = self.lstm(embedding_sequence)
        last_out = lstm_out[:, -1]
        class_space = self.hidden2class(last_out)
        class_scores = F.softmax(class_space, 1)
        return class_scores

