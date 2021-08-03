library(magrittr)
# install.packages("magrittr")
soma <- function (x, y=0) {
  x + y
}
soma(2)
# [1] 2
soma(10, 20)
# [1] 30

f <- function (x=0, y=0, z=1) {
  (x + y) * z
}
f(x=3, z=2)
# [1] 6