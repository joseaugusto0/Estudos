# Increase before package loading 
options(java.parameters = "- Xmx1024m")
library("xlsx")
library("tcltk")

x<-1
y<-1
cont<-1
cont2<-0
Temperatura<-1:4
Data<- c("")
Umidade<-1:4
Temperatura_Orvalho<-1:4
Pressao_Atmosferica<-1:4
Vento_Velocidade<-1:4
Vento_Direcao<-1:4
Radiacao_Global<-1:4
Precipitacao<-1:4
Vento_Rajada_Maxima<-1:4
diretorio<-""


diretorio[1]<-tk_choose.dir(default = "", caption = "Selecione o primeiro diretório das tabelas:")
diretorio[2]<-tk_choose.dir(default = "", caption = "Selecione o segundo diretório das tabelas:")
diretorio[3]<-tk_choose.dir(default = "", caption = "Selecione o terceiro diretório das tabelas:")
diretorio2<-tk_choose.dir(default = "", caption = "Selecione onde deseja salvar:")




PegarTemp<-function(direto,c){
  #Pegar as Temperaturas no XLS
 
  local<- paste(diretorio,NomesArquivos[c],sep = "/")
  Temp <- read.xlsx2(local,sheets[c], startRow=11, endRow=5363,colIndex =2:25)
  
  #Passando os valores de temperatura para um vetor
  for(i in 1:5352){
    for(j in 1:24){
    
      Temperatura[y] <- as.vector(Temp[i,j])
      y<-y+1
    }
  }
  
  return(Temperatura)
}


PegarData<-function(direto,c){
  local<- paste(direto,NomesArquivos[c],sep = "/")
  
  #Pegar as Datas no XLS
  Dat <- read.xlsx(local,sheets[c], startRow=11, endRow=5363,colIndex =1)
  x<-1
  
  #Passando as datas para outro vetor
  for(i in 1:5352){
    for(j in 1:24){
      Data[x]<-as.character(Dat[i,1])
      x<-x+1
    }
  }
  return(Data)
}


PegarUmid<-function(direto,c){
  local<- paste(direto,NomesArquivos[c],sep = "/")
   
  #Pegar Umidade
  Umid <- read.xlsx2(local,sheets[c], startRow=11, endRow=5363,colIndex =26:50)
  
  #Passando os valores de umidade para um vetor
  y<-1
  
  for(i in 1:5352){
    for(j in 1:24){
      Umidade[y] <- as.vector(Umid[i,j])
      y<-y+1
    }
  }
  return(Umidade)
}


PegarTempOr<-function(direto,c){
  local<- paste(direto,NomesArquivos[c],sep = "/")
 
  #Pegando Temperatura de Orvalho
  TempOr<- read.xlsx2(local,sheets[c], startRow=11, endRow=5363,colIndex =50:76)
  
  #Passando os valores da temperatura de Orvalho para um vetor 
  y<-1
  
  for(i in 1:5352){
    for(j in 1:24){
      Temperatura_Orvalho[y] <- as.vector(TempOr[i,j])
      y<-y+1
    }
  }
  return(Temperatura_Orvalho)
}


PegarPressao<-function(direto,c){
  local<- paste(direto,NomesArquivos[c+1],sep = "/")
  
  #Pegando Pressão Atmosférica
  Pressao<- read.xlsx2(local,sheets[c+1], startRow=11, endRow=5363,colIndex =2:25)
  
  #Passando os valores da Pressão para um vetor 
  y<-1
  
  for(i in 1:5352){
    for(j in 1:24){
      Pressao_Atmosferica[y] <- as.vector(Pressao[i,j])
      y<-y+1
    }
  }
  return(Pressao_Atmosferica)
}


PegarVentoVelocidade<-function(direto,c){
  local<- paste(direto,NomesArquivos[c+1],sep = "/")
  
  #Pegando Vento Velocidade
  Vento<- read.xlsx2(local,sheets[c+1], startRow=11, endRow=5363,colIndex =26:50)
  
  #Passando os valores da Umidade Relativa do Ar para um vetor 
  y<-1
  
  for(i in 1:5352){
    for(j in 1:24){
      Vento_Velocidade[y] <- as.vector(Vento[i,j])
      y<-y+1
    }
  }
  return(Vento_Velocidade)
}


PegarVentoDirecao<-function(direto,c){
  local<- paste(direto,NomesArquivos[c+1],sep = "/")

  #Pegando Vento, Direção
  VenDir<- read.xlsx2(local,sheets[c+1], startRow=11, endRow=5363,colIndex =50:73)
  
  #Passando os valores do Vento,Direção para um vetor 
  y<-1
  
  for(i in 1:5352){
    for(j in 1:24){
      Vento_Direcao[y] <- as.vector(VenDir[i,j])
      y<-y+1
    }
  }
  return(Vento_Direcao)
}


PegarRadiacao<-function(direto,c){
  local<- paste(direto,NomesArquivos[c+1],sep = "/")
  
  #Pegando Radiação Global
  RadGlo<- read.xlsx2(local,sheets[c+1], startRow=11, endRow=5363,colIndex=74:100)
  
  #Passando os valores do Radiação Global para um vetor 
  y<-1
  
  
  for(i in 1:5352){
    for(z in 1:9){
      Radiacao_Global[y] <- "NULL"
      y<-y+1
    }
    for(j in 1:14){
      
      Radiacao_Global[y] <- as.vector(RadGlo[i,j])
      y<-y+1
    }
    Radiacao_Global[y] <- "NULL"
    y<-y+1
  }
  
  return(Radiacao_Global)
}


PegarPrecip<-function(direto,c){
  local<- paste(direto,NomesArquivos[c+1],sep = "/")
  
  #Pegando Precipitação
  Prec<- read.xlsx2(local,sheets[c+1], startRow=11, endRow=5363,colIndex =88:112)
  
  
  #Passando os valores da Precipitação para um vetor 
  y<-1
  
  for(i in 1:5352){
    for(j in 1:24){
      Precipitacao[y] <- as.vector(Prec[i,j])
      y<-y+1
    }
  }
  return(Precipitacao)
}


PegarVentoRaj<-function(direto,c){
  local<- paste(direto,NomesArquivos[c+1],sep = "/")
 
  #Pegando Vento,Rajada
  Vent<- read.xlsx2(local,sheets[c+1], startRow=11, endRow=5363,colIndex =112:136)
  
  #Passando os valores da Rajada para um vetor 
  y<-1
  
  for(i in 1:5352){
    for(j in 1:24){
      Vento_Rajada_Maxima[y] <- as.vector(Vent[i,j])
      y<-y+1
    }
  } 
  return(Vento_Rajada_Maxima)
}

#-------------------------------------------------------------------------------------------------
#Início do programa

for(l in 1:3){
  

NomesArquivos<-list.files(path=diretorio[l])

length(NomesArquivos)
for(c in 1:length(NomesArquivos)){
  local<- paste(diretorio[l],NomesArquivos[c],sep = "/")
  wb <- loadWorkbook(local)
  if(c==1){
    sheets <- names(getSheets(wb))
  }else{
    sheets <- cbind(sheets,names(getSheets(wb)))
  }
}



while(cont<= length(NomesArquivos)){

Temperatura<-as.double(PegarTemp(diretorio[l],cont))
Data<-PegarData(diretorio[l],cont)
Umidade<-as.double(PegarUmid(diretorio[l],cont))
Temperatura_Orvalho<-as.double(PegarTempOr(diretorio[l],cont))
Pressao_Atmosferica<-as.double(PegarPressao(diretorio[l],cont))
Vento_Velocidade<-as.double(PegarVentoVelocidade(diretorio[l],cont))
Vento_Direcao<-as.double(PegarVentoDirecao(diretorio[l],cont))
Radiacao_Global<-as.double(PegarRadiacao(diretorio[l],cont))
Precipitacao<-as.double(PegarPrecip(diretorio[l],cont))
Vento_Rajada_Maxima<-as.double(PegarVentoRaj(diretorio[l],cont))


#Juntando tudo
Final<-data.frame(Data,Temperatura,Umidade,Temperatura_Orvalho,Pressao_Atmosferica,Vento_Velocidade,Vento_Direcao,Radiacao_Global,Precipitacao,Vento_Rajada_Maxima)
nomearq<-paste(diretorio2,"/Novo-",NomesArquivos[cont],".csv",sep="")
write.table(Final, nomearq,
            col.names = T, sep=";", na="",dec=",",row.names = F)
cont<-cont+2
}
}






