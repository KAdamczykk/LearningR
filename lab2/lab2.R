#laby 2
#1.1
set.seed(123)
rozklad <-round(rnorm(20,0,1),2)
rozklad
#1
rozklad[(rozklad > -2 & rozklad < -1 )| ( rozklad >1 &rozklad < 2)]
#2
nieujemne <- rozklad[rozklad >= 0]
ilosc_nieujemnych <- length(nieujemne)
ilosc_wszystkich <- length(rozklad)
ilosc_nieujemnych
frakcja <- ilosc_nieujemnych / ilosc_wszystkich
frakcja
#3
wart_b <- abs(rozklad)
wart_b
mean(wart_b)
#4
odleglosc <- function(x, p){
  abs(x - p)
}
dist0 <- odleglosc(rozklad, 0)
dist0
max(dist0)
min(dist0)
#5
dist2 <- odleglosc(rozklad, 2)
dist2
max(dist2)
min(dist2)
indexmx2 <- which(dist2 == max(dist2))
max2 <- rozklad[indexmx2]
max2
#itd
#6 idk
#7
wnapisow1 <- function(x){
  y <- rep(NULL, each = length(x))
  for (i in 1:length(x)){
    if( x[i] > 0 ){
      y[i] <- "NIEUJEMNA"
    } else {
      y[i] <- "UJEMNA"
    }
  }
  y
}
wartosci <- wnapisow1(rozklad)
wartosci
#8, 9 podobne
#1.2
korelacja_Pearsona <- function(x,y){
  sr_x <- mean(x)
  sr_y <- mean(y)
  od_x <- sd(x)
  od_y <- sd(y)
  n <- length(x)
  wynik <- 1/(n-1)
  zmienna <-0
  for (i in 1:n) {
    zmienna <-zmienna + ( (x[i] - sr_x) / od_x ) * ((y[i] - sr_y) / od_y )
    
  }
  wynik <- wynik * zmienna
}
kor <- korelacja_Pearsona(rnorm(2000, 0, 1), rnorm(2000, 5, 2))
kor

#1.3
korelacja_Spearmana <- function(x,y){
  suma <- 0
  for (i in 1:length(x)) {
    d_i <- rank(x[i]) - rank(y[i])
    kw_d_i <- d_i * d_i
    suma <- suma + kw_d_i
  }
  licznik <- 6* suma
  mianownik <- length(x) * (length(x)^2 - 1)
  ulamek <- licznik / mianownik
  wynik <- 1 - ulamek
}
jed <- rnorm(2000, 0, 1)
dw <- rnorm(2000, 5, 2)
kor <- korelacja_Spearmana(jed, dw)
kor
#1.4?

#1.5

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
#1.6 - sprawdz obliczenia
arcus_sinus <- function(x, m){
  wynik <- x 
  dod <- x
  for (n in 1:m) {
    zmiana <- (x**x * (2*n + 2 ) * (2*n+1)^2 ) / (4*(n+1)^2 * (2*n+3))
    dod <- zmiana * dod
    wynik <- wynik + dod
  }
  wynik
}
as <- arcus_sinus(0.345, 100)
as
asin(0.345)
#1.7
top <- c(" _ "," "," _ "," _ "," "," _ "," _ "," _ "," _ "," _ ")
mid <- c("| |"," |"," _|"," _|","|_|","|_ ","|_ "," |","|_|","|_|")
bot <- c("|_|"," |","|_ "," _|"," |"," _|","|_|"," |","|_|"," _|")
wypisz <- function(x){
  topy <- rep(NULL, each = length(x))
  midy <- rep(NULL, each = length(x))
  boty <- rep(NULL, each = length(x))
  for (i in 1:length(x) ) {
    w <- x[i]
    topy[i] <- top[w + 1]
    midy[i] <- mid[w + 1]
    boty[i] <- bot[w + 1]
  }
  list(topy, midy, boty)
}
listunia <- wypisz(c(4,2,0))
listunia
#which mean -> pokazuje na którym miejscu jest index
