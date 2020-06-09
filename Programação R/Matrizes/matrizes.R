#Função matriz
#matrix(data(tipo de valor), nrow=[qt. Linhas], ncol= [qt. Colunas], byrow = [F ou T], dimnames=[nomear os valores])
#duvida --> ?matrix

matrix(c(1:100)) #1 coluna e 100 linhas
matrix(c(1:100),5) #20 colunas e 5 linhas
matrix(c(1:100), ncol=5) #5 colunas e 20 linhas

#Atribuindo matriz para alguma variável
mat<- matrix(c(1:100),ncol=5)
mat



#Matriz com byrow= T ou F
matrix(c(1:10), nrow=5, byrow=T) #Organiza os valores horizontalmente
matrix(c(1:10), nrow=5, byrow=F) #Organiza os valores verticalmente