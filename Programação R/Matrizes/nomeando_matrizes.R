vetornome<- c("Z�","Jo�o","Fabricio")
vetornum <- c(3,2,5)
matriz<-cbind(vetornome,vetornum)


vetorColunas <- c("Nomes", "Quantidade")
vetorLinhas <- c("�ltimo","Pen�ltimo","Antepen�ltimo")

#Fun��o nomear colunas
#colnames(nome da matriz)<- nome do vetor com os nomes
colnames(matriz)<-vetorColunas

#Fun��o nomear linhas
#rownames(nome da matriz) <- nome do vetor com os nomes
rownames(matriz)<-vetorLinhas
