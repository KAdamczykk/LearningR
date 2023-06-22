## PDU
## Zadanie 1.6

?factorial

asin2 <- function(x, m){
    # Funkcja wyznacza wartosc arcusasinusa dla x\in(-1, 1)
    # na podstawie rozwiniecia w szereg Taylora
    # Sprawdzamy warunki poprawnosci:
    stopifnot(is.numeric(m), length(m) == 1) 
    stopifnot(m > 0)      
    stopifnot(is.numeric(x), length(x) == 1, abs(x) < 1) 
    
    # liczymy wartości ze wzoru, ale wykorzystujemy wektoryzację:
    n <- 0:m # wektor o elementach 0, 1, 2, ..., m
    
    # silnie zob. ?factorial
    silnia_mianownik <- factorial(n)**2
    silnia_licznik <- factorial(2*n)
    
    licznik <- (silnia_licznik * x ^(2 * n + 1))
    mianownik <- (4^n * silnia_mianownik * (2 * n + 1))
    
    return( sum( licznik / mianownik ) )
}

x <- 0.75
asin(x)
asin2(x, 10)
asin2(x, 100) # Ups! NaN :(

asin3 <- function(x, m){
    # Funkcja wyznacza wartosc arcusasinusa dla x\in(-1, 1)
    # na podstawie rozwiniecia w szereg Taylora
    
    stopifnot(is.numeric(x), abs(x) < 1, length(x) == 1, 
              is.numeric(m), length(m) == 1, m > 0)
    
    # korzystamy z wyznaczenia takiego r(i), że a_i = a_{i-1} * r(i)
    # (przypomnijmy sobie zadania z PPPD)
    # oraz wektoryzacji (!)
    i <- 1:m
    # wektor zawiera wartośc r(i) dla kolejnych i
    r <- x**2 * (2*i - 1)^2 / (2*i *(2*i + 1)) 
    # a_0 = x
    # cumprod() - liczy skumulowane iloczyny
    # cumprod(y) == c(y[1], y[1]*y[2], y[1]*y[2]*y[3], ....)
    # czyli cumprod( c(x, r) ) zwróci kolejne elementy szeregu a_0, a_1, a_2, ....
    sum( cumprod( c(x, r) ) ) # ktore wystarczy zsumować
}

asin(x)
asin3(x, 10)
asin3(x, 100)
asin3(x, 1000) # nie mamy problemu!

# install.packages('microbenchmark') # instalujemy tylko raz
library(microbenchmark)
# zmierzymy czas wykonania
# zob. ?microbenchmark
microbenchmark(asin(x), asin2(x, 1000), asin3(x, 1000))

