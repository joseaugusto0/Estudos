library("tcltk")

dir1<-tk_choose.files(default = "", caption = "Select files",
                      multi = TRUE, filters = NULL, index = 1)
my_data <- read.csv2(file = dir1, 
                      sep = ";", na.strings = "",skipNul = TRUE,blank.lines.skip = TRUE)
my_data<-my_data[!apply(is.na(my_data) | my_data=="",1,all),]


dir2<-tk_choose.files(default = "", caption = "Select files",
                      multi = TRUE, filters = NULL, index = 1)

Data2 <- read.csv2(file = dir2, 
                    sep = ";",na.strings = "",skipNul = TRUE,blank.lines.skip = TRUE)
Data2<-Data2[!apply(is.na(Data2) | Data2=="",1,all),]


dir3<-tk_choose.files(default = "", caption = "Select files",
                      multi = TRUE, filters = NULL, index = 1)

Data3 <- read.csv2(file = dir3, 
                    sep = ";", na.strings = "",skipNul = TRUE)
Data3<-Data3[!apply(is.na(Data3) | Data3=="",1,all),]
class(Data3)

Final<- rbind(my_data,Data2,Data3)


write.table(Final, "D://Estágio//Organização Tabelas//Tabelas Novas//Centro-Oeste//MT//teste.csv",
            col.names = T, sep=";", na="",dec=",",row.names = F)

