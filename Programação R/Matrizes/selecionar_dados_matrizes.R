vetornome<- c("Z�","Jo�o","Fabricio")
vetornum <- c(3,2,5)
matriz<-cbind(vetornome,vetornum)
vetorColunas <- c("Nomes", "Quantidade")
vetorLinhas <- c("�ltimo","Pen�ltimo","Antepen�ltimo")
colnames(matriz)<-vetorColunas
rownames(matriz)<-vetorLinhas


#Sele��o de valores 
matriz[1,1] #m�todo de endere�amento direto

#Sele��o de linhas completas
matriz[1,]

#Sele��o de colunas completas
matriz[,1]

#Tipos de retorno
class(matriz[1,1]) #Volta um caractere
class(matriz[1,]) #Volta um caractere
is.vector(matriz[1,]) #Ele afirma que � um vetor

