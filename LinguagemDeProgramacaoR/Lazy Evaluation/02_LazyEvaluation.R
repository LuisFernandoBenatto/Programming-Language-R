ping <- function(a, b, c) {
  print(a)
  Sys.sleep(2)
  print(b)
  Sys.sleep(2)
  print(c)
}

ping(Sys.time(), Sys.time(), Sys.time())
# [1] "2021-08-06 08:41:47 -03"
# [1] "2021-08-06 08:41:49 -03"
# [1] "2021-08-06 08:41:51 -03"