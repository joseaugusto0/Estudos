nomes <- c("Hebe Camargo", "Silvio Santos", "Celsio Portioli","Gugu","Golias")
anoNascimento <- c(1929,1930,1967,1959,1929)
idade <- c(83,85,49,57,76)
sexo <- c("F","M","M","M","M")
falecido <- c(TRUE,FALSE,FALSE,FALSE,TRUE)
#---------------------------------------------------------------------------------
dfDados <- data.frame(nomes, anoNascimento,idade,sexo,falecido)


#Pegar nome e idade de pessoas acima de 50 anos
x<- dfDados$idade>50
dfDados[x, c(1,3)]
#Este é o jeito mais difícil

#Função Subset!!
#subset(dataframe desejado, lógica desejada)
subset(dfDados, idade >50) #Mostra a linha inteira de quem tem idade > 50
subset(dfDados, idade>50, select=c(nomes,idade)) #Mostra as colunas nome e idade de quem mais de 50 anos