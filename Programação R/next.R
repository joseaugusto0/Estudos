#Next vai pular pro pr�ximo valor de i direto


nomes <- c("Z�","Jo�o","Anderson","Gui")



for(i in 1:length(nomes)){
  if(nomes[i]=="Anderson"){
    next
  }
  
  print(paste("O nome selecionado �: ", nomes[i]))
  
  
}