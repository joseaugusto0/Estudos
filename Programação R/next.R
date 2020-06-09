#Next vai pular pro próximo valor de i direto


nomes <- c("Zé","João","Anderson","Gui")



for(i in 1:length(nomes)){
  if(nomes[i]=="Anderson"){
    next
  }
  
  print(paste("O nome selecionado é: ", nomes[i]))
  
  
}