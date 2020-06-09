vetor1 <- c("VB","51","CT","SA","VB","CT","51","51")
vetor2 <- c("Sagatiba", "Velho Barreiro", "Pirassununga 51", "Corote")
vetor3 <- c("SA","VB","51","CT")

#Digo que no Factor é ORDENADO com base no vetor 3
#Lembrando que o vetor 2 e o vetor 3 tem de estar na mesma sequencia
resultadoVotos<-factor(vetor1, labels = vetor2, ordered=TRUE,
                       levels = vetor3)

summary(resultadoVotos)


resultadoVotos[1] > resultadoVotos[2] #(Velho Barreiro é maior que Sagatiba, então deu false)
resultadoVotos[1] < resultadoVotos[2] #(Velho Barreiro é maior que Sagatiba, então deu true)
resultadoVotos[1] > resultadoVotos[2] #(Velho Barreiro não é igual a Sagatiba, então deu false)