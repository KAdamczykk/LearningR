## PDU
## Zadanie 2.2

calkaMonteCarlo <- function(f, a, b, n = 1000){
    # Funkcja wyznacza całkę funkcji przy uzyciu metodu Monte Carlo
    # Argumenty funkcji:
    # f - funkcja scisle monotoniczna  (tego nie sprawdzamy)
    #     o wartosciach nieujemnych (spr. zob. ponizej)
    # a, b - granice przedzialu, na ktorym calkujemy funkcje
    #        a < b
    # n - dokladnosc obliczen
    # Sprawdzenie warunkow poprawnosci:
    stopifnot(is.function(f))
    stopifnot(is.numeric(a), length(a) == 1, 
              is.numeric(b), length(b) == 1,
              a < b)
    stopifnot(is.numeric(n), n > 0, n == floor(n))
    
    fa = f(a) # wartosci funkcji na krancach przedzialu
    fb = f(b)
    
    # sprawdzamy czy wartosci na krancach przedzialu sa nieujemne:
    stopifnot(fa >= 0, fb >= 0) 
    # Postepujemy zgodnie z algorytmem opisanym w zadaniu:
    fMIN = min(fa, fb)
    fMAX = max(fa, fb)
    
    x <- runif(n, min = a, max = b) # ?runif - liczba pseudolosowa 
                                    # z  przedzialu [a,  b]
    y <- runif(n, fMIN, fMAX)
    # Wynik:
    ( sum(y <= f(x))/n ) * (b - a) * (fMAX - fMIN) + (b - a) * fMIN
}

## Przyklady testowe
# niepoprawne dane:
# calkaMonteCarlo(f = 5, a = 1, b = 2, n = 100)
# calkaMonteCarlo(f = function(x) x^2, 
#                 a = 1, b = 2, n = 100.5)
# pozostale przyklady z zadania:
# mozesz porownac wyniki z funkcja ?integrate
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
