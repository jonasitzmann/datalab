import warnings
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_selection import SelectKBest, chi2
from sklearn.neural_network import MLPClassifier
from sklearn.pipeline import FeatureUnion, Pipeline
from sklearn.preprocessing import StandardScaler
from einfuehrung_mit_spam_1 import DenseTransformer
from einfuehrung_mit_spam_1 import HandCraftedFeatureExtractor
from sklearn.decomposition import PCA
from sklearn.svm import SVC
from src.utils.utils import get_dataset
from src.utils.utils import endless_random_search
from src.utils.utils import merge_predictions


warnings.simplefilter(action='ignore', category=FutureWarning)


def get_pipeline_unit1_challenge1():
    pipeline = Pipeline([
        ('feature_extraction', FeatureUnion([
            ('bag_of_words', TfidfVectorizer()),
            ('other_features', HandCraftedFeatureExtractor())])),
        ('feature_selection', SelectKBest(score_func=chi2)),
        ('sparse_to_dense', DenseTransformer()),
        ('normalization', StandardScaler()),
        ('classifier', MLPClassifier(max_iter=5000, tol=1e-6))
    ], verbose=False)
    return pipeline


def get_hyperparams_distribution_unit1_challenge1():
    return {
        'feature_extraction__bag_of_words__ngram_range': [(1, 3)],
        'feature_selection__k': [20000],
        'classifier__hidden_layer_sizes': [(5, 10), (10, 10), (5, 5), (10, 5)]
    }


def get_best_hyperparams_unit1_challenge1():
    return {
        'feature_extraction__bag_of_words__ngram_range': (1, 3),
        'feature_selection__k': 10000,
        'classifier__hidden_layer_sizes': (10, 10, 10)
    }


def get_pipeline_unit1_challenge2():
    pipeline = Pipeline([
        ('feature_extraction', TfidfVectorizer(ngram_range=(1, 1), max_features=2000)),
        ('sparse_to_dense', DenseTransformer()),
        ('pca', PCA(n_components=30)),
        ('classifier', SVC())
    ])
    return pipeline


get_pipeline_funcs = [[get_pipeline_unit1_challenge1, get_pipeline_unit1_challenge2]]
get_best_param_funcs = [[get_best_hyperparams_unit1_challenge1]]
get_param_distribution_funcs = [[get_hyperparams_distribution_unit1_challenge1]]


def main(unit=1, challenge=1):  # this function is called by the bot
    dataset = get_dataset(unit, challenge)
    classifier = get_pipeline_funcs[unit-1][challenge-1]()  # zero indexing
    params = get_param_distribution_funcs[unit-1][challenge-1]()  # zero indexing
    endless_random_search(classifier, dataset, params)



if __name__ == '__main__':
    merge_predictions(1, 1, 5)
