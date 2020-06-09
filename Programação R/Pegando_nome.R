library("tcltk")
library (stringr)

Estado<-(1:4)
Codigo<-1:4
Cidade<-1:4
nome<-""

diretorio<-tk_choose.dir(default = "", caption = "Selecione o diretório das tabelas:")
diretorio2<-"D://Estágio//Organização Tabelas//Nome Estados"

NomesArquivos<-list.files(path=diretorio)

for(c in 1:length(NomesArquivos)){
    Estado[c] <- str_extract(NomesArquivos[c], '_[[:upper:]][[:upper:]]_')
    ##Estado[c] <- str_replace(Estado[c],"_","")
    Codigo[c] <- str_extract(NomesArquivos[c], '_[[:upper:]][[:digit:]][[:digit:]][[:digit:]]_')
    Cidade[c] <- str_extract(NomesArquivos[c], '[[:digit:]]_+.+.x')
    Cidade[c] <- str_replace(Cidade[c],'[[:digit:]]',"")
    Cidade[c] <- str_replace(Cidade[c],".x","")
}

Final<-cbind(Estado,Codigo,Cidade)
extensao<-paste(Estado[1],"csv",sep = ".")
nome<- paste(diretorio2,extensao,sep = "/")
write.table(Final, nome,
            col.names = T, sep=";", na="NA",dec=",",row.names = F)