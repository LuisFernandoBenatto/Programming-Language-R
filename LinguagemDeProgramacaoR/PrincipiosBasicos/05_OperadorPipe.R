# APENAS UM EXEMPLO NÃO É EXECUTAVEL 

library(magrittr)
# install.packages("magrittr")

f(x, y) 
# é equivalente: 
x %>% f

f(g(x))
# é equivalente: 
x %>% g %>% f
# Operador Pipe
# -------------------------------------------