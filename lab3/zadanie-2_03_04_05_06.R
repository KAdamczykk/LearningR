### Zad. 2.3

x <- c("a", "b", "c")
k <- 15
y <- x[floor(runif(k, min=1, max=length(x)+1))]
print(y)

### Zad. 2.4

x <- c(1, 2, 1, 4, 3, 4, 1)
x <- sample(5, 10, TRUE)

per_sortujaca <- order(x)
ind <- c(1, which(diff(x[per_sortujaca]) != 0) + 1)
ret <- x[sort(per_sortujaca[ind])]
ret

### Zad. 2.5

?tabulate

x <- sample(5, 10, TRUE)
y <- sample(10, 15, TRUE)

maks <- max(x, y)
mini <- min(x, y)

which(tabulate(x, maks) & tabulate(y, maks))
intersect(x, y)

### Zad. 2.6

?findInterval

x <- sample(10, 15, TRUE)
y <- c(5, 10, 15) 

findInterval(y, sort(x))/length(x)
# ecdf(x)(y)

