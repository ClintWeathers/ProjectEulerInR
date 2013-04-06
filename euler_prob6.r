## A nice, easy one in R. 

x <- 1:100
# List of numbers from 1-100

sq <- function(x){
  x*x
}
# Dirty function that just squares x. Only there so I can use sapply.

square <- sapply(x, sq)
squares <- sum(square)
squares
# Squares each of the numbers in the list x, sums those squares and
# prints that number. Why? Because I'm a dolt, and I need to see it
# as a basic sanity check.


sums <-sum(x)
sumsq <- sq(sums)
sumsq
# Sums all the numbers in the list x, then squares that sum.
# prints that number. Why? lapply(clint, stillADolt).

sumsq - squares
# Voila!