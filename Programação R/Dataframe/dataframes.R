#Dataframes são estruturas de dados que podem armazenar vários tipos de dados (int, character)
#Uma mesma coluna tem de ser apenas de 1 tipo, mas uma coluna pode ter tipo diferente de outra

nomes <- c("Hebe Camargo", "Silvio Santos", "Celsio Portioli","Gugu","Golias")
anoNascimento <- c(1929,1930,1967,1959,1929)
idade <- c(83,85,49,57,76)
sexo <- c("F","M","M","M","M")
falecido <- c(TRUE,FALSE,FALSE,FALSE,TRUE)

#Estrutura criação de dataframe
#data.frame(vetor1, vetor2,vetor3,...)
dfDados <- data.frame(nomes, anoNascimento,idade,sexo,falecido)

#Str mostra o tipo de cada coluna
#Nome vira factor com 4 levels, e sexo vira factor com 2 levels, o resto continua em seu tipo original
str(dfDados)
dfDados

#Dataframe é utilizado para observações, mais fácil de visualizar os dados