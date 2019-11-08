from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_selection import SelectKBest, chi2
from sklearn.neural_network import MLPClassifier
from sklearn.pipeline import FeatureUnion, Pipeline
from sklearn.preprocessing import StandardScaler
from sklearn.naive_bayes import GaussianNB
from einfuehrung_mit_spam_1 import DenseTransformer
from einfuehrung_mit_spam_1 import HandCraftedFeatureExtractor
from src.base.task import BaseTask


class Task(BaseTask):
    @property
    def unit(self):
        return 1

    @property
    def challenge(self):
        return 1

    def get_model(self):
        pipeline = Pipeline([
            ('feature_extraction', FeatureUnion([
                ('bag_of_words', TfidfVectorizer()),
                ('other_features', HandCraftedFeatureExtractor())])),
            #('feature_selection', SelectKBest(score_func=chi2)),
            ('sparse_to_dense', DenseTransformer()),
            #('normalization', StandardScaler()),
            ('classifier', GaussianNB())
            #('classifier', MLPClassifier(max_iter=5000, tol=1e-6))
        ], verbose=False)
        return pipeline

    def get_param_distribution(self):
        return {
            'feature_extraction__bag_of_words__ngram_range': [(1, 3)],
            'feature_selection__k': [20000],
            'classifier__hidden_layer_sizes': [(5, 10), (10, 10), (5, 5), (10, 5)]
        }

    def get_params(self):
        return {
            'feature_extraction__bag_of_words__ngram_range': (1, 3),
            #'feature_selection__k': 10000,
            #'classifier__hidden_layer_sizes': (10, 10, 10)
        }
