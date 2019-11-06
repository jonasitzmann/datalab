import pickle
import warnings
from sklearn.datasets import load_files
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_selection import SelectKBest, chi2
from sklearn.model_selection import RandomizedSearchCV
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import train_test_split
from scipy.stats import randint
from sklearn.neural_network import MLPClassifier
from sklearn.pipeline import FeatureUnion, Pipeline
from sklearn.preprocessing import StandardScaler
from einfuehrung_mit_spam_1 import DenseTransformer
from einfuehrung_mit_spam_1 import HandCraftedFeatureExtractor
from helpers import get_scorer

warnings.simplefilter(action='ignore', category=FutureWarning)


def get_bow_pipeline():
    dataset = load_files('training', shuffle=True,
                         encoding='utf-8', decode_error='ignore')
    xs, ys = dataset.data, dataset.target
    feature_extractor = FeatureUnion([
        ('bag_of_words', TfidfVectorizer(ngram_range=(1, 3))),
        #  ('bag_of_concepts', BagOfConceptVectorizer())  # todo: implement
        ('other_features', HandCraftedFeatureExtractor())
    ])
    pipeline = Pipeline([
        ('feature_extraction', feature_extractor),
        ('feature_selection', SelectKBest(score_func=chi2, k=1000)),
        ('sparse_to_dense', DenseTransformer()),
        #  ('pca', PCA(n_components=100)),
        ('normalization', StandardScaler()),
        # ('classifier', SVC())
        ('classifier', MLPClassifier(max_iter=5000,
                                     hidden_layer_sizes=(20, 20, 10), tol=1e-6, verbose=False))
    ], memory=None, verbose=False)
    hyperparams = {
        'feature_selection__k': [1000],
        'classifier__hidden_layer_sizes': [(20, 10, 10), (20, 40, 10)],
        # 'feature_extraction__bag_of_words__ngram_range': [(1, 5)]
    }
    return xs, ys, pipeline, hyperparams


def endless_random_search(xs, ys, model, param_distribution):
    best_params = {}
    best_model = None
    best_score = 0.
    while True:
        clf = RandomizedSearchCV(model, param_distribution, n_iter=1, n_jobs=-1, cv=5, scoring='balanced_accuracy')
        try:
            clf = clf.fit(xs, ys)
            score = clf.best_score_
            if score > best_score:
                best_params = clf.best_params_
                best_model = clf.best_estimator_
                best_score = score
                print("best params")
                print(best_params)
                print("best score: {}".format(best_score))
                pickle.dump(best_model, open('best_model.bin', 'wb'))
        except Exception as ex:
            print('\nError (skipping param set):\n{}'.format(str(ex)))


def big_run():
    try:
        print('HELLO WORLD')
        xs, ys, pipeline, _ = get_bow_pipeline()
        hyperparams = {
            #  'feature_extraction__bag_of_words__ngram_range': [(1, 3), (1, 5)],
            'feature_selection__k': randint(3000, 5000),
            'classifier__hidden_layer_sizes': [(10, 10), (10, 10, 10), (3, 10), (3, 10, 10)]
        }
        print('params:')
        print(hyperparams)
        endless_random_search(xs, ys, pipeline, hyperparams)
    except Exception as ex:
        print('\nError:\n{}'.format(str(ex)))


def evaluate_pipeline(pipeline, xs, ys, short=False):
    if short:
        xs_train, xs_test, ys_train, ys_test = train_test_split(xs, ys)
        pipeline.fit(xs_train, ys_train)
        print('accuracy: {}'.format(pipeline.score(xs_test, ys_test)))
    else:
        try:
            accuracies = cross_val_score(
                pipeline, xs, ys, verbose=51, n_jobs=7, scoring=get_scorer(), cv=2)
            print('cross validation accuracies: {}'.format(accuracies))
        except Exception as ex:
            print('Error:\n{}'.format(str(ex)))


def main():
    xs, ys, pipeline, _ = get_bow_pipeline()
    n_samples = 1000
    xs, ys = xs[:n_samples], ys[:n_samples]
    param_distribution = {
        'feature_extraction__bag_of_words__ngram_range': [(1, 1), (1, 3)],
        'feature_selection__k': randint(100, 1000),
        'classifier__hidden_layer_sizes': [(1), (10, 10)]
    }
    endless_random_search(xs, ys, pipeline, param_distribution)

if __name__ == '__main__':
    main()
