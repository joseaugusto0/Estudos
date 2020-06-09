#https://techwithtim.net/tutorials/machine-learning-python/svm-2/
import sklearn
from sklearn import datasets
#SVM é o classifier
from sklearn import svm
from sklearn import metrics
from sklearn.neighbors import KNeighborsClassifier

cancer = datasets.load_breast_cancer()

#print(cancer.feature_names)
#print(cancer.target_names)

x = cancer.data
y = cancer.target

x_train, x_test, y_train, y_test = sklearn.model_selection.train_test_split(x,y,test_size=0.2)

print(x_train, y_train)
classes = ['Malígno','Benígno']

#Este é o support vector que irá dividir os diferentes pontos 
#kernel = define o tipo de kernel que será usado (kernel é a função criada para gerar a dimensão acima a do dataset)
#Caso tu coloque uma poly de grau 3, ele irá demorar mais para realizar o treinamento, porém pode ter uma acuracidade maior
#C é a quantidade da margem superior e inferior
clf = svm.SVC(kernel="linear", C=1)
clf.fit(x_train,y_train)

y_pred = clf.predict(x_test)

acc = metrics.accuracy_score(y_test, y_pred)
print(acc)
