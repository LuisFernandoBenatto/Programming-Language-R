taxarConvencional  <- function(aliquota, preco) {
  aliquota * preco
}

taxarConvencional(0.25, 2000)
# [1] 500

taxar <- function(aliquota) {
  function(preco) {
    preco * aliquota
  }
}

taxar(0.10)(100000)
# [1] 10000


taxa10 <- taxar(0.10)
taxa12 <- taxar(0.12)

taxa10(1000)
# [1] 100
taxa12(1000)
# [1] 120
