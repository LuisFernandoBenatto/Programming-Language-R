fibonacci <- function(n){
 if (n == 0)
 return(0)
 if (n == 1)
 return(1)
 return(fibonacci(n-1) + fibonacci(n-2))
}

fibonacci(10)
# [1] 55
fibonacci(20)
# [1] 6765
fibonacci(30)
# [1] 832040
fibonacci(40)
# [1] 102334155
fibonacci(50)
# [1] ............................................................ :(