#CSV � a extens�o excel!!

caminho <- file.path("D:","Est�gio","tabela1.csv")

#Par�metros read.table
#read.table(qual o arquivo, header decide se a primeira linha � o cabe�alho, sep decide qual o separador, stringAsFactors tratar valores repetidos como Factor ou texto?)


dados <- read.table(caminho, header=TRUE, sep = ";", stringsAsFactors = FALSE)

#Fun��o para tirar media = mean
mean(dados$pontos)

#nomear colunas ao importar arquivo
#M�todo 1
nomeColunas <- c("Times","Pontos","Jogos","Vit�rias","Empates","Derrotas")
names(dados) <- nomeColunas


#M�todo 2
dados <- read.table(caminho, 
                    header=TRUE, 
                    sep = ";",
                    col.names=nomeColunas,
                    stringsAsFactors = FALSE)





