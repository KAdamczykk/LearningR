# lab2 bez k petli bo nie mozna 

# instrukcje 
#rnorm -  roxklad normalny
# round - zaokraglenie
# x[x>0] - wypisanie wartosci z wektora ale z jakims warunkiem
# & - i ; | - lub 
# lenght - ilosc elementów w wektorze
#sum (warunek) - ilosc rzeczy spełniających warunek
# abs - wart bezwzgledna
# mean - srednia arytmetyczna
#which.min() - zwraca element minimaly z warunku
#ifelse (warunek, co robic jak spełnia, co rbić jak nie spełnia)
# sum - suma równiez
#sd - odchylenie standardowe
# cor(elementy, method = " metoda") - korelacja
# rank- ranga
# sort- sortuje elementy wektora
# factorial - silnia
# cumprod - liczy szereg geometryczny (wyraz pierwszy, skok)
# paste - skleja wektory po przekonwertowaniu na charatctery
# cat - printuje, ale wiecej opcji moedyfikacji i szybsze
# sample() - losuje cyfry
# stopifnot(warunki prawdziwe) - if not, raise exception
# rep - powtarza argument; times- tyle razy, each- kazdy po tyle razy
# seq - tworzy sekwencje znakow od do i albo uzywamt by - okeslamy zmiane, lub length.out - okreslamy dlugosc wektora wynikowego
set.seed(123)
#zadanie 1
x <- round(rnorm(20, 0, 1), 2)
x
#1.1
x[(x >= -2 & x <= -1) | (x >= 1 & x <= 2)]
#1.2
length(x[x >= 0])
sum(x >= 0)
#1.3
mean(abs(x))
#1.4
x[which.min(abs(x-0))]
x[which.max(abs(x-0))]
#1.5 podobnie
#1.6
#metoda matematyczna- skalowanie wektora na inny przedzial
x1<- x - min(x)
x1/max(x1)
#1.7
ifelse(x <0, "ujemne", "nieujemne") 
#1.8
ifelse(x < - 1, "maly", ifelse(abs(x) < 1, "sredni", "duzy"))
#1.9 - trudne

# zadanie 2
a <- rnorm(20, 0, 1); b <- 10*a+2
sum(((a - mean(a) )/ sd(a) )* ((b - mean(b)) / sd(b))) * (1/(length(a) - 1))
cor(a,b, method = "pearson")

# zadanie 3
1 - ((sum((rank(a) - rank(b))^2) * 6 ) / (length(a) * (length(a) ^2 -1)))
cor(a,b, method = "spearman")

#zadanie 4
winsor <- function(x,k){
  xs <- sort(x)
  #suma srodka
  (sum(xs[1+k] : xs[length(x) - k]) + 
    k*xs[k+1] + k* xs[length(x) - k ]) / length(x)
    
}
winsor(a, 3)
a
#zadanie 5
factorial2 <- function(n){
  silnia <- 1
  for (i in 1:n){
    silnia <- silnia * i
  }
  silnia
}
factorial_stirling <- function(n){
  ulamek <- n / exp(1)
  pot <- ulamek ^ n 
  pierw <- sqrt(2*pi*n)
  silnia <- pot * pierw
}
pr1 <- factorial(5)
pr2 <- factorial2(5)
pr3 <- factorial_stirling(5)
blad <- function(x, x_0){
  licznik <- abs(x - x_0)
  blond <- licznik / x
  blond
}
bl1 <- blad(pr1, pr2)
bl2 <- blad(pr1, pr3)
bl1
bl2
#zadanie 6
#sposob srednio wydajny - duzo nie iteruje
asin2 <- function(x, m){
  stopifnot(is.numeric(m), length(m) == 1, is.numeric(x), length(x) == 1, abs(x) <1)
  n <- 0:m  #zeby iterowac po elementach 1 do m
  licznik_s <- factorial(2 *n) 
  mianownik_s <- factorial(n)
  licznik <- licznik_s * x^(2*n + 1)
  mianownik <- 4^n * mianownik_s^2 * (2*n + 1)
  sum(licznik/mianownik)
}
asin2(0.43, 10)
asin2(0.43, 100)
asin2(0.43, 1000)
asin(0.43)
#sposob bardziej wydajny
# policzenie kroku 
asin3 <- function(x, m){
  i <- 1:m
  r <- x**2 * (2*i - 1)^2 / (2*i *(2*i + 1))
  w <- cumprod(c(x,r))  
  sum(w)
}
asin3(0.43, 10)
asin3(0.43, 100)
asin3(0.43, 1000)

#zadanie 7
top <- c(" _ ","  "," _ "," _ ","   "," _ "," _ "," _ "," _ "," _ ")
mid <- c("| |"," |"," _|"," _|","|_|","|_ ","|_ ","  |","|_|","|_|")
bot <- c("|_|"," |","|_ "," _|","  |"," _|","|_|","  |","|_|"," _|")
r <- c(4,2,1)
cat(paste(top[r+1], collapse = ""),
    paste(mid[r+1], collapse = ""),
    paste(bot[r+1], collapse = ""),
    sep = "\n")
df <- c(1,2,NA,4,6, 0 , 5, 10000)
print(df, right = is.numeric(df[4]), na.print = "", justify = "right", zero.print = "." )
