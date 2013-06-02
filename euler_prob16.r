#Euler Problem 16
#Sum of the digits of 2^1000
#Done two ways: For clarity and for pretty. You get to pick which you like best.
#Unfortunately, both require the GMP library in R since it freaks right the hell
#out on big numbers. I'm still not sure where the hell that NA creeped in from. 

library(gmp)
x <- as.bigz(2**1000)
y <- as.character(x)
z <- unlist(strsplit(y, ""))
a <- as.numeric(z)
b <- sum(na.omit(a))
b

library(gmp)
sum(na.omit(as.numeric(unlist(strsplit(as.character(as.bigz(2**1000)), "")))))