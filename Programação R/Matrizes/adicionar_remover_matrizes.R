vetornome<- c("Zé","João","Fabricio")
vetornum <- c(3,2,5)
matriz<-cbind(vetornome,vetornum)
vetorColunas <- c("Nomes", "Quantidade")
vetorLinhas <- c("Último","Penúltimo","Antepenúltimo")
colnames(matriz)<-vetorColunas
rownames(matriz)<-vetorLinhas

#Criando matriz com novos valores
vetornovosnome <- c("Gui","Victor","Jonathan")
vetornovosnum <- c(1,6,4)
matriz2 <- cbind(vetornovosnome,vetornovosnum)
colnames(matriz2)<-vetorColunas
rownames(matriz2)<-vetorLinhas


#----------------------------------------------------------------
#Juntando os dois em uma matriz só
matriz3 <- rbind(matriz,matriz2)
matriz3


#Remover um dos valores
matriz3 <- matriz3[-2,] #Remove a segunda linha inteira
matriz3 <- matriz3[,-2] #Remove a segunda coluna 
matriz3[c(-1,-3,-5),] #Remove a primeira, a terceira e a quinta linha
matri3[-c(1,3,5),] #Remove a primeira, terceira e a quinta linha

#Adicionar uma coluna
vetorcolunas2 <- c(4,6,7,4,5)
matriz3 <- cbind(matriz3, vetorcolunas2)

