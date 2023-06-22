## PDU
## Zadanie 1.2

?sd() # odchylenie standardowe

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

# x - mean(x) # od elementów wektora odejmujemy ich średnią arytmetyczną
# (x - mean(x)) / sd(x) # każdy element dzielimy przez odchylenie standardowe x
# analogicznie dla wektora y:
# (y - mean(y)) / sd(y)
# ((x - mean(x))/sd(x)) * ((y - mean(y))/sd(y)) # mnożenie ,,elementwise''
# ostatecznie:
sum(((x - mean(x))/sd(x)) * ((y - mean(y))/sd(y))) / (length(x) - 1)
# lub możemy trochę uporządkować i otrzymać:
sum((x - mean(x)) * (y - mean(y))/(sd(x) * sd(y)))/(length(x) - 1)

# por:
cor(x, y, method="pearson")
