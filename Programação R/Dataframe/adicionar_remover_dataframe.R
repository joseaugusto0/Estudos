nomes <- c("Hebe Camargo", "Silvio Santos", "Celsio Portioli","Gugu","Golias")
anoNascimento <- c(1929,1930,1967,1959,1929)
idade <- c(83,85,49,57,76)
sexo <- c("F","M","M","M","M")
falecido <- c(TRUE,FALSE,FALSE,FALSE,TRUE)
#---------------------------------------------------------------------------------
dfDados <- data.frame(nomes, anoNascimento,idade,sexo,falecido)
#---------------------------------------------------------------------------------
nomesColunas <- c("Nome","Nascimento","Idade","Sexo","Falecido?","Ainda no SBT?")
names(dfDados) <- nomesColunas
#---------------------------------------------------------------------------------

#Criando a linha a ser adicionada
novo <- data.frame("Tiririca",1965,51,"M",F)

#AS NOMEAÇÕES TEM DE SER IGUAIS!!!
names(novo) <- nomesColunas

#Adicionar linha!!
dfDados <- rbind(dfDados,novo)

#Adicionar colunas
dfDados <- cbind(dfDados, c(FALSE, TRUE, TRUE, FALSE, FALSE, FALSE))
names(dfDados) <- nomesColunas
