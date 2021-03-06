library("xlsx")
x<-1
y<-1

#options(java.parameters = "-Xmx2048m")  ## memory set to 2 GB

Temperatura<-1:4
Data<-c("")


#Pegar as Temperaturas no XLS
Temp <- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", startRow=11, endRow=5363,colIndex =2:27)




#Passando os valores de temperatura para um vetor
for(i in 1:5352){
  for(j in 1:24){
    Temperatura[y] <- as.vector(Temp[i,j])
    y<-y+1
  }
}


#Pegar as Datas no XLS
Dat <- read.xlsx("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", startRow=11, endRow=5363,colIndex =1)
x<-1
  
#Passando as datas para outro vetor
for(i in 1:5352){
 for(j in 1:24){
    Data[x]<-as.character(Dat[i,1])
    x<-x+1
 }
}


#Pegar Umidade
Umid <- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", startRow=11, endRow=5363,colIndex =26:52)

#Passando os valores de temperatura para um vetor
y<-1
Umidade<-1:4

for(i in 1:5352){
  for(j in 1:24){
    Umidade[y] <- as.vector(Umid[i,j])
    y<-y+1
  }
}




#Pegando Temperatura de Orvalho
TempOr<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", startRow=11, endRow=5363,colIndex =50:76)

#Passando os valores da temperatura de Orvalho para um vetor 
y<-1
Temperatura_Orvalho<-1:4
for(i in 1:5352){
  for(j in 1:24){
    Temperatura_Orvalho[y] <- as.vector(TempOr[i,j])
    y<-y+1
  }
}



#Pegando Temperatura M�xima
TempMax<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", startRow=11, endRow=5363,colIndex =74:100)

#Passando os valores da temperatura M�xima para um vetor 
y<-1
Temperatura_Maxima<-1:4
for(i in 1:5352){
  for(j in 1:24){
    Temperatura_Maxima[y] <- as.vector(TempMax[i,j])
    y<-y+1
  }
}


#Pegando Temperatura M�nima
TempMin<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", startRow=11, endRow=5363,colIndex =98:124)

#Passando os valores da temperatura de Orvalho para um vetor 
y<-1
Temperatura_Minima<-1:4
for(i in 1:5352){
  for(j in 1:24){
    Temperatura_Minima[y] <- as.vector(TempMin[i,j])
    y<-y+1
  }
}

#Pegando Temperatura Maxima de Orvalho
TempMaxOr<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", startRow=11, endRow=5363,colIndex =122:148)

#Passando os valores da temperatura de Orvalho para um vetor 
y<-1
Temperatura_Maxima_Orvalho<-1:4
for(i in 1:5352){
  for(j in 1:24){
    Temperatura_Maxima_Orvalho[y] <- as.vector(TempMaxOr[i,j])
    y<-y+1
  }
}

#Pegando Temperatura Minima de Orvalho
TempMinOr<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", startRow=11, endRow=5363,colIndex =146:172)

#Passando os valores da temperatura de Orvalho para um vetor 
y<-1
Temperatura_Minima_Orvalho<-1:4
for(i in 1:5352){
  for(j in 1:24){
    Temperatura_Minima_Orvalho[y] <- as.vector(TempMinOr[i,j])
    y<-y+1
  }
}


#Pegando Umidade Maxima do Ar
UmidMax<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", startRow=11, endRow=5363,colIndex =170:196)

#Passando os valores da temperatura de Orvalho para um vetor 
y<-1
Umidade_Maxima_Ar<-1:4
for(i in 1:5352){
  for(j in 1:24){
    Umidade_Maxima_Ar[y] <- as.vector(UmidMax[i,j])
    y<-y+1
  }
}


#Pegando Umidade Minima do Ar
UmidMin<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA.xls","DF_A001_BRASILIA_fornecimento_1", startRow=11, endRow=5363,colIndex =194:220)

#Passando os valores da Umidade M�nima do Ar para um vetor 
y<-1
Umidade_Minima_Ar<-1:4

for(i in 1:5352){
  for(j in 1:24){
    Umidade_Minima_Ar[y] <- as.vector(UmidMin[i,j])
    y<-y+1
  }
}

#Pegando Press�o Atmosf�rica
Pressao<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA_.xls","DF_A001_BRASILIA_fornecimento_2", startRow=11, endRow=5363,colIndex =2:27)

#Passando os valores da Press�o para um vetor 
y<-1
Pressao_Atmosferica<-1:4

for(i in 1:5352){
  for(j in 1:24){
    Pressao_Atmosferica[y] <- as.vector(Pressao[i,j])
    y<-y+1
  }
}


#Pegando Vento Velocidade
Vento<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA_.xls","DF_A001_BRASILIA_fornecimento_2", startRow=11, endRow=5363,colIndex =26:52)

#Passando os valores da Umidade Relativa do Ar para um vetor 
y<-1
Vento_Velocidade<-1:4

for(i in 1:5352){
  for(j in 1:24){
    Vento_Velocidade[y] <- as.vector(Vento[i,j])
    y<-y+1
  }
}

#Pegando Vendo, Dire��o
VenDir<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA_.xls","DF_A001_BRASILIA_fornecimento_2", startRow=11, endRow=5363,colIndex =50:76)

#Passando os valores do Vento,Dire��o para um vetor 
y<-1
Vento_Direcao<-1:4

for(i in 1:5352){
  for(j in 1:24){
    Vento_Direcao[y] <- as.vector(VenDir[i,j])
    y<-y+1
  }
}


#Pegando Radia��o Global
RadGlo<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA_.xls","DF_A001_BRASILIA_fornecimento_2", startRow=11, endRow=5363,colIndex =74:100)

#Passando os valores do Radia��o Global para um vetor 
y<-1
Radiacao_Global<-1:4

for(i in 1:5352){
  for(j in 1:24){
    Radiacao_Global[y] <- as.vector(RadGlo[i,j])
    y<-y+1
  }
}

#Pegando Precipita��o
Prec<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA_.xls","DF_A001_BRASILIA_fornecimento_2", startRow=11, endRow=5363,colIndex =98:124)

#Passando os valores da Precipita��o para um vetor 
y<-1
Precipitacao<-1:4

for(i in 1:5352){
  for(j in 1:24){
    Precipitacao[y] <- as.vector(Prec[i,j])
    y<-y+1
  }
}

#Pegando Vento,Rajada Maxima
Vent<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA_.xls","DF_A001_BRASILIA_fornecimento_2", startRow=11, endRow=5363,colIndex =122:148)

#Passando os valores da Precipita��o para um vetor 
y<-1
Vento_Rajada_Maxima<-1:4

for(i in 1:5352){
  for(j in 1:24){
    Vento_Rajada_Maxima[y] <- as.vector(Vent[i,j])
    y<-y+1
  }
}

#Pegando Pressao Atmosf�rica M�xima
Press<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA_.xls","DF_A001_BRASILIA_fornecimento_2", startRow=11, endRow=5363,colIndex =146:172)

#Passando os valores da Press�o Atmosf�rica M�xima para um vetor 
y<-1
Pressao_Atmosferica_Maxima<-1:4

for(i in 1:5352){
  for(j in 1:24){
    Pressao_Atmosferica_Maxima[y] <- as.vector(Press[i,j])
    y<-y+1
  }
}

#Pegando Pressao Atmosf�rica M�nima
Press2<- read.xlsx2("D:\\Est�gio\\Organiza��o Tabelas\\Tabelas_Originais\\CENTRO_OESTE\\DF\\__DF_A001_BRASILIA_.xls","DF_A001_BRASILIA_fornecimento_2", startRow=11, endRow=5363,colIndex =170:196)

#Passando os valores da Precipita��o para um vetor 
y<-1
Pressao_Atmosferica_Minima<-1:4

for(i in 1:5352){
  for(j in 1:24){
    Pressao_Atmosferica_Minima[y] <- as.vector(Press2[i,j])
    y<-y+1
  }
}




  

  
  
#Juntando tudo
Final<-cbind(Data,Temperatura,Umidade,Temperatura_Orvalho,Temperatura_Maxima,Temperatura_Minima,Temperatura_Maxima_Orvalho,Temperatura_Minima,Umidade_Maxima_Ar,Umidade_Minima_Ar,Umidade_Relativa_Ar,Pressao_Atmosferica,Vento_Velocidade,Vento_Direcao,Radiacao_Global,Precipitacao,Vento_Rajada_Maxima,Pressao_Atmosferica_Maxima,Pressao_Atmosferica_Minima)

write.table(Final, "D:\\Saida.csv",
           col.names = T, sep=";", na="NA",dec=".",row.names = F)


