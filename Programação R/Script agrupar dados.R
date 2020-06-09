  library (stringr)
  
  #Escolher diretório dos dados. OBS: usar // ao invés de \
  local1<-"D://Estágio//Dados Sensores//Placa Nova//dados manha 7 de junho.TXT"
  
  #Vai ler as linhas presentes no arquivo
  linha<- readLines(local1)
  
  #Extrair de todas as linhas a informação que tenha o formato (numero)(numero)/(numero)(numero)
  Data<-str_extract(linha, '[:alnum:][:alnum:]+/[:alnum:][:alnum:]')
  Data<-Data[!is.na(Data)]
  
  #Extrair de todas as linhas a informação que tenha o formato (numero)(numero):(numero)(numero)
  Horario<-str_extract(linha, '[:alnum:][:alnum:]+:[:alnum:][:alnum:]')
  Horario<-Horario[!is.na(Horario)]
  
  #Extrair de todas as linhas a informação que tenha o formato 1T (numero).(numero)
  T1<-str_extract(linha, '1T [:alnum:][:alnum:]+.[:alnum:][:alnum:]|1T [:alnum:]+.[:alnum:][:alnum:]|1T [:alnum:]+.[:alnum:]|1T [:alnum:][:alnum:]+.[:alnum:]')
  #Ele retira os dados ditos como NA e só colocar um dado vazio
  T1<- T1 %>% na.omit()
  #Substitui os caracteres 1T por nada
  T1<-str_replace(T1,"1T ","")
  #Troca a forma decimal de ponto para vírgula
  T1<-gsub("\\.",",",T1)
  
  T2<-str_extract(linha, '2T [:alnum:][:alnum:]+.[:alnum:][:alnum:]|2T [:alnum:]+.[:alnum:][:alnum:]')
  T2<- T2 %>% na.omit()
  T2<-str_replace(T2,"2T ","")
  T2<-gsub("\\.",",",T2)
  
  
  T3<-str_extract(linha, '3T [:alnum:][:alnum:]+.[:alnum:][:alnum:]|3T [:alnum:]+.[:alnum:][:alnum:]')
  T3<- T3 %>% na.omit()
  T3<-str_replace(T3,"3T ","")
  T3<-gsub("\\.",",",T3)
  
  T4<-str_extract(linha, '4T [:alnum:][:alnum:]+.[:alnum:][:alnum:]|4T [:alnum:]+.[:alnum:][:alnum:]')
  T4<- T4 %>% na.omit()
  T4<-str_replace(T4,"4T ","")
  T4<-gsub("\\.",",",T4)
  
  T5<-str_extract(linha, '5T [:alnum:][:alnum:]+.[:alnum:][:alnum:]|5T [:alnum:]+.[:alnum:][:alnum:]')
  T5<- T5 %>% na.omit()
  T5<-str_replace(T5,"5T ","")
  T5<-gsub("\\.",",",T5)
  
  T6<-str_extract(linha, '6T [:alnum:][:alnum:]+.[:alnum:][:alnum:]|6T [:alnum:]+.[:alnum:][:alnum:]')
  T6<- T6 %>% na.omit()
  T6<-str_replace(T6,"6T ","")
  T6<-gsub("\\.",",",T6)
  
  T7<-str_extract(linha, '7T [:alnum:][:alnum:]+.[:alnum:][:alnum:]|7T [:alnum:]+.[:alnum:][:alnum:]|7T [:alnum:][:alnum:]+.')
  T7<- T7 %>% na.omit()
  T7<-str_replace(T7,"7T ","")
  T7<-gsub("\\.",",",T7)
  
  
  #irá juntar lado a lado todos os vetores criados com as informações
  Final<-cbind(Data,Horario,T1,T2,T3,T4,T5,T6,T7)
  #Função que cria o arquivo csv com as tabelas
  #col.names = colocar ep=";", na="NA",dec=",",row.names = F)
  Nome de colunas (index)
  #sep= separação das tabelas do arquivo csv
  #na=" o que colocar em valores NA presentes no arquivo
  #dec= Modo decimal utilizado
  #row_names= colocar nome de linhas (um index)
  write.table(Final, "D://Estágio//Dados Sensores//Placa Nova//Dados 07-06.csv",
              col.names = T, s