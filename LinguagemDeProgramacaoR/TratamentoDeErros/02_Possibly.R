# install.packages("purrr")
library(purrr)

lista <- list("c", 25, 100)

possivelmente <- possibly(sqrt, otherwise = NA)
map(lista, possivelmente)

# [[1]]
# [1] NA

# [[2]]
# [1] 5

# [[3]]
# [1] 10