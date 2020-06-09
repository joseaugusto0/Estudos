library (stringr)

#Escolher diretório dos dados. OBS: usar // ao invés de \
local1<-"D://Estágio//Dados Sensores//Placa Nova//DADOS2.TXT"

#Vai ler as linhas presentes no arquivo
linha<- readLines(local1)



#Extrair de todas as linhas a informação que tenha o formato 1T (numero).(numero)
T1<-substring(linha, 2,6)
#Troca a forma decimal de ponto para vírgula
T1<-gsub("\\.",",",T1)

T2<-substring(linha, 8,12)
T2<-gsub("\\.",",",T2)

T3<-substring(linha, 14,18)
T3<-gsub("\\.",",",T3)

T4<-substring(linha, 20,24)
T4<-gsub("\\.",",",T4)

T5<-substring(linha, 26,30)
T5<-gsub("\\.",",",T5)


T6<-substring(linha, 32,36)
T6<-gsub("\\.",",",T6)

T7<-substring(linha, 38,42)
T7<-gsub("\\.",",",T7)
#irá juntar lado a lado todos os vetores criados com as informações
Final<-cbind(T1, T2, T3,T4,T5,T6,T7)
#Função que cria o arquivo csv com as tabelas
#col.names = colocar Nome de colunas (index)
#sep= separação das tabelas do arquivo csv
#na=" o que colocar em valores NA presentes no arquivo
#dec= Modo decimal utilizado
#row_names= colocar nome de linhas (um index)
write.table(Final, "D://Estágio//Dados Sensores//Placa Nova//Dados2 10-06.csv",
            col.names = T, sep=";", na="NA",dec=",",row.names = F)
