library(magrittr)
# install.packages("magrittr")
quadrado <- function(x) x**2
quadrado2 <- function(x){
  return (x**2)
}
quadrado(2)
# [1] 4
quadrado(2:10)
# [1]   4   9  16  25  36  49  64  81 100
quadrado2(8)
# [1] 64
quadrado2(10:20)
# [1]   4   9  16  25  36  49  64  81 100