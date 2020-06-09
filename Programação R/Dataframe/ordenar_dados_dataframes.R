nomes <- c("Hebe Camargo", "Silvio Santos", "Celsio Portioli","Gugu","Golias")
anoNascimento <- c(1929,1930,1967,1959,1929)
idade <- c(83,85,49,57,76)
sexo <- c("F","M","M","M","M")
falecido <- c(TRUE,FALSE,FALSE,FALSE,TRUE)
#---------------------------------------------------------------------------------
dfDados <- data.frame(nomes, anoNascimento,idade,sexo,falecido)
#---------------------------------------------------------------------------------

#Ordenar por idade
order(dfDados$idade) #Retorna um vetor de números (índice) organizados em ordem crescente
dfDadosIdade <- dfDados[order(dfDados$idade),] #Ele vai voltar os valores com as linhas ordenadas pela idade


#Ordenar por decrescimento
dfDados[order(dfDados$idade),] #Idade menor para a maior
dfDados[order(dfDados$idade, decreasing = TRUE),] #Idade maior para o menor