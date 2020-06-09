nomes <- c("Hebe Camargo", "Silvio Santos", "Celsio Portioli","Gugu","Golias")
anoNascimento <- c(1929,1930,1967,1959,1929)
idade <- c(83,85,49,57,76)
sexo <- c("F","M","M","M","M")
falecido <- c(TRUE,FALSE,FALSE,FALSE,TRUE)
#---------------------------------------------------------------------------------
dfDados <- data.frame(nomes, anoNascimento,idade,sexo,falecido)


#Selecionar com estruturas de maior, menor, igual
dfDados$anoNascimento > 1960 #Retorno em T ou F quais são maiores que 1960
dfDados[dfDados$anoNascimento>1960,] #Retorno a linha inteira que é maior que 1960
dfDados[dfDados$sexo =="F",] #Retorna a linha inteira que apresenta sexo==F
dfDados[dfDados$sexo !="F",] #Retorna a linha inteira que apresenta sexo diferente de F

dfDados[dfDados$sexo=="M" & dfDados$idade >50,] #Verificação com 2 parâmetros
