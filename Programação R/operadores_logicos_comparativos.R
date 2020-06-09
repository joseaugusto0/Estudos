nomes <- c("Hebe Camargo", "Silvio Santos", "Celsio Portioli","Gugu","Golias")
anoNascimento <- c(1929,1930,1967,1959,1929)
idade <- c(83,85,49,57,76)
sexo <- c("F","M","M","M","M")
falecido <- c(TRUE,FALSE,FALSE,FALSE,TRUE)
#---------------------------------------------------------------------------------
dfDados <- data.frame(nomes, anoNascimento,idade,sexo,falecido)

#----------------------------------------------------------------------------------------

#Comparadores lógicos existentes:
#Igual (==), Diferente (!=), Maior (>), Menor (<)

dfDados$anoNascimento[1] > dfDados$anoNascimento[2]