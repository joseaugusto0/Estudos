library("xlsx")
x<-1
y<-1

#options(java.parameters = "-Xmx2048m")  ## memory set to 2 GB

Temperatura<-1:4
Data<-c("")


#Pegar as Temperaturas no XLS
Temp <- read.table("D:\\Estágio\\Organização Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.csv","DF_A001_BRASILIA_fornecimento_1", skip=10,header=TRUE,sep=";")



#Passando os valores de temperatura para um vetor
for(i in 1:5354){
  for(j in 2:25){
    Temperatura[y] <- as.vector(Temp[i,j])
    y<-y+1
  }
}

#Passando as datas para outro vetor
for(i in 1:5354){
 for(j in 1:24){
    Data[x]<-as.character(Temp[i,1])
    x<-x+1
 }
}






#Pegar Umidade
Umid <- read.csv("D:\\Estágio\\Organização Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.csv","DF_A001_BRASILIA_fornecimento_1", rowIndex=11:5363,colIndex =26:52)

#Passando os valores de temperatura para um vetor
y<-1
Umidade<-1:4

for(i in 1:5354){
  for(j in 1:24){
    Umidade[y] <- as.vector(Umid[i,j])
    y<-y+1
  }
}

#Pegando Temperatura de Orvalho
TempOr<- read.csv("D:\\Estágio\\Organização Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.csv","DF_A001_BRASILIA_fornecimento_1", rowIndex=11:5363,colIndex =53:79)

#Passando os valores da temperatura de Orvalho para um vetor 
y<-1
Temperatura_Orvalho<-1:4
for(i in 1:5354){
  for(j in 1:24){
    Temperatura_Orvalho[y] <- as.vector(TempOr[i,j])
    y<-y+1
  }
}

#Pegando Temperatura Máxima
TempMax<- read.table("D:\\Estágio\\Organização Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.csv","DF_A001_BRASILIA_fornecimento_1", rowIndex=11:5363,colIndex =80:106)

#Passando os valores da temperatura Máxima para um vetor 
y<-1
Temperatura_Maxima<-1:4
for(i in 1:5354){
  for(j in 1:24){
    Temperatura_Maxima[y] <- as.vector(TempMax[i,j])
    y<-y+1
  }
}


#Pegando Temperatura Mínima
TempMin<- read.xlsx("D:\\Estágio\\Organização Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", rowIndex=11:5363,colIndex =107:133)

#Passando os valores da temperatura de Orvalho para um vetor 
y<-1
Temperatura_Minima<-1:4
for(i in 1:5354){
  for(j in 1:24){
    Temperatura_Minima[y] <- as.vector(TempMin[i,j])
    y<-y+1
  }
}

#Pegando Temperatura Maxima de Orvalho
TempMaxOr<- read.xlsx("D:\\Estágio\\Organização Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", rowIndex=11:5363,colIndex =133:159)

#Passando os valores da temperatura de Orvalho para um vetor 
y<-1
Temperatura_Maxima_Orvalho<-1:4
for(i in 1:5354){
  for(j in 1:24){
    Temperatura_Maxima_Orvalho[y] <- as.vector(TempMaxOr[i,j])
    y<-y+1
  }
}

#Pegando Temperatura Minima de Orvalho
TempMinOr<- read.xlsx("D:\\Estágio\\Organização Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", rowIndex=11:5363,colIndex =159:185)

#Passando os valores da temperatura de Orvalho para um vetor 
y<-1
Temperatura_Minima_Orvalho<-1:4
for(i in 1:5354){
  for(j in 1:24){
    Temperatura_Minima_Orvalho[y] <- as.vector(TempMinOr[i,j])
    y<-y+1
  }
}


#Pegando Umidade Maxima do Ar
UmidMax<- read.xlsx("D:\\Estágio\\Organização Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", rowIndex=11:5363,colIndex =185:211)

#Passando os valores da temperatura de Orvalho para um vetor 
y<-1
Umidade_Maxima_Ar<-1:4
for(i in 1:5354){
  for(j in 1:24){
    Umidade_Maxima_Ar[y] <- as.vector(UmidMax[i,j])
    y<-y+1
  }
}


#Pegando Umidade Minima do Ar
UmidMin<- read.xlsx("D:\\Estágio\\Organização Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", rowIndex=11:5363,colIndex =211:237)

#Passando os valores da Umidade Mínima do Ar para um vetor 
y<-1
Umidade_Minima_Ar<-1:4

for(i in 1:5354){
  for(j in 1:24){
    Umidade_Minima_Ar[y] <- as.vector(UmidMin[i,j])
    y<-y+1
  }
}
  

  
  
#Juntando tudo
Final<-cbind(Data,Temperatura,Umidade,Temperatura_Orvalho,Temperatura_Maxima,Temperatura_Minima,Temperatura_Maxima_Orvalho,Temperatura_Minima,Umidade_Maxima_Ar,Umidade_Minima_Ar)

write.table(Final, "D:\\Saida.csv",
           col.names = T, sep=";", na="NA",dec=".",row.names = F)


