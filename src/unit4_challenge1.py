import numpy as np
from src.base.task import BaseTask
from scapy.all import rdpcap
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from sklearn.base import TransformerMixin
from sklearn.pipeline import Pipeline
from src.utils.utils import SavedDict
import matplotlib.pyplot as plt
from src.utils.utils import flatten
from src.utils.models import CNN
from skorch import NeuralNetClassifier
from skorch.callbacks import EarlyStopping
from torch.optim import Adam
import torch.nn as nn
import seaborn as sns
from sklearn.preprocessing import StandardScaler
from sklearn.decomposition import PCA
from sklearn.feature_selection import SelectKBest
from sklearn.feature_selection import chi2
from src.utils.utils import most_common
from sklearn.neural_network import MLPClassifier

class RawFeatureExtractor(TransformerMixin):
    def __init__(self, working_dir):
        super().__init__()
        self.train_path = working_dir
        self.json_path = working_dir + 'features.json'

    def fit(self, xs, ys=None):
        return self

    def transform(self, xs, ys=None):
        features = self.get_features_cached(xs)
        return features

    def get_features_cached(self, xs, verbose=False):
        features = []
        with SavedDict(self.json_path) as d:
            for idx, x in enumerate(xs):
                filename = self.train_path + x[0]
                if filename not in d.keys():
                    d[filename] = self.extract_features(filename)
                features.append(d[filename])
                if idx % 10 == 0 and verbose:
                    print('transformed {} of {}'.format(idx, len(xs)))
        return features

    def extract_features(self, filename):
        pcap = rdpcap(filename)
        features = dict()
        features['n_packets'] = len(pcap.res)
        src = []
        dst = []
        time = []
        size = []
        s_port = []
        d_port = []
        for pkt in pcap:
            if pkt.haslayer('UDP') or pkt.haslayer('TCP'):
                s_port.append(pkt.sport)
                d_port.append(pkt.dport)
            else:
                s_port.append(None)
                d_port.append(None)
            src.append(pkt.src)
            dst.append(pkt.dst)
            t = float(pkt.time)
            time.append(float(pkt.time))
            size.append(len(pkt.payload))
        features['src'] = src
        features['dst'] = dst
        features['time'] = time
        features['size'] = size
        features['s_port'] = s_port
        features['d_port'] = d_port
        return features


class ImageExtractor(TransformerMixin):
    def __init__(self, resolution=(61, 60), plot_stats=False, show=False):
        self.resolution = resolution
        self.max_duration = self.max_log_size = None
        self.plot_stats = plot_stats
        self.show = show

    def calc_position(self, duration, size):
        log_size = np.log(size)
        x = int(duration * self.resolution[0] / self.max_duration)
        y = int(log_size * self.resolution[1] / self.max_log_size)
        return x, y

    def fit(self, xs, ys=None):
        durations = np.array([sample['time'][-1] - sample['time'][0] for sample in xs])
        max_duration = np.mean(durations) + 0.5 * np.std(durations)
        sizes = np.array(flatten([sample['size'] for sample in xs]))
        sizes = np.log(sizes)
        max_size = np.mean(sizes) + np.std(sizes)
        self.max_log_size = max_size
        self.max_duration = max_duration
        if self.plot_stats:
            plt.gray()
            sns.distplot(durations)
            plt.axvline(max_duration)
            plt.show()
            sns.distplot(sizes)
            plt.axvline(max_size)
            plt.show()
        return self

    def calc_image(self, sample, show=False):
        image = np.zeros([2, *self.resolution], dtype=np.uint8)
        t0 = sample['time'][0]
        src0 = sample['src'][0]
        for time, size, src in zip(sample['time'], sample['size'], sample['src']):
            duration = time - t0
            pos = self.calc_position(duration=duration, size=size)
            channel = int(src == src0)
            if pos[0] < self.resolution[0] and pos[1] < self.resolution[1]:
                image[channel, pos[0], pos[1]] += 1
        if show:
            rgb_image = np.concatenate([image[0:2], np.zeros_like(image[0:1])])
            plt.imshow(rgb_image.swapaxes(0, 2))
            plt.show()
        return image

    def transform(self, xs, ys=None):
        images = [self.calc_image(x, show=self.show) for x in xs]
        return np.array(images, dtype=np.float).reshape([-1, 2, *self.resolution])


class HandCraftedFeatureExtractor(TransformerMixin):
    def __init__(self):
        super().__init__()

    def fit(self, xs, ys=None):
        return self

    def transform(self, raw_features, ys=None):
        transformed = [self.transform_sample(sample) for sample in raw_features]
        return transformed

    def transform_sample(self, sample):
        src_to_dircetion = {src: idx for idx, src in enumerate(set(sample['src']))}
        directions = list(map(lambda x: src_to_dircetion[x], sample['src']))
        sizes = [[], []]
        most_frequent_size = most_common(sample['size'])
        n_most_common = 0
        last_direction = None
        for direction, time, size in zip(directions, sample['time'], sample['size']):
            if size == most_frequent_size:
                n_most_common += 1
                continue
            if direction != last_direction:
                sizes[direction].append(0)
            sizes[direction][-1] += size
        return [
            most_frequent_size,
            sizes[1][0],
            sizes[0][0],
            len(sizes[0]),
            len(sizes[1]),
            sum(sizes[0]),
            sum(sizes[1]),
            sum(sizes[0]) / sum(sizes[1]),
            len(set(sizes[0])),
            len(set(sizes[1])),
            len(sizes),
            sum(flatten(sizes)),
            np.std(sizes[0]),
            np.std(flatten(sizes[1:])),
            np.std(flatten(sizes)),
            np.mean(flatten(sizes)),
        ]



class Task (BaseTask):
    def get_cnn_pipeline(self):
        net = NeuralNetClassifier(
            module=CNN,
            module__output_size=len(self.y_names.items()),
            optimizer=Adam,
            optimizer__lr=3e-3,
            optimizer__weight_decay=4e-3,
            criterion=nn.CrossEntropyLoss,
            callbacks=[EarlyStopping(patience=50)],
            max_epochs=1000,
        )
        pipeline = Pipeline([
            ('feature_extractor', RawFeatureExtractor(self.path)),
            ('image_extractor', ImageExtractor(show=False)),
            # ('onehot', OneHotEncoder()),
            # ('svm', SVC()),
            ('net', net)
        ])
        return pipeline

    def get_model(self):
        pipeline = Pipeline([
            ('raw_feature_extractor', RawFeatureExtractor(self.path)),
            ('statistics_extractor', HandCraftedFeatureExtractor()),
            ('normalization', StandardScaler()),
            ('classifier', RandomForestClassifier(n_estimators=100, max_depth=5, min_samples_split=8))
        ])
        return pipeline

    def get_param_distribution(self):
        return {
            'classifier__max_depth': [3, 5, 8, 12],
            'classifier__min_samples_split': [3, 5, 8, 12],
            'classifier__max_leaf_nodes': [10, 20, 50],
            'classifier__min_weight_fraction_leaf': [0, 0.1],
        }


    @property
    def train_data_link(self):
        return "https://www.sec.cs.tu-bs.de/~danarp/datalab/task1/1d633bf2651d511c7bcf4a3acb9c7cad.tar.gz"
    
    @property
    def test_data_link(self):
        return "https://www.sec.cs.tu-bs.de/~danarp/datalab/task1/d794d7747588a24838e1698ade4a9b98.tar.gz"

    @property
    def decode_data(self):
        return False

    @property
    def include_file_names(self):
        return True