# Euler 69 
# This one deals witih primes and Eulers Totient Function. What they
# want is the value of n <= 1,000,000 for whicn n/phi(n) is a maximum. So what
# we have to do is find the smallest phi(n) and the biggest n so that n/phi(n)
# is at its maximum. Reading about the function here: 
# http://en.wikipedia.org/wiki/Euler's_totient_function#Computing_Euler.27s_function
# makes it look like The easiest way to do this will be multiplying consecutive
# primes without going over 1,000,000.  
# I think. Let's see. Worst that happens is we fail miserably, right?

primes <- as.numeric(c(2,3,5,7,11,13,17,19,23,31,37,41,43,47,53,59,61,67,20))
# This list prods out to 5.419532104e+24. If it's not in there, something's way wrong.

consecPrimesToALimit <- function(){
  limit <- as.numeric(readline("What is your upper limit? "))
  # I like to ask for the input. Yes, it's dorky.
  start = 1  
  for(p in primes){
    if(start * p < limit){
      start = (start * p)
    }
  }
  sprintf(c("Your answer is:",start)) 
}

#[1] "Your answer is:" "510510"  
# Voila.

consecPrimesToAMillion()
# What is your upper limit?1e6
[1] "Your answer is:" "510510" 
# which is just the primes up to 19 multiplied together. 
