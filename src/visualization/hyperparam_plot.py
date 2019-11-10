#!/usr/bin/env python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import sys

def plot_hyperparams(filename):
    df = pd.read_csv(filename)
    print(df.columns[0])
    for col in [col for col in df.columns if col not in ['score', 'Unnamed: 0']]:
        ax, fig = plt.subplots()
        ax = sns.violinplot(x=col, y='score', data=df)
    plt.show()


if __name__ == '__main__':
    path = 'params_score.csv'
    if len(sys.argv) > 1:
        path = sys.argv[1]
    plot_hyperparams(path)


