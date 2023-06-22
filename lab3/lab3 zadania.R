#Zadanie 1
#?rle
x <- sample(10,100,TRUE)
x
rle(x)$lengths
rle(x)$values
sortownia <- sort(x)
sortownia
rel <- rle(sortownia)
rel$lengths
p <-which.max(rel$lengths)
moda<- rel$values[p]
moda

#zadanie 2
calkaMonteCarlo<- function(f,a,b,n = 1000){
  stopifnot(f(a) >= 0, is.function(f) == TRUE, f(b) >= 0)
  stopifnot(is.numeric(a), is.numeric(b), a<b)
  f_min <- min(f(a), f(b))
  f_max <- max(f(a), f(b))
  x_2 <-runif(n,f_min, f_max)
  x_1 <- runif(n,a,b)
  q <-sum(x_2 <= f(x_1)) / n
  q * (b-a) * (f_max - f_min) + (b-a) * f_min
  
}
set.seed(123)
f <- function(x) sin(x)
a <- 0
b <- 1
n <- 10000
calkaMonteCarlo(f, a, b, n)

f <- function(x) x + 1
calkaMonteCarlo(f, a, b, n)

f <- function(x) x^2 + 2
calkaMonteCarlo(f, a, b, n)


#zadanie 3
x <- c('a', 'b', 'c')
k <- 5
sample(x,k,replace = TRUE)
losuj <- function(x,k){
x[floor(runif(k, 1, length(x) +1))]
}
y <- losuj(x,k)
y

#zadanie 4
x <- c(1,2,1,4,3,4,1)
per <- order(x) #zwraca ktory index powinien byc ktory
per
ind <- c(1, which(diff(x[per]) != 0) + 1)
ret <- x[sort(per[ind])]
ret
