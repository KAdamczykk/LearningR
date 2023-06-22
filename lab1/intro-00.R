#**intro**
#**0.1**
#1
7 %% 3
#2
7%/%3
#3
#a
3 + 4 * 7
#b
3 ^ 2 ** 3
#c
3/4 + 9
#d
2+2*4
#e
7 < 3 + 1
#f
(4 - 9) < 1 & (TRUE | FALSE)
#g
#"a" * 3, tak nie działa w R
#h
(1+5i) +7
#i
1L + TRUE + 1.5
#4
a <- seq(3,17, by = 2)
a
#dziwne
b <- letters
b 
c <- rep(c(TRUE, FALSE), each = 5)
c
d <- rep(c(TRUE, FALSE), times = 5)
d
length(a)
typeof(a)
length(b)
typeof(b)
length(c)
typeof(c)
length(d)
typeof(d)
#0.2
potega <- function(x, p){
  x ** p
}
x <- c(1,2,3,4)
potega(x,3)
plot(x, potega(x, 3), 
     xlab = "x", ylab = "p-ta potega", main = 'Wykres funkcji potega()')
#e <- scan(what = double())

#wyklad 02
#wydobywanie elemetów
k <- c(1:10)
k
k[1]
k[5]
# ujemne indexowanie wszystkie z wyjątkiem danego elementu

l