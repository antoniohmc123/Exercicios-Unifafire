pacman::p_load(corrplot, dplyr, ggplot2)

data(economics)
View(economics)

economics2 <- economics %>% select(-date)

# TABELA DE CORRELAÇÃO COM TODAS AS VARIÁVEIS #
cor(economics2)

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
pairs(economics2)

# CORRPLOT DAS VARIÁVEIS #
economics2 <- cor(economics2)
corrplot(economics2 , method = "number", order = 'alphabet')
corrplot(economics2 , order = 'alphabet') 



