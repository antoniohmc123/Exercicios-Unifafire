library(dplyr)
pacman::p_load(data.table)

set.seed(123)

escolas <- paste("Escola", 1:60)
materias <- rep(c("Matemática", "Português", "História", "Geografia"), each = 60)
notas <- round(runif(240, min = 0, max = 10), 1)


quantidade_alunos <- sample(30:300, 60, replace = TRUE)

dados_escolares <- data.frame(
  Escolas = escolas,
  Matéria_melhor_avaliada = materias,
  Notas = notas,
  Alunos = quantidade_alunos
)

#encontrar melhor matéria por cada escola

melhores_materias <- dados_escolares %>%
  group_by(Escolas) %>%
  filter(Notas == max(Notas))

View(melhores_materias)

quantidade_professores <- sample(5:20, 60, replace = TRUE)

professores_por_escola <- data.frame(
  Escolas = escolas,
  Professores = quantidade_professores
)

melhores_materias_com_professores <- merge(melhores_materias, professores_por_escola, by = "Escolas")

View(melhores_materias_com_professores)

melhores_materias_com_professores$Matéria <- as.factor(melhores_materias_com_professores$Matéria)

View(melhores_materias_com_professores)

# Correlação
cor.test(melhores_materias_com_professores$Notas, melhores_materias_com_professores$Professores)







