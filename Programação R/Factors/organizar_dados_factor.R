vetorVotos <- c("BG","XF","BC","EBC","BG","EBC","BG","XF","BC")
#Valores tem de ser do mesmo tipo

#Cria os levels com o Factor
resultado <-factor(vetorVotos)
str(resultado)
summary(resultado)

#Renomeio os levels do factor
levels(resultado) <- c("Primeiro","Segundo","Terceiro","Quarto")




resultado
str(resultado)