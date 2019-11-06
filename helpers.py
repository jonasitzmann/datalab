import numpy as np
import _pickle as pickle
import os
from gensim.models import Word2Vec
import spacy
import pickle
from sklearn.metrics import balanced_accuracy_score
from sklearn.metrics import make_scorer


def score_func(*args, **kwargs):
    result = balanced_accuracy_score(*args, **kwargs)
    print("score: {}".format(result))
    return result


def get_scorer():
    return make_scorer(score_func)

#  caches the result of a function to a file and loads it for subsequent calls
#  todo check if arguments and source code are the same
def cache_result(func):
    def wrapper(*args, recompute=False, **kwargs):
        cache_dir = 'cached_results/'
        func_name = func.__name__
        file_path = '{}/{}'.format(cache_dir, func_name)
        if not os.path.isdir(cache_dir):
            print('executing {}'.format(func_name))
            os.mkdir(cache_dir)
        if not recompute and os.path.isfile(file_path):
            print('loading stored result of {}'.format(func_name))
            with open(file_path, 'rb') as load_file:
                return pickle.load(load_file)
        result = func(*args, **kwargs)
        with open(file_path, 'wb') as write_file:
            pickle.dump(result, write_file)
        return result
    return wrapper


model = None


def word2vec_gensim(text):
    global model
    if not model:
        model = Word2Vec.load_word2vec_format('word2vec_model.bin')
    return model[text]


spacy_model = None


def word2vec(word):
    global spacy_model
    if spacy_model is None:
        spacy_model = spacy.load('en_core_web_md')
    transformed = spacy_model(word)
    return [word.vector for word in transformed]


def pad_3d_array(arr):
    max_length = max([len(row) for row in arr])
    padded = np.zeros((len(arr), max_length, len(arr[0][0])), dtype=np.float32)
    for idx, row in enumerate(arr):
        row_len = len(row)
        padded[idx, :row_len] = row
    return padded


if __name__ == '__main__':
    print(word2vec("hello"))


