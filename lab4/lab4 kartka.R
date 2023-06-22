# zadanie 1
#k <- readline(prompt = "Podaj k ")
k <- 10
x <- c(1:k)
n <- length(x)
mat <- matrix(0, n, k, byrow = FALSE)
mat
mat[cbind(1:n, x)] <- 1
mat

#zadanie 2
softmax <- function(x){
  k <- length(x[1,])
  n <- length(x[,1])
  
  x[i][j] -> (exp(x[i][j]) / sum())
}
