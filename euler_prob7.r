x <- 1:200000
# Gotta figure it's under 200K, right? Right? Please be?
# Otherwise I'm going to be up all night. 

library(gmp)
# Using this for the isprime() function. Yes, we could write out
# a nice fast primefinder. But we could also use sharp pointy sticks
# to hunt mastodons, too. Me, I like tools.

list <- ifelse(isprime(x), x, NA)
# Just creating an integer list of either prime numbers from the
# isprime() function or NA's. I like NA rather than null because you 
# can use na.omit() after that.

nona <- na.omit(list)
# Just like that. 

nona[[10001]]
# Returns the 10,001st instance of a number deemed as prime by 
# the isprime() function. 