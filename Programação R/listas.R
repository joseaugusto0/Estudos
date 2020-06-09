nomes <- c("Hebe Camargo", "Silvio Santos", "Celsio Portioli","Gugu","Golias")
anoNascimento <- c(1929,1930,1967,1959,1929)
idade <- c(83,85,49,57,76)
sexo <- c("F","M","M","M","M")
falecido <- c(TRUE,FALSE,FALSE,FALSE,TRUE)
#---------------------------------------------------------------------------------
dfDados <- data.frame(nomes, anoNascimento,idade,sexo,falecido)

#----------------------------------------------------------------------------------------
#Lista eu posso colocar vários tipos de dados ao mesmo tempo

vetornum <- c(1:12)

mat <- matrix(1:12,ncol=4)


#Criar Lista
#list(dado1,dado2,dado3,....)
lista <- list(vetornum,mat,dfDados)

lista[1] #Seleciono o vetor pelo índice dele, retornando um list
lista[[1]] #Nesse caso, ele vai retornar um vector, pois a segunda chave força a retornar o VALOR