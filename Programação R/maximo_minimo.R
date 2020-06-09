library("xlsx")
library("tcltk")
Temperatura<-1:4
y<-1
soma<-0
diretorio<-tk_choose.dir(default = "", caption = "Selecione o diretório das tabelas:")

local<- paste(diretorio,"__DF_A001_BRASILIA.xls",sep = "/")
Temp<- read.xlsx2(local,"DF_A001_BRASILIA_fornecimento_1", startRow=11, endRow=5363,colIndex =2:27)

as.vector(Temp[1,1])=="NULL"

for(i in 1:5352){
  for(j in 1:24){
    Temperatura[y] <- as.vector(Temp[i,j])
    y<-y+1
    
  }
}

class(as.numeric(Temperatura[450]))
class(Temperatura[1])

for(i in 1:128448){
  if(Temperatura[i]=="NULL" || is.na(Temperatura[i])){
    
  }else{
    soma<-soma+as.numeric(Temperatura[i])
  }
  
}


max(as.numeric(Temperatura),na.rm=TRUE)
min(as.numeric(Temperatura),na.rm=TRUE)
mean(as.numeric(Temperatura),na.rm = TRUE)

class(Temp[1,1])