data(USArrests)
View(USArrests)

# Tabela de frequência absoluta Murder
table(USArrests$Murder)

# Tabela de frequência relativa da variável Assault
prop.table(table(USArrests$Murder))

## Média da variável para Assault
mean(USArrests$Assault)

# Mediana da variável Assault
median(USArrests$Assault)

# Separatrizes da variável Assault
quantile(USArrests$Assault, probs=0.75)
quantile(USArrests$Assault, probs=0.10)
quantile(USArrests$Assault, probs=0.95)

boxplot(USArrests$Assault)

# Desvio-padrão da variável Assault
sd(USArrests$Assault)
plot(USArrests$Assault)

## Sumário descritivo básico das variáveis
summary(USArrests)

# Sumário descritivo completo das variáveis usando o pacote fBasics
pacman::p_load(fBasics)
basicStats(USArrests)

# histograma
hist(USArrests$Assault)
