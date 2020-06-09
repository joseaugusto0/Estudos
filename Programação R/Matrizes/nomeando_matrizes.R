vetornome<- c("Zé","João","Fabricio")
vetornum <- c(3,2,5)
matriz<-cbind(vetornome,vetornum)


vetorColunas <- c("Nomes", "Quantidade")
vetorLinhas <- c("Último","Penúltimo","Antepenúltimo")

#Função nomear colunas
#colnames(nome da matriz)<- nome do vetor com os nomes
colnames(matriz)<-vetorColunas

#Função nomear linhas
#rownames(nome da matriz) <- nome do vetor com os nomes
rownames(matriz)<-vetorLinhas
