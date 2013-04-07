# Yes, I'm reusing the code from Problem 7. Because that's what grownups do.
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

x <- 1:2000000
 

library(gmp)
# Using this for the isprime() function. Yes, we could write out
# a nice fast primefinder. But we could also use sharp pointy sticks
# to hunt mastodons, too. Me, I like tools.

list <- ifelse(isprime(x), x, NA)
# Just creating an integer list of either prime numbers from the
# isprime() function or NA's. I like NA rather than null because you 
# can use na.omit() after that.

nona <- na.omit(list)

sum(as.numeric(nona))

# [1] 142913828922