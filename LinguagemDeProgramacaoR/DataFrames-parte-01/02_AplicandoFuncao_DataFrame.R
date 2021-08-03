View(mtcars)

mean(mtcars$mpg)
# media da coluna milhas por galao
# [1] 20.09062

maiorGastos <- subset(mtcars, mtcars$mpg < 20.00062)
View(maiorGastos)
# retorna uma nova View() contendo os dados referentes a funcao
