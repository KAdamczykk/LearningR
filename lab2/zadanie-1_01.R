## PDU
## Zadanie 1.1

set.seed(123) # ustawiamy ziarno generatora
?distribution # strona pomocy dotyczaca rozkladow 
?runif
# rnorm - rozklad normalny
# Ogólnie rozkłady są opisane przez cztery funkcje:
# r + indetyfikator - generuje liczby z zdadnanego rozkładu np. rnorm z rozkłdu normalnego
# d + indetyfikator - gęstość
# p + indetyfikator - dystrybuanta
# q + indetyfikator - kwantyle


?round # zaokraglamy
x <- round(rnorm(20, 0, 1), 2)

x        # CTLR + ENTER aby wypisać lub:  
print(x) # wypisujemy

## (1)


# Aby wybrać elemeny z wektora x, których wartości należą do przedziału [-2, -1] u [1, 2]
# Wykorzystamy indeksowanie z użyciem wektora logicznego.
# Dokładniej:
# x >= -2  & x <= -1 # [-2, -1] wektor wartosci logicznych 
# x >= 1  & x <= 2   # [1, 2] wektor wartosci logicznych
# (x >= -2 & x <= -1) | (x >= 1 & x <= 2) # TRUE jeśli wartość należy do zadanego przedziału, FALSE wpp
x[ (x >= -2 & x <= -1) | (x >= 1 & x <= 2) ]

## (2)

?length # funkcja zwraca dlugosc wektora
?sum

# wybieramy elementy nieujmene i liczymy ile ich jest
length(x[ x >= 0 ]) 
# lub lepiej:
sum(x >= 0)
# liczymy sumę wektora logicznego: TRUE - 1, FALSE - 0

# Analogicznie jak w przypadku powyżej:
length(x[ x >= 0 ])/length(x) # frakcja czyli proporcja
# stosunek liczby elementów spełniających warunek 
# do liczby wszystkich elementów wektora
# lub lepiej:
mean(x >= 0) # średnia aytmetyczna (suma elementów dzielona przez ich liczbę)

## (3)

?abs  # wartosci bezwgledne 
?mean # srednia arytmetyczna
mean(abs(x)) # średnia wartości bezwględnych wekora x

## (4)

?which.min # który element jest najmniejszy
# Dokładnie funkcja zwraca pozycję pierwszego minimum
?which.max # który najwiekszy
# pierwszego maksimum


# abs(x - 0) # odległość elementów x od 0
# pozycja elementu dla którego odległość jest najmniejsza (pierwszego takiego):
# which.min(x - 0)

# wybieramy żądany element:
x[ which.min(abs(x - 0)) ] 
# w ten sposób zachowujemy znak 
x[ which.max(abs(x - 0)) ] # analogicznie



# lub naczej:
# x.abs().mean()
library(magrittr)

x %>% abs() %>% mean()

## (5)

# podobnie jak w punkcie poprzednim:
x[ which.min(abs(x - 2)) ]
x[ which.max(abs(x - 2)) ]

# lub przez porównanie:
x[abs(x-2) == min(abs(x-2))]

## (6)

# x1 <- x - min(x) # przesuwamy wartości tak, że min(x1) == 0
# x1/max(x1)       # teraz wartość maksymalna jest równa 1

# jednym kroku:
(x - min(x)) / (max(x) - min(x))

## (7)

# (a)
# Tworzymy wektor napisów o zadanej długości (równej długości x):
n <- length(x)
y <- character(n)
# uzupełniamy go wartością "ujemne" na tych pozycjach na których x < 0
y[ x < 0 ] <- "ujemne"
# wartością "nieujemne" tam, gdzie x >= 0
y[ x >= 0] <- "nieujemne"
print(y)

# (b)
# funkcja ifelse():
ifelse(x < 0, "ujemne", "niujemne")

# (c)
# Tworzymy wektor dwuelementowy c("nieujemna", "ujemna")
# Wybieramy z niego elementy w odpowiedniej kolejności
# Dokładniej:
# x < 0 # wektor logiczny o wartościach:
# FALSE gdy x[i] >= 0
# TRUE gdy x[i] < 0
# (x < 0) + 1 będzie miał wartości:
# FALSE + 1 == 1
# TRUE + 1 == 2
# czyli odpowiednio wybieramy 1 lub 2 element wektora c("nieujemna", "ujemna")
c("nieujemna", "ujemna")[(x < 0) + 1]

## (8)

z <- rep("duzy", n) # powtarzamy 'duzy' n razy
z[ x < -1 ] <- "maly"    
z[ x <= 1 & x >= -1 ] <- "sredni"    
print(z)

# lub:
ifelse(x < -1, "maly", ifelse(x > 1, "duzy", "sredni"))
# zagnieżdząmy wywołania funkcji ifelse():
# if() { 1 } else { if () 2 else  3}

## (9)

?floor
# rozważamy przedziały o długości 1: ..., [-2, -1], [-1, 0], ....
# tworzymy wektor u o długości takiej samej co x
# w którym u[i] = k + 1/2 dla k <= x[i]  < k + 1
# funkcja ?floor zwraca ,,podłogę'' tzn. największą wartość całkowitą <= od zadanej jako jej argument wartości 
u <- floor(x) + 0.5
print(u)
