vetor1 <- c("BR","BR","BR","ARG","ARG","ARG","PAR","PAR","CHI")

#Criando o factor
factorVetor1 <- factor(vetor1)
factorVetor1 #Ele cria os Levels, os valores presentes, separados, sem repetição

str(factorVetor1) #Ele fala quantos levels, quais são, e suas posições 
summary(factorVetor1) #Ele soma os valores repetidos, e os separa