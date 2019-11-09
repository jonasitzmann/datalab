import os
import shutil
import numpy as np
from collections import defaultdict
from collections import Counter
from zipfile import ZipFile
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import PCA
from sklearn.feature_selection import SelectKBest
from sklearn.feature_selection import chi2
from sklearn.cluster import MiniBatchKMeans
from sklearn.svm import SVC
from scipy.spatial import distance
from sklearn.base import TransformerMixin
import re
import warnings
import spacy
import pickle
from singleton_decorator import singleton
warnings.simplefilter(
    action='ignore',
    category=FutureWarning)  # disable future warnings

#  Configuration
K_MEANS_N_EPOCHS = 10
K_MEANS_BATCH_SIZE = 100_000
NUM_CLUSTERS = 8000  # magic value: 200 from a paper 'beyond bag of concepts'
N_GRAM_RANGE = 3
N_FEATURES_BEFORE_REDUCTION = 4000
N_FEATURES_AFTER_REDUCTION = 1000
N_FEATURES_AFTER_PCA = 20
SPACY_MODEL_SIZE = 'md'  # (small) other values: md (medium), lg (large)
MIN_FREQUENCY = 0.00
N_SAMPLES = -1  # -1 means 'take all samples'
NUM_FOLDS_CROSS_VALIDATION = 2
MAKE_TEST_PREDICTIONS = False
TASK_NUM = 1
TRAINING_FILE, TEST_FILE = [
    "training.zip", "test.zip"] if TASK_NUM == 1 else [
        "training_2.zip", "test_2.zip"]
TRAINING_EMBEDDINGS, TEST_EMBEDDINGS = [
    "training_embeddings", "test_embeddings"] if TASK_NUM == 1 else [
        "training_2_embeddings", "test_2_embeddings"]
K_MEANS_FILE = "k_means_model.bin"
TRIGGER_FILE = "trigger_words.txt"
SAVE_TRAINING_ERRORS = True
trigger_words = []




def load_test_data(zip_path):
    with ZipFile(zip_path) as test_file:
        x_test = [
            test_file.open(name).read().decode(
                'utf-8',
                errors='ignore') for name in test_file.namelist()]
        test_names = test_file.namelist()
    return x_test, test_names


def load_training_data(train_path, n_samples=-1):
    print("loading training data")
    with ZipFile(train_path) as train_file:
        namelist = train_file.namelist()[:-1]  # exclude the last file (which contains a list of all filenames)
        if n_samples != -1:
            namelist = namelist[:n_samples]
        x_train = np.array([
            train_file.open(name).read().decode(
                'utf-8',
                errors='ignore') for name in namelist])
        y_train = np.array([name[-1] == '1' for name in namelist])
    return x_train, y_train


SPACY_MODEL = None


@singleton
class Word2Vec:
    def __init__(self):
        self.model = spacy.load('en_core_web_sm')


def calc_embeddings(texts, dirname):
    print("calculating embeddings")
    model = Word2Vec().model
    shutil.rmtree(dirname)
    os.mkdir(dirname)
    for index, email in enumerate(texts):
        if index % 1000 == 0:
            print("{} of {}".format(index, len(texts)))
        embedding = model(email.lower())
        array = np.array([word.vector for word in embedding], dtype=np.single)
        with open("{}/{:04d}.bin".format(dirname, index), 'wb') as file:
            pickle.dump(array, file)


def load_embedding(dirname, index):
    with open("{}/{:04d}.bin".format(dirname, index), 'rb') as file:
        return pickle.load(file)


def load_embeddings(dirname, n_samples=-1):
    print("loading embeddings")
    n_files = len([None for _ in os.listdir(dirname)])
    max_idx = n_files if n_samples == -1 else min(n_samples, n_files)
    embeddings = (load_embedding(dirname, idx) for idx in range(max_idx))
    return embeddings


def flatten(l): return (item for sublist in l for item in sublist)


#@cache_result
def fit_k_means(samples):
    print("k_means_clustering")
    k_means = MiniBatchKMeans(
        n_clusters=NUM_CLUSTERS,
        batch_size=K_MEANS_BATCH_SIZE,

    )
    n_batches = int(len(samples) / K_MEANS_BATCH_SIZE)
    K_MEANS_N_EPOCHS = 5
    for epoch in range(K_MEANS_N_EPOCHS):
        print('epoch {} of {}'.format(epoch + 1, K_MEANS_N_EPOCHS))
        for batch in range(n_batches):
            print('batch {} of {}'.format(batch + 1, n_batches))
            fit_data = np.array(
                samples[batch * K_MEANS_BATCH_SIZE: (batch + 1) * K_MEANS_BATCH_SIZE])
            k_means = k_means.partial_fit(fit_data)
    return k_means


def transform_k_means(k_means, dataset):
    print("transforming (k_means)")
    #transformed = [k_means.predict(embedding) for embedding in embeddings]
    return transformed


def get_vectorizer(texts_for_fitting):
    print("Fitting vectorizer")
    vectorizer = TfidfVectorizer(
        decode_error='ignore',
        ngram_range=(1, N_GRAM_RANGE),
        min_df=MIN_FREQUENCY,
        stop_words='english',
        max_features=N_FEATURES_BEFORE_REDUCTION,
        #  token_pattern=r"(?u)\b\w+\b"  # words can have length 1
    )
    vectorizer.fit(texts_for_fitting)
    return vectorizer


def extract_subject(text):
    match = re.search("Subject: (.*?)\n", text)
    if match is None:
        return ""
    else:
        return match.group(1)


def count_trigger_words(text):
    global trigger_words
    if not trigger_words:
        trigger_words = open(TRIGGER_FILE).read().split('\n')
        trigger_words = [word for word in trigger_words if len(word) > 0]
    text = text.lower()
    return sum([text.count(word) for word in trigger_words])


def calc_bag_of_numbers(samples):
    occurrences = []
    for sample in samples:
        counter = Counter(sample)
        d = defaultdict(int)
        d.update(dict(counter))
        occurrences.append(np.array(list(d[i] for i in range(NUM_CLUSTERS))))
    return np.array(occurrences)


class HandCraftedFeatureExtractor(TransformerMixin):
    def fit(self, X, y=None, **fit_params):
        return self

    def transform(self, X, y=None, **transform_params):
        features = np.array([self.extract_features(text) for text in X])
        return features

    def extract_features(self, text):
        text = str(text)
        subject = extract_subject(text)
        word_features = [
            [word.islower(), word.isdigit(), len(word), word.isalnum()]
            for word in str(text).split()]
        word_feature_means = list(np.mean(np.array(word_features), axis=0))
        text_features = np.array([
            len(text),
            count_trigger_words(text),
            len(subject),
            count_trigger_words(subject),
        ])
        result = np.array(word_feature_means + text_features)
        return result


def extract_features(vectorizer, texts):
    print("Extracting features")
    #features = vectorizer.transform(texts).toarray()
    #features = features.reshape(features .shape[0], -1)

    #  hand crafted features
    sizes = np.array([len(text) for text in texts]).reshape(-1, 1)
    num_trigger_words = np.array(
        [count_trigger_words(text) for text in texts]).reshape(-1, 1)
    num_triggers_subject = np.array([count_trigger_words(
        extract_subject(text)) for text in texts]).reshape(-1, 1)
    subject_length = np.array([len(extract_subject(text))
                               for text in texts]).reshape(-1, 1)

    word_features = [[
        [word.islower(), word.isdigit(), len(word), word.isalnum()]
        for word in str(text).split()] for text in texts]
    word_feature_means = np.array([
        np.mean(np.array(word_features_row), axis=0)
        for word_features_row in word_features])
    features = np.concatenate([
        # features,
        sizes,
        num_trigger_words,
        num_triggers_subject,
        subject_length,
        word_feature_means,
    ], axis=1)
    return features


def select_features(x_train, y_train, x_test):
    print("Selecting features")
    transformer = SelectKBest(chi2, N_FEATURES_AFTER_REDUCTION)
    transformer.fit(x_train, y_train)
    return transformer.transform(x_train), transformer.transform(x_test)


def reduce_dimensions_pca(x_train, x_test):
    print("PCA")
    pca = PCA(n_components=N_FEATURES_AFTER_PCA)
    pca.fit(x_train)
    return pca.transform(x_train), pca.transform(x_test)


def get_classifier():
    return SVC(C=1.0)
    # return LinearDiscriminantAnalysis()
    # return RandomForestClassifier()


#  where to put this?
#nlp = get_spacy_model()
#ids = [x for x in nlp.vocab.vectors.keys()]
#vectors = [nlp.vocab.vectors[x] for x in ids]
#vectors = np.array(vectors)


def vec2word(vector):
    closest_index = distance.cdist([vector], vectors, metric='cosine').argmin()
    word_id = ids[closest_index]
    output_word = nlp.vocab[word_id].text
    return output_word


def reconstruct_after_k_means(cluster_idxs):
    k_means = load_k_means()
    print('starting reconstruction')
    email = []
    for cluster_idx in cluster_idxs:
        cluster = k_means.cluster_centers_[cluster_idx]
        email.append(vec2word(cluster))
    return " ".join(email)

