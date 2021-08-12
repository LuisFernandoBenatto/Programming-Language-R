# install.packages("readr")
# install.packages("data.table")
# install.packages("magrittr")

library(readr)
library(data.table)
library(magrittr)

#carrega o dataset 
dados <- fread("C:/Users/User/Documents/GitHub/Programming-Language-R/LinguagemDeProgramacaoR/Acidentes/datatran2020.csv")
View(dados)

# separa o estado do parana e elimina valores NA
parana <- dados %>% subset(dados$uf == 'PR') %>% na.omit()
View(parana)

# separa a br-369 das demais
br369 <- parana %>% subset(parana$br == '369')
View(br369)

# sem arrendondar os valores dos km
tabela <- table(br369$km)
View(tabela)

# tabela == max(tabela)
tabela [tabela == max(tabela)]

# resultado do km que tem mais acidentes é o km 155
# km:
# 155 
# se repete: 
# 11 vezes 

# convertendo de string para float
convert <- as.integer(gsub(",", ".", br369$km))
View(convert)

# arredondando todos os valores
roundKM <- convert %>% round(digits = 0)
View(roundKM)

tabela2 <- table(roundKM)
View(tabela2)

tabela2 [tabela2 == max(tabela2)]
# resultado do km que tem mais acidentes é o km 150
# km:
# 150
# se repete: 
# 18 vezes 

####################################################################

# separa a br-376 das demais
br376 <- parana %>% subset(parana$br == '376')
View(br376)

# convertendo de string para float
convert_ <- as.integer(gsub(",", ".", br376$km))
View(convert_)

# arredondando todos os valores
roundKM_ <- convert_ %>% round(digits = 0)
View(roundKM_)

tabela3 <- table(roundKM_)
View(tabela3)

tabela3 [tabela3 == max(tabela3)]
# resultado do km que tem mais acidentes é o km 176
# km:
# 176
# se repete: 
# 36 vezes 