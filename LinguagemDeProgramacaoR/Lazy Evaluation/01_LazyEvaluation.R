# Realizando avaliacao preguicosa

lazyfunc <- function(x, y){
  x
}

lazyfunc(3)
# [1] 3

f <- function(a, b) {
  a * 10
}

f(2)
# [1] 20

lazyfunc2 <- function(x, y){
   x + y
}

lazyfunc2(3)
# Error in lazyfunc2(3) : argument "y" is missing, with no default