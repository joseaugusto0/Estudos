nomes <- c("Z�","Jo�o","Anderson","Gui")

#M�todo 1

for(i in 1:length(nomes)){
  print(paste("O nome selecionado �: ", nomes[i]))
  
}

#M�todo 2
#colocando o vetor direto, ele pega o length direto

for (x in nomes){
  print(paste("O nome selecionado �: ", nomes[i]))
  
}