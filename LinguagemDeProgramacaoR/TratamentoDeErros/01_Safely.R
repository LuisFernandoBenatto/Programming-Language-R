# install.packages("magrittr")
library(magrittr)
# install.packages("purrr")
library(purrr)
# safely() -> funcao de ordem superior que recebe uma funcao e a executa com seguranca

a <- list("a", 5, 25)
raizSegura <- safely(sqrt)
map(a, raizSegura)

# [[1]]
# [[1]]$result
# NULL

# [[1]]$error
# <simpleError in .Primitive("sqrt")(x): non-numeric argument to mathematical function>


# [[2]]
# [[2]]$result
# [1] 2.236068

# [[2]]$error
# NULL


# [[3]]
# [[3]]$result
# [1] 5

# [[3]]$error
# NULL