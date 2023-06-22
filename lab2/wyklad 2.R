#wyklad 2
#1. wektoryzacja

#logarytm
log(1:10)
#w R reguła zawijania wektorow
#1:5 * c(1, 10, 100)

#wydobywanie i modyfikowanie elementów
f <- 1:10
f
#indeksowanie jest od 1
f[0]
f[1]
f[1.7] #tak można, bierze podłoge
f[-1] #wszystko oprócz elementu podanego po -
f[-c(1,4,7)] #to samo oprócz wszystkiego co w wektorze
f[c(3,2,1)]
# nie można ieszać w wektorze + z - 

#po wektorach logicznych
#TRUE - wybieramy, FALSE- pomijamy
f[rep(c(TRUE, FALSE), each = 5)]
f[c(TRUE, FALSE)] #zawijanie
f[c(TRUE, FALSE, TRUE)]

#rozklad normalny
g <- rnorm(25)
g
g>0 #zwraca wartoscilogiczne czy to prawda
g[g>0] #zwraca wart wieksze od 0
#mean - wart srednia

library(MASS) #simillar to import
anorexia #przykladowe dane o anoreksji
 #DZIAŁANIE Z DANYMI
h <- anorexia$Postwt
leczenie <- as.character(anorexia$Treat) # jako string
h
leczenie
#liczenie srednich
mean(h[leczenie == 'CBT'])
#porownania
anorexia[anorexia$Prewt < anorexia$Postwt,]
#modyfikacje
h[1] <- 789
h
h[c(2,5,6)] <- c(-1, 40, 33) #musi byc tyle samo do wymiany
h
length(h)
h[88] #nie zawija tu
h[88] <- 4 
h

#LISTY
#podobne do pythona
l <- list(1:4, letters, TRUE, sum)
l
#mozna mieszac typy, ale się segregują one
#uzywa sie podwojnych naiasow do poznania
typeof(l)
str(l) #ladna prezentacja
is.vector(l)
is.atomic(l) #nie jest to w atomowy ale wektor
#wydobywanie i modyfikowanie elementow

