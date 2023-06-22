lista <- list(1:5, "bol", TRUE, 3:5)
lista
typeof(lista)
3 %in% lista
3 %in% lista[1]
lista[1]
3 %in% c(2:4)
str(lista)
listaint <- list(2,4,7,3,8,1,0,5)
listaint
str(listaint)
#sort(listaint)
lista[[1]][2]
inty <- unlist(listaint)
inty
typeof(lista[[1]])
lista[[1]]
lapply(X = lista[[1]],FUN =  sum)

x <- c(1:6)
attr(x, "names") <- "Endru"
attributes(x)
names(x) = "Endru"
x
class(x) = "zjeb"
x
typeof(x)

A <- matrix(1:12, ncol = 4, nrow = 3, byrow = TRUE)
dimnames(A) <- list(letters[1:3], c("K1", "K2", "K3", "K4" ))
dim(A)
cbind(A, 1:3)
t(A)
rowSums(A)
rowMeans(A)

A

