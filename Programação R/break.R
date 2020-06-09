nomes <- c("Zé","João","Anderson","Gui")



for(i in 1:length(nomes)){
  if(nomes[i]=="Anderson"){
    break
  }
  
  print(paste("O nome selecionado é: ", nomes[i]))
  
  
}