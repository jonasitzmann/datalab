#!/usr/bin/env python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


def plot_hyperparams(filename):
    df = pd.read_csv(filename)
    print(df.columns[0])
    for col in [col for col in df.columns if col not in ['score', 'Unnamed: 0']]:
        ax, fig = plt.subplots()
        ax = sns.violinplot(x=col, y='score', data=df)
    plt.show()


if __name__ == '__main__':
    plot_hyperparams('params_score.csv')


