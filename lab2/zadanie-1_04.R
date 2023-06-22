## PDU
## Zadanie 1.4

winsor <- function(x, k) {
    xs <- sort(x) # sortujemy

    (
       sum(xs[(1+k):(length(x)-k)]) + # sumujemy srodek
       k*xs[k+1] + # dodajemy k razy element k+1 najmniejszy
       k*xs[(length(x)-k)] # oraz k razy element k+1 najwiekszy
    )/lenght(x)
}
