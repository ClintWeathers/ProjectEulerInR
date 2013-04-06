library(Kmisc)
## Using this library for the "str_rev" function which 
## reverses a string. One could use split, 
## split the string on "", rev that and compare the two.

ispal <- function(s){
    ifelse(s==str_rev(s), s, NA)
}
## checks for palindromes by seeing if the string is the same
## frontwards and backwards. It's stringy and not mathy, so 
## hopefully I can do a mathy version at some point.

list <- expand.grid(a = 100:999, b=100:999)
## This is the key, right here. This took me forever to figure out.
## This creates a dataframe (rather than just iterations) of your 
## numbers multiplied together. Once you have this, it's all cake.

list$c <- list$a * list$b
## just multiplies the a and b numbers iteratively.

list$d <- sapply(list$c, ispal)
## runs the ispal function on each of the results.

finals <- max(na.omit(list$d)) 
## creates a new vector of the palindromes for later examination.
## this step can be skipped if you just want to use
## max(na.omit(list$d)) and be done with it.

max(finals)
## returns the largest of them, 906609.
