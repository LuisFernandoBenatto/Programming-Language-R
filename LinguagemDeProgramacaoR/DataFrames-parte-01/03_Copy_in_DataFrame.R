View(mtcars)

converte <- function(x) {
  kmpg = x * 1.60937
  kml = kmpg * 3.78541
  kml
}
# install.packages("data.table")
library(data.table)
mycars <- copy(mtcars)
View(mycars)

converte(mycars$mpg)
# [1] 127.93463 127.93463 138.90046 130.37148 113.92274 110.26747  87.11739 148.64786
# [9] 138.90046 116.96881 108.43983  99.91085 105.39377  92.60030  63.35810  63.35810
# [17]  89.55424 197.38486 185.20061 206.52305 130.98069  94.42794  92.60030  81.02527
# [25] 116.96881 166.31502 158.39526 185.20061  96.25558 120.01487  91.38188 130.37148

mycars$mpg <- converte(mycars$mpg)
View(mycars)
mycars$mpg <- round(mycars$mpg, 2)


names(mycars)[1] <- paste("kml")