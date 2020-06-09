vetornome<- c("Zé","João","Fabricio")
vetornum <- c(3,2,5)
matriz<-cbind(vetornome,vetornum)
vetorColunas <- c("Nomes", "Quantidade")
vetorLinhas <- c("Último","Penúltimo","Antepenúltimo")
colnames(matriz)<-vetorColunas
rownames(matriz)<-vetorLinhas


#Seleção de valores 
matriz[1,1] #método de endereçamento direto

#Seleção de linhas completas
matriz[1,]

#Seleção de colunas completas
matriz[,1]

#Tipos de retorno
class(matriz[1,1]) #Volta um caractere
class(matriz[1,]) #Volta um caractere
is.vector(matriz[1,]) #Ele afirma que é um vetor

