contador <- function() {
  i<-0
  function() {
    i <<- i+1
    i
  }
}

a <- contador()
b <- contador()

a() # [1] 1
a() # [1] 2
a() # [1] 3
a() # [1] 4
b() # [1] 1
b() # [1] 2
a() # [1] 5
b() # [1] 3
b() # [1] 4
b() # [1] 5