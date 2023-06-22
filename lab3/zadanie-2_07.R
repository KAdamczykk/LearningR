## PDU
## Zadanie 2.7

merge_string_list <- function(x, sep="") {
    paste(unlist(x), collapse=sep)
}

# Przyklad:
merge_string_list(list(c("a", "B", "C"), c("D", "e")))
