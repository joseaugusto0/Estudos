library(stringr)


local1<-"D://Estágio//Dados Sensores//Dados 2//bme1.txt"
local2<-"D://Estágio//Dados Sensores//Dados 2//bme2.txt"
local3<-"D://Estágio//Dados Sensores//Dados 2//bme3.txt"

for(i in 1:3){
  if(i==1){
    linha<-readLines(local1)
    linha<-linha[-1:-13]
   
    Temperatura_T1<-str_extract(linha, 'a: [:alnum:][:alnum:]+.[:alnum:][:alnum:]|a: [:alnum:]+.[:alnum:][:alnum:]')
    Temperatura_T1<- Temperatura_T1 %>% na.omit()
    Temperatura_T1<-str_replace(Temperatura_T1,"a: ","")
    Temperatura_T1<-gsub("\\.",",",Temperatura_T1)
    
    Umidade_U1<-str_extract(linha, 'e: [0-9][0-9].[0-9][0-9]|e: [0-9].[0-9][0-9]|e: [0-9][0-9][0-9].[0-9][0-9]|e: [0-9].[0-9][0-9]')
    Umidade_U1<-Umidade_U1[!is.na(Umidade_U1)]
    Umidade_U1<-str_replace(Umidade_U1,"e: ","")
    Umidade_U1<-gsub("\\.",",",Umidade_U1)
    
    linha2<-readLines("D://Estágio//Dados Sensores//Dados 2//media.txt")
    linha2<-linha2[-1:-13]
    
    Temperatura_Media<-str_extract(linha2,'a: [:alnum:][:alnum:]+.[:alnum:][:alnum:]|a: [:alnum:]+.[:alnum:][:alnum:]')
    Temperatura_Media<-Temperatura_Media[!is.na(Temperatura_Media)]
    Temperatura_Media<-str_replace(Temperatura_Media,"a: ","")
    Temperatura_Media<-gsub("\\.",",",Temperatura_Media)
    
    Umidade_Media<-str_extract(linha2,'e: [0-9][0-9].[0-9][0-9]|e: [0-9].[0-9][0-9]|e: [0-9][0-9][0-9].[0-9][0-9]|e: [0-9].[0-9][0-9]')
    Umidade_Media<-Umidade_Media[!is.na(Umidade_Media)]
    Umidade_Media<-str_replace(Umidade_Media,"e: ","")
    Umidade_Media<-gsub("\\.",",",Umidade_Media)
    
  }else if(i==2){
    linha<-readLines(local2)
    linha<-linha[-1:-13]
    
    Temperatura_T2<-str_extract(linha, 'a: [:alnum:][:alnum:]+.[:alnum:][:alnum:]|a: [:alnum:]+.[:alnum:][:alnum:]')
    Temperatura_T2<- na.omit(Temperatura_T2)
    Temperatura_T2<-str_replace(Temperatura_T2,"a: ","")
    Temperatura_T2<-gsub("\\.",",",Temperatura_T2)
    
    Umidade_U2<-str_extract(linha, 'e: [0-9][0-9].[0-9][0-9]|e: [0-9].[0-9][0-9]|e: [0-9][0-9][0-9].[0-9][0-9]|e: [0-9].[0-9][0-9]')
    Umidade_U2<-Umidade_U2[!is.na(Umidade_U2)]
    Umidade_U2<-str_replace(Umidade_U2,"e: ","")
    Umidade_U2<-gsub("\\.",",",Umidade_U2)
    
  } else if(i==3){
    linha<-readLines(local3)
    linha<-linha[-1:-13]
    
    Temperatura_T3<-str_extract(linha, 'a: [:alnum:][:alnum:]+.[:alnum:][:alnum:]|a: [:alnum:]+.[:alnum:][:alnum:]')
    Temperatura_T3<-Temperatura_T3 %>% na.omit()
    Temperatura_T3<-str_replace(Temperatura_T3,"a: ","")
    Temperatura_T3<-gsub("\\.",",",Temperatura_T3)
    
    Umidade_U3<-str_extract(linha, 'e: [0-9][0-9].[0-9][0-9]|e: [0-9].[0-9][0-9]|e: [0-9][0-9][0-9].[0-9][0-9]')
    Umidade_U3<-Umidade_U3[!is.na(Umidade_U3)]
    Umidade_U3<-str_replace(Umidade_U3,"e: ","")
    Umidade_U3<-gsub("\\.",",",Umidade_U3)
  }
  

  
}

local1<-"D://Estágio//Dados Sensores//Dados 2//bme1.txt"
linha<-readLines(local1)
linha <- linha[-1:-9]
Data<-str_extract(linha, '[:alnum:][:alnum:]+/[:alnum:][:alnum:]')
Data<-Data[!is.na(Data)]

Horario<-str_extract(linha, '[:alnum:][:alnum:]+:[:alnum:][:alnum:]')
Horario<-Horario[!is.na(Horario)]

Final<-cbind(Data,Horario,Temperatura_T1,Temperatura_T2,Temperatura_T3,Umidade_U1,Umidade_U2,Umidade_U3,Temperatura_Media,Umidade_Media)
write.table(Final, "D://Estágio//Dados Sensores//Dados 2//Dados.csv",
            col.names = T, sep=";", na="NA",dec=",",row.names = F)


