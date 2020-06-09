library(DBI) #Precisa deixar ativa a biblioteca DBI

con <- dbConnect(RMySQL::MySQL(),
                 dbname="Nome da base de dados",
                 host = "localhost",
                 user = "root",
                 password = "",
                 port = "" #Caso tenha, se não tiver, não precisa nem colocar como parâmetros
                 )



dbDisconnect(con)