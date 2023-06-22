## PDU
## Zadanie 1.7

top <- c(" _ ","  "," _ "," _ ","   "," _ "," _ "," _ "," _ "," _ ")
mid <- c("| |"," |"," _|"," _|","|_|","|_ ","|_ ","  |","|_|","|_|")
bot <- c("|_|"," |","|_ "," _|","  |"," _|","|_|","  |","|_|"," _|")

# Zadanie polega na sklejaniu odpowiedni elemenetów wektrorów top, mid, bot.
# ?paste oraz wykład
# ?cat

x  <- c(4, 2, 1)
# zob. tez np. dla:
# x <- sample(0:9)
# ?sample() # losuje / permutuje elementy wektora

cat(paste(top[x+1], collapse = ""), # gora cyfr
    paste(mid[x+1], collapse = ""), # srodek cyfr
    paste(bot[x+1], collapse = ""), # dol cyfr
    sep="\n")


# napisy podane jako osobne elementy:
paste(paste(top[x+1], collapse = ""),
      paste(mid[x+1], collapse = ""),
      paste(bot[x+1], collapse = ""), sep ="\n") -> napis

cat(napis)

# wektor napisow:
paste(c(paste(top[x+1], collapse = ""),
        paste(mid[x+1], collapse = ""),
        paste(bot[x+1], collapse = "")), 
      collapse ="\n") -> napis2

cat(napis2)
