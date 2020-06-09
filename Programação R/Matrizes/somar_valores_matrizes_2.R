vetornome<- c("Zé","João","Fabricio","Gui","Victor","Jonathan")
vetornum <- c(3,2,5,1,6,4)
vetorcolunas2 <- c(4,6,7,4,5,5)


matriz <- cbind(vetornum,vetorcolunas2)
rownames(matriz)<-vetornome
colnames(matriz) <-c("Quantidade 1", "Quantidade 2")

#Somar colunas diretamente, pois valores são inteiros
colSums(matriz) #Mostra as somas, individualmente, de cada colunas

#Somar linhas diretamente, pois valores são inteiros
rowSums(matriz) #Mostra as somas, individualmente, de cada linha


