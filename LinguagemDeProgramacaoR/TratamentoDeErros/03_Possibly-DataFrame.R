# install.packages("purrr")
library(purrr)
# install.packages("data.table")
library(data.table)

meusCarros <- copy(mtcars)

paraNumero <- possibly(as.double, otherwise = NA)

meusCarros$mpg <- map(meusCarros$mpg, paraNumero)
# meusCarros
View(meusCarros)