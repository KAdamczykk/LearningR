## PDU
## Zadanie 3.3

x <- rnorm(20, 0, 1); y <- 10*x+2
plot(x, y) # funkcja rysuje wykres par (x[1], y[1]), (x[2], y[2]), ..., (x[n], y[n])
x <- rnorm(20, 0, 1); y <- -4*x+1
plot(x, y)
x <- rnorm(2000, 0, 1); y <- rnorm(2000, 5, 2)
plot(x, y)

x <- rnorm(20, 0, 1); y <- 10*x+2

# zob. tez wyniki dla ponizszych wektorow
# x <- rnorm(20, 0, 1); y <- -4*x+1
# x <- rnorm(2000, 0, 1); y <- rnorm(2000, 5, 2)

# rank(x) - rank(x) # od elementÃ³w i-tej rangi wektora odejmujemy i-tÄ rangÄ wektora y
# sum((rank(x) - rank(x))^2) 
# dzielimy przez n*(n^2-1), gdzie n = length(x)
# otrzymany wynik pomnoÅ¼ony przez 6 odejmujemy od 1 
# ostatecznie:
?rank
1 - 6 * sum((rank(x)-rank(y))^2) / ((length(x)^2 - 1)*length(x))

# por:
cor(x, y, method="spearman")
x
rank(x)