getwd()
# [1] "C:/Users/User/Documents"
# setwd("C:/Users/User/Documents")

# install.packages("data.table")
library(data.table)

dados <- fread("C:/Users/User/Documents/GitHub/Programming-Language-R/LinguagemDeProgramacaoR/DataFrames-parte-02/empresas.csv")
View(dados)

dados$Situacao <- NULL
View(dados)

dados$Situacao <- NA
View(dados)

classificar <- function(x) {
  declarado <- x[1]
  catao <- x[2]
  diferenca <- catao / declarado
  
  if(diferenca <= 1) return ("Tudo nos conformes")
  if(diferenca > 1.5) return ("***Altamente suspeita***")
  if(diferenca > 1.2) return ("**Mediamente suspeita**")
  if(diferenca > 1.1) return ("*Pouco suspeita*")
  return("...")
}

dados$Situacao <- apply(dados[ ,c(2,3)], 1, classificar)

