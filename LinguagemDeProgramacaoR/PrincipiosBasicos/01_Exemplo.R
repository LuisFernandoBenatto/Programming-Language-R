library(magrittr)
# install.packages("magrittr")

v <- c ("1", "2", "3")
class(v)
# [1] "character"
as.numeric(v)
class(v)
# [1] "character"
sum(v)
# Error in sum(v) : invalid 'type' (character) of argument