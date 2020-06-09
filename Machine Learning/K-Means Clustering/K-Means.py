import numpy as np
import sklearn
from sklearn.preprocessing import scale
from sklearn.datasets import load_digits
from sklearn.cluster import KMeans
from sklearn import metrics
import time

digits = load_digits()

#scale serve para transpor os valores em um intervalor de -1 até 1 --> Salvar tempo computacionals
data = scale(digits.data)

#Pegar as Labels do dataset
y = digits.target

#Criar os centroids, os pontos de separação
k = len(np.unique(y))

#Aqui ele irá pegar a quantidade de valores que queremos classificar e suas features
samples, features = data.shape

#Essa função será para pegar a acuracidade do código
#Iremos dar o classificador estimator, que irá pegar o valor data, e assim pegar um score de acuracidade
def bench_k_means(estimator, name, data):
    estimator.fit(data)
    print('%-9s\t%.2fs\t%i\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f'
          % (name, estimator.inertia_,
          metrics.homogeneity_score(y, estimator.labels_),
          metrics.completeness_score(y, estimator.labels_),
          metrics.v_measure_score(y, estimator.labels_),
          metrics.adjusted_rand_score(y, estimator.labels_),
          metrics.adjusted_mutual_info_score(y,  estimator.labels_),
          metrics.silhouette_score(data, estimator.labels_,metric='euclidean')))

#Criando o classifier
#n_cluster = Quantas centroids queremos inserir
# init = Aonde os centroids irão se posicionar inicialmente 
#n_init = Quantas vezes o classifier vai rodar com diferentes centroids
clf = KMeans(n_clusters=k, init="random", n_init=10)

bench_k_means(clf, "1", data)