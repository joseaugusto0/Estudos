vetor1 <- c("BR","BR","BR","ARG","ARG","ARG","PAR","PAR","CHI")

#Criando o factor
factorVetor1 <- factor(vetor1)
factorVetor1 #Ele cria os Levels, os valores presentes, separados, sem repeti��o

str(factorVetor1) #Ele fala quantos levels, quais s�o, e suas posi��es 
summary(factorVetor1) #Ele soma os valores repetidos, e os separa