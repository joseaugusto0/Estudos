nomes <- c("Zé","João","Anderson","Gui")

#Método 1

for(i in 1:length(nomes)){
  print(paste("O nome selecionado é: ", nomes[i]))
  
}

#Método 2
#colocando o vetor direto, ele pega o length direto

for (x in nomes){
  print(paste("O nome selecionado é: ", nomes[i]))
  
}