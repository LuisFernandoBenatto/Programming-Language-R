library(magrittr)
# install.packages("magrittr")

round(sum(1:10)/3, digits = 1)
# [1] 18.3
# Exemplo PIPE:
1:10 %>% sum %>% divide_by(3) %>% round(digits=1)
1:10 %>% sum %>% divide_by(3) %>% round(digits=0)