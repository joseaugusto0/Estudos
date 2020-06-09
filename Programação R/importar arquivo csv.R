#CSV é a extensão excel!!

caminho <- file.path("D:","Estágio","tabela1.csv")

#Parâmetros read.table
#read.table(qual o arquivo, header decide se a primeira linha é o cabeçalho, sep decide qual o separador, stringAsFactors tratar valores repetidos como Factor ou texto?)


dados <- read.table(caminho, header=TRUE, sep = ";", stringsAsFactors = FALSE)

#Função para tirar media = mean
mean(dados$pontos)

#nomear colunas ao importar arquivo
#Método 1
nomeColunas <- c("Times","Pontos","Jogos","Vitórias","Empates","Derrotas")
names(dados) <- nomeColunas


#Método 2
dados <- read.table(caminho, 
                    header=TRUE, 
                    sep = ";",
                    col.names=nomeColunas,
                    stringsAsFactors = FALSE)





