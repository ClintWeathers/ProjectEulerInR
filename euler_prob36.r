# This is a new one for me, not a rework of one previously done in Python or Perl.
# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.
# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
# (Please note that the palindromic number, in either base, may not include leading zeros.)

# using this for the intToBin() function.
library(R.utils)

# I found this on stack overflow
is.pal <- function(x) {
  pal <- 0
  x <- as.character(x)
  forward <- unlist(strsplit(x, split =""))
  reverse <- rev(forward)
  if (all(forward == reverse)) {
    pal <- 1
  }
  return(pal)
}

# holy crap, some code that's actually mine

# intializes the sum object
sum <- 0

# loops through the numbers from one to a brojillion (maybe just 1,000,000)
# and checks to see if they're palindromic. If so, it convers them to binary using
# the intToBin() function from R.utils.  If the binary is also palindromic, it adds 
# the decimal number to the sum object.

# I suspect this could have been done more elegantly with some nested elseifs, but
# it's late and I'm out of coffee. 

for(x in 1:1e6){
  if(is.pal(x)==1){
    bin <- intToBin(x)
    if(is.pal(bin)==1){
      # is printing necessary? no. but I still like to do it. because I'm a dolt
      # and need the sanity check.
      print(bin)
      print(x)
      sum <- (sum+x)
    }
  } 
}

# Let's see what's behind Door Number Two!
print(sum)

# And so it goes.
# [1] 872187
