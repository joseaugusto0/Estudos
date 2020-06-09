numeros <- c(1:6)
numeros

#Se for nomeado, pode usar o nome da coluna como index 
names(numeros) <- c("Num1","Num2","Num3","Num4","Num5","Num6")
numeros
numeros["Num2"]

#Vetor de lógicos
numeros[c(TRUE,TRUE,TRUE,FALSE,FALSE,FALSE)] #mostra só os 3 primeiros valores

#Vetor de chaves
numeros[c(1,3,5)] #Mostra o primeiro, terceiro e quinto valores