import pandas as pd
import numpy as np
import cupy as cp
import sklearn
from sklearn import linear_model
from sklearn.utils import shuffle
import matplotlib.pyplot as pyplot
import pickle
from matplotlib import style


#Lendo o data-set
data =  pd.read_csv("student-mat.csv", sep=";")


#Selecionando os atributos presentes no dataset https://archive.ics.uci.edu/ml/datasets/Student+Performance
data=data[["G1","G2","G3","studytime", "failures","absences"]]

#Selecionando o que queremos prever com o machine learning
#Com base em G1,G2,studytime,...., iremos prever G3
predict = "G3"

#Cria um array numpy e retira o G3 para o treinamento da rede 
#O 1 é para falar que é uma coluna, caso 0 = fala que é um índice (ou linha)
X = np.array(data.drop([predict], 1))

#Cria um array numpy com apenas o que queremos deduzir
y = np.array(data[predict])

#Foi modificado aqui pra cima isso para ele não ficar pegando valores diferentes toda vez
x_train,x_test,y_train,y_test = sklearn.model_selection.train_test_split(X,y, test_size=0.1)


#Criaremos um parâmetro de melhor acuracidade
#Treinamento em 100 modelos diferentes em qual é melhor
"""best = 0
for _ in range(100):
    linear = linear_model.LinearRegression()
    
    #Ele irá criar uma linha que passe pelos valores CERTOS
    linear.fit(x_train,y_train)

    #Ele irá retornar a acuracidade da linha criada com o teste pego
    acc = linear.score(x_test,y_test)
    print(acc)

    if acc>best:

        best = acc
        #Salvando o modelo - Irá salvar a reta pega em forma de um arquivo, para não ter de treinar toda vez que é aberto
        with open("studentmodel.pickle","wb") as f:
            pickle.dump(linear,f)"""

#Carregando o modelo já salvo
pickle_in = open("studentmodel.pickle","rb")
linear = pickle.load(pickle_in)

print("Coeficient: ", linear.coef_)
print("Intercept: ", linear.intercept_)

#Realizar uma série de predicts com a reta gerada (retornará um array)
predictions = linear.predict(x_test)

#Plotar G3 em função de G1
p= 'G1'
style.use("ggplot")
pyplot.scatter(data[p],data["G3"])
pyplot.xlabel(p)
pyplot.ylabel("Final Grade")
pyplot.show()



