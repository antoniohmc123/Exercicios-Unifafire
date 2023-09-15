data (economics)
View (economics)

### CARREGAR PACOTES
pacman::p_load(ccaPP, lsa, minerva, Rfast)

### CRIAR FUNÇÃO PARA RODAR VÁRIAS ASSOCIAÇÕES
multi.cor <- function(pop, unemploy) {
  c(
    cor = cor(pop, unemploy), # Correlação
    dcor = dcor(pop, unemploy), # Distance correlation
    cosine = cosine(pop, unemploy), # Distância do Cosseno 
    maxCor = maxCorProj(pop, unemploy), # Maximal correlation
    MIC = mine (pop, unemploy) #  Maximal Information Coefficient
  )
}

populacao_desemprego <- table(economics$pop, economics$unemploy)

View(populacao_desemprego)

teste_fisher_desemprego <- fisher.test(populacao_desemprego)

print(teste_fisher_desemprego)
