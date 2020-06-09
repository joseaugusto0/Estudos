#https://techwithtim.net/tutorials/machine-learning-python/k-nearest-neighbors-2/
#Você precisa adicionar a primeira linha no .data, que será o "cabeçalho"
import sklearn
from sklearn.utils import shuffle
from sklearn.neighbors import KNeighborsClassifier
import pandas as pd
import numpy as np
from sklearn import linear_model,preprocessing

data = pd.read_csv("car.data")
print(data.head())

#O dataset possui valores que não são número, então precisamos convertê-los de forma numérica, por exemplo, vhigh = 4
#Label Enconder irá pegar os valores e separá-los em classes https://scikit-learn.org/stable/modules/generated/sklearn.preprocessing.LabelEncoder.html   
le = preprocessing.LabelEncoder()
#Está pegando a coluna buying, e transformando as diferentes classes que achou (vhigh,high,med...) e tranformando em integer (0,1,2,3)
buying = le.fit_transform(list(data["buying"]))
maint = le.fit_transform(list(data["maint"]))
doors = le.fit_transform(list(data["doors"]))
persons = le.fit_transform(list(data["persons"]))
lug_boot = le.fit_transform(list(data["lug_boot"]))
safety = le.fit_transform(list(data["safety"]))
cls = le.fit_transform(list(data["class"]))


#Escolhendo o que queremos descobrir
predict = "class"

#Aqui ele estará juntando todos os atrivutos, formando uma matriz
X = list(zip(buying,maint,doors,persons,lug_boot,safety))
y = list(cls)

x_train, x_test, y_train, y_test = sklearn.model_selection.train_test_split(X,y, test_size=0.1)

#Irá criar o modelo de KNeighbors, e o parâmetros passado é a quantidade de pontos vizinhos a serem selecionados
model = KNeighborsClassifier(n_neighbors=9)

model.fit(x_train, y_train)
acc = model.score(x_test,y_test)
print(acc)
predicted = model.predict(x_test)

#Setar o nome das classes de saída
names = ["unacc", "acc", "good", "vgood"]

for x in range(len(predicted)):
    print("Predicted: ", names[predicted[x]], "Data: ",x_test[x], "Actual: ",names[y_test[x]] )
    #Ver quais os vizinhos mais próximos e as distâncias deles
    n = model.kneighbors([x_test[x], 9, True])
    print("N:",n)