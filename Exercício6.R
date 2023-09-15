pacman::p_load(data.table, ggplot2)

install.packages("corrplot")

library(corrplot)

breast_cancer <- fread('https://raw.githubusercontent.com/hugoavmedeiros/cp_com_r/master/bases_tratadas/breast_cancer.csv', stringsAsFactors = T)
breast_cancer <- fread('bases_tratadas/breast_cancer.csv', stringsAsFactors = T)

breast_cancer_table <- table(breast_cancer$idade, breast_cancer$breast)
breast_cancer_table

View(breast_cancer)

# Gráfico de dispersão para a variável Idade #
ggplot(breast_cancer) + aes(x = idade, fill = breast) + geom_bar(position = "fill")

breast_cancer_test <- chisq.test(breast_cancer_table)
breast_cancer_test
breast_cancer_test$observed
breast_cancer_test$expected

corrplot(breast_cancer_test$residuals, is.cor = FALSE)
