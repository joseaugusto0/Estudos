library(DBI) #Precisa deixar ativa a biblioteca DBI

con <- dbConnect(RMySQL::MySQL(),
                 dbname="Nome da base de dados",
                 host = "localhost",
                 user = "root",
                 password = "",
                 port = "" #Caso tenha, se n�o tiver, n�o precisa nem colocar como par�metros
                 )



dbDisconnect(con)