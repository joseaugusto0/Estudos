vetornome<- c("Zé","João","Fabricio")
vetornum <- c(3,2,5)
matriz<-cbind(vetornome,vetornum)
vetorColunas <- c("Nomes", "Quantidade")
vetorLinhas <- c("Último","Penúltimo","Antepenúltimo")
colnames(matriz)<-vetorColunas
rownames(matriz)<-vetorLinhas
matriz
#--------------------------------------------------------
#Criando matriz com novos valores
vetornovosnome <- c("Gui","Victor","Jonathan")
vetornovosnum <- c(1,6,4)
matriz2 <- cbind(vetornovosnome,vetornovosnum)
colnames(matriz2)<-vetorColunas
rownames(matriz2)<-vetorLinhas
#--------------------------------------------------------
matriz3 <- rbind(matriz,matriz2)
matriz3
#--------------------------------------------------------
vetorcolunas2 <- c(4,6,7,4,5,5)
matriz3 <- cbind(matriz3, vetorcolunas2)
#--------------------------------------------------------
#Nomeando novamente
colnames(matriz3) <-c("Nomes","Quantidade 1", "Quantidade 2")
rownames(matriz3) <- c("1º","2º","3º","4º","5º", "6º")

#---------------------------------------------------------------------
#colSums e rowSums
somaquantidade1 <- sum(as.integer(matriz3[,2])) #Soma os valores na coluna 2
somaquantidade2 <- sum(as.integer(matriz3[,3])) #Soma os valores na coluna 3
matriz3 <- rbind(matriz3, c("Total",somaquantidade1,somaquantidade2)) #Adicionei uma linha com as somas das colunas 2 e 3





