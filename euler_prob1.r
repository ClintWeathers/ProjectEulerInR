## Euler Problem 1, extra cheezy

x <- 1:999
## VERY IMPORTANT: The instructions say "find all the multiples
## of 3 or 5 BELOW 1000.  Not including 1000.  So x<- 1:1000
## will give you the wrong answer, off by 1000 too much.

try <- function(x){
  ifelse(x %% 5 == 0 || x %% 3 == 0, x, NA)
}

sum(na.omit(sapply(x, try)))
