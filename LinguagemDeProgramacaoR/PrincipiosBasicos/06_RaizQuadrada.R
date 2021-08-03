library(magrittr)
# install.packages("magrittr")

x <- c(0, 2, 4, 6, 8, 10)
sqrt(sum(x))
# [1] 5.477226
# Exemplo PIPE:
x %>% sum %>% sqrt