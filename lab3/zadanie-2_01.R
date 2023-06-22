## PDU
## Zadanie 2.1

x <- sample(10, 100, TRUE) # generujemy przykladowe dane
# 1.) Sortujemy wektor x
x_sorted <- sort(x)
# 2.) wyznaczamy długości ciągów kolejnych unikatowych wartości z x
r <- rle(x_sorted)
# 3.) Wybieramy tę która odpowiada nahdłuższemu ciągowi tj. występuje
#     najczęsciej
moda <- r$values[which.max(r$lengths)]
print(moda)
