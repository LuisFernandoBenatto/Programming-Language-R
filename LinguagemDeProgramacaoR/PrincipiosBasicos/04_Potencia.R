library(magrittr)
# install.packages("magrittr")
potencia <- function (base, expoente=2) {
  return (base ** expoente)
}
potencia(2)
# [1] 4
potencia(2, 3)
# [1] 8
potencia(8, 3)
# [1] 512
potencia(2, 10)
# [1] 1024