nomes <- c("Hebe Camargo", "Silvio Santos", "Celsio Portioli","Gugu","Golias")
anoNascimento <- c(1929,1930,1967,1959,1929)
idade <- c(83,85,49,57,76)
sexo <- c("F","M","M","M","M")
falecido <- c(TRUE,FALSE,FALSE,FALSE,TRUE)
#---------------------------------------------------------------------------------
dfDados <- data.frame(nomes, anoNascimento,idade,sexo,falecido)
#---------------------------------------------------------------------------------

#Selecionar valores
dfDados[,1] #Ele vai mostrar o Factor dos nomes, retorna a primeira coluna
dfDados[4,1] #Mostra os dados presentes na posição 4,1 

dfDados[3,"sexo"] #Seleciono a coluna que desejo pelo nome da mesma

dfDados[dfDados[,"falecido"],] #Traz os valores que estão com "TRUE"

#Utilizando Cifrão!!
dfDados$sexo #Apresenta a coluna sexo inteira!

dfDados$nomes[1] #Apresenta o primeiro valor da coluna nome, retorna um FACTOR, NESSE CASO!!





