import numpy as np
import pandas as pd
import torch
from torch import nn
from keras.preprocessing.text import Tokenizer
from keras.preprocessing.sequence import pad_sequences


train = pd.read_csv("train.csv")
x_train = train["text"].values
y_train = train['target'].values

np.random.seed(123)
torch.manual_seed(123)
torch.cuda.manual_seed(123)
torch.backends.cudnn.deterministic = True

from keras.preprocessing import text, sequence

## create tokens
tokenizer = Tokenizer(num_words = 1000)
tokenizer.fit_on_texts(x_train)
word_index = tokenizer.word_index

## convert texts to padded sequences
x_train = tokenizer.texts_to_sequences(x_train)
x_train = pad_sequences(x_train, maxlen = 70)

EMBEDDING_FILE = 'glove.840B.300d.txt'

embeddings_index = {}
for i, line in enumerate(open(EMBEDDING_FILE)):
    val = line.split()
    embeddings_index[val[0]] = np.asarray(val[1:], dtype='float32')

embedding_matrix = np.zeros((len(word_index) + 1, 300))
for word, i in word_index.items():
    embedding_vector = embeddings_index.get(word)
    if embedding_vector is not None:
        embedding_matrix[i] = embedding_vector


class Model(nn.Module):
    def __init__(self):
        super(Model, self).__init__()

        ## Embedding Layer, Add parameter
        self.embedding = nn.Embedding(max_features, embed_size)
        et = torch.tensor(embedding_matrix, dtype=torch.float32)
        self.embedding.weight = nn.Parameter(et)
        self.embedding.weight.requires_grad = False
        
        self.embedding_dropout = nn.Dropout2d(0.1)
        self.lstm = nn.LSTM(300, 40)        
        self.linear = nn.Linear(40, 16)
        self.out = nn.Linear(16, 1)
        self.relu = nn.ReLU()

    def forward(self, x):
        h_embedding = self.embedding(x)
        h_lstm, _ = self.lstm(h_embedding)
        max_pool, _ = torch.max(h_lstm, 1)
        linear = self.relu(self.linear(max_pool))
        out = self.out(linear)
        return out

model = Model()
from torch.utils.data import TensorDataset

## create training and validation split
split_size = int(0.8 * len(train_df))
index_list = list(range(len(train_df)))
train_idx, valid_idx = index_list[:split], index_list[split:]

## create iterator objects for train and valid datasets
x_tr = torch.tensor(x_train[train_idx], dtype=torch.long)
y_tr = torch.tensor(y_train[train_idx], dtype=torch.float32)
train = TensorDataset(x_tr, y_tr)
trainloader = DataLoader(train, batch_size=128)

x_val = torch.tensor(x_train[valid_idx], dtype=torch.long)
y_val = torch.tensor(y_train[valid_idx], dtype=torch.float32)
valid = TensorDataset(x_val, y_val)
validloader = DataLoader(valid, batch_size=128)

loss_function = nn.BCEWithLogitsLoss(reduction='mean')
optimizer = optim.Adam(model.parameters())

## run for 10 Epochs
for epoch in range(1, 11):
    train_loss, valid_loss = [], []

    ## training part
    model.train()
    for data, target in trainloader:
        optimizer.zero_grad()
        output = model(data)
        loss = loss_function(output, target.view(-1, 1))
        loss.backward()
        optimizer.step()
        train_loss.append(loss.item())

    ## evaluation part
    model.eval()
    for data, target in validloader:
        output = model(data)

        loss = loss_function(output, target.view(-1,1))
        valid_loss.append(loss.item())

dataiter = iter(validloader)
data, labels = dataiter.next()
output = model(data)
_, preds_tensor = torch.max(output, 1)
preds = np.squeeze(preds_tensor.numpy())