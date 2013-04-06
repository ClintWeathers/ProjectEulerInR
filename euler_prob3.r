## Euler Problem 3
## The prime factors of 13195 are 5, 7, 13 and 29.
## What is the largest prime factor of the number 600851475143 ?

factorfast <- function(n){
  numberlist <- seq_len(sqrt(n))
  numberlist[(n %% numberlist) == 0]
}
## The trick there, of course, is that you only create a len 
## vector of numbers up to the sqrt of n. Otherwise you totally
## bork R with a ginormous vector. Of course, since I'm a dolt
## it took me forever to think of it.


fax <- data.frame(factorfast(600851475143))
colnames(fax)[1] <- "factors"

library(gmp)
##  Yeah, I know this is pretty cheesy.

fax$prime <- sapply(fax,isprime)
##  adds a column to the data.frame with an isprime result.
##  There may be a way to do this with just column numbers, but
##  I couldn't figure it out. Alas.
##  in this case, "2" indicates a prime. 

max(fax$factors[fax$prime == 2])
## shows the max of the factors column where a matching 2 exists
## in the prime column.