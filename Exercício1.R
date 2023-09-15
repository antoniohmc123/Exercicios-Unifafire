pacman::p_load(
  janitor,
  ade4,
  arules,
  forcats)

facebook <- read.table(
  "https://raw.githubusercontent.com/hugoavmedeiros/ciencia_politica_com_r/master/bases_originais/dataset_Facebook.csv", 
  sep=";", 
  header = T)

str(facebook)

for(i in 2:7) {
  facebook[,i] <- as.factor(facebook[,i]) } 

facebook %>% str()

factorsFacebook <- unlist(lapply(facebook, is.factor))  
facebookFactor <- facebook[ , factorsFacebook]
str(facebookFactor)

inteirosFacebook <- unlist(lapply(facebook, is.integer))  
facebookInteiros <- facebook[, inteirosFacebook]
facebookInteiros %>% str()

facebookInteiros$Page.total.likes.Disc <- discretize(facebookInteiros$Page.total.likes, method = "interval", breaks = 3, labels = c("Outros", 'Segundo mais frequente', 'Mais frequente'))

facebookInteiros <- facebookInteiros %>% clean_names()

facebookInteiros %>% names()

fct_count(facebookFactor$Type)

fct_anon(facebookFactor$Type)

fct_lump(facebookFactor$Type, n = 1)

View(facebookInteiros)


















