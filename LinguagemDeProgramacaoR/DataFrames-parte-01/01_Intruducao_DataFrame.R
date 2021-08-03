View(mtcars)

mean(mtcars$mpg)
# media da coluna milhas por galao
# [1] 20.09062
min(mtcars$mpg)
# minimo da coluna milhas por galao
# [1] 10.4
max(mtcars$mpg)
# maximo da coluna milhas por galao
# [1] 33.9

nome <- rownames(mtcars)[which.max(mtcars$mpg)]
nome
# [1] "Toyota Corolla"

