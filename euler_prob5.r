# Note: the only reason I know how this works is from a discrete
# math class where we talked about multisets and prime factorizaton

nums <- 1:20
library(gmp)
# for factorize function because the answer is going to be the
# multiset of the prime factors of 1:20
# That's the biggest set of each prime so in this case it's
# 2  2  2  2  3  3  5  7  11 13 17 19
# because 16 has the most factors of 2, 9 has the most factors of 3,
# and the rest are unique primes. 

fax <- lapply(nums, factorize)

# This returns a list, if there's a way to extract the unique
# primes out of it, I couldn't find it.
# At this point, I stopped using R because I couldn't figure out how to
# extract just the multiset from this weird list object that
# the factorize() function returned.

2*2*2*2*3*3*5*7*11*13*17*19
# [1] 232792560