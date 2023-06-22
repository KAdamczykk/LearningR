#install.packages("stringi")
library("stringi")
library("nycflights13")
vector1 <- c(1, 2, 3)
vector2 <- c(1, 2, 3)

result <- outer(vector1, vector2, FUN = "*")
print(result)

vector1 <- c("a", "b", "c")
vector2 <- c("1", "2", "3")

result <- outer(vector1, vector2, FUN = stri_paste)
print(result)
kombinuj <- function(n, m) { 
  n <- min(26, n) 
  as.character(
    outer(letters[1:n], 1:m, stri_paste) 
  ) 
}

kombinuj(4, 2)

zlacz <- function(weather){
  weather <- weather[,c("year", "month", "day")]
  res <- as.data.frame(paste(weather$year, weather$month, weather$day, sep="-"))
}
weather <- nycflights13::weather
print(head(zlacz(weather)))