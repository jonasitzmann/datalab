import time
import math
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.model_selection import train_test_split
from src.unit2_challenge3 import Task as RTFTask
from src.unit2_challenge3 import Rtf2Structure
from src.utils.utils import lookup_key
from striprtf.striprtf import rtf_to_text
from src.utils.utils import to_padded_tensor
from src.utils.models import RNNClassifier
import torch
from torch import nn
from torch.autograd import Variable

# Parameters
HIDDEN_SIZE = 15
N_LAYERS = 2
N_EPOCHS = 100

N_CLASSES = 2
print(N_CLASSES, "classes")
VOCAB_SIZE = 1500


def texts2vocab(texts):
    cv = CountVectorizer(max_features=VOCAB_SIZE-1)
    cv.fit_transform(texts)
    tokenizer = cv.build_tokenizer()
    vocab = cv.vocabulary_.copy()
    result = [lookup_key(text, vocab, tokenizer) for text in texts]
    return result


def get_data():
    task = RTFTask(samples_factor=0.1)
    xs, ys = task.x_train, task.y_train
    structure = True
    if structure:
        rtf2structure = Rtf2Structure()
        rtf2structure.fit(xs, ys)
        xs = rtf2structure.transform(xs)
    else:
        for i in range(len(xs)):
            text = xs[i]
            try:
                xs[i] = rtf_to_text(text)
            except:
                xs[i] = ""
        xs = texts2vocab(xs)
    xs = to_padded_tensor(xs)
    nonzero = (xs != 0).sum()
    vocab_coverage = float(nonzero) / (xs.shape[0] * xs.shape[1])
    print('vocab coverage: {:.2f}'.format(vocab_coverage))
    return xs, ys


# Some utility functions
def time_since(since):
    s = time.time() - since
    m = math.floor(s / 60)
    s -= m * 60
    return '%dm %ds' % (m, s)


def get_random_data(n_samples):
    xs = torch.randint(0, VOCAB_SIZE, (n_samples, 50), dtype=torch.long)
    xs[::2, :4] = torch.LongTensor(range(4))
    xs = Variable(xs)
    ys = torch.zeros(n_samples, dtype=torch.long)
    ys[::2] = 1
    ys = Variable(ys)
    return xs, ys


def train():
    total_loss = 0
    output = classifier(x_train)
    loss = criterion(output, y_train)
    total_loss += loss.item()
    classifier.zero_grad()
    loss.backward()
    optimizer.step()
    print('[{}] Train Epoch: {}\tLoss: {:.2f}'.format(time_since(start), epoch, total_loss))

    return total_loss


def test():
    print("evaluating model ...")
    correct = 0
    n_samples = len(x_test)
    for x, y in zip(x_test, y_test):
        x, y = x.view(1, -1), y.view(1, -1)
        output = classifier(x)
        pred = output.data.max(1, keepdim=True)[1]
        correct += pred.eq(y.data.view_as(pred)).sum()
    print('\nTest set: Accuracy: {}/{} ({:.0f}%)\n'.format(
        correct, n_samples, 100. * correct / n_samples))


if __name__ == '__main__':
    classifier = RNNClassifier(VOCAB_SIZE, HIDDEN_SIZE, N_CLASSES, N_LAYERS)
    optimizer = torch.optim.Adam(classifier.parameters(), lr=0.01)
    criterion = nn.CrossEntropyLoss()
    start = time.time()
    x_train, x_test, y_train, y_test = train_test_split(*get_data(), train_size=0.8)
    x_train = Variable(torch.tensor(x_train, dtype=torch.long))
    y_train = Variable(torch.tensor(y_train, dtype=torch.long))
    x_test = Variable(torch.tensor(x_test, dtype=torch.long))
    y_test = Variable(torch.tensor(y_test, dtype=torch.long))
    test()
    print("Training for %d epochs..." % N_EPOCHS)
    for epoch in range(1, N_EPOCHS + 1):
        train()
        if epoch % 20 == 0:
            test()
