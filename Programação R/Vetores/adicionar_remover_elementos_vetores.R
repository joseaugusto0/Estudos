vetor1 <- c(1:5)
names(vetor1) <- c("V1","V2","V3","V4","V5")


#Adicionar valores no vetor
vetor1[6] <- 6 #jeito1 - Endereçamento direto
vetor1[length(vetor1)+1] <- 7 #jeito2 - Endereçamento pelo tamanho + 1
vetor1 <- c(vetor1,8) #jeito3 - Em um outro vetor


#Remover valores no vetor
vetor1[-3] #vai EXIBIR sem o terceiro valor, mas ele continuará lá
vetor1 <- vetor1[-3] #jeito 1 - Endereçamento direto
vetor1 <- vetor1[-c(1:3)] #jeito 2 - Remove com outro vetor



