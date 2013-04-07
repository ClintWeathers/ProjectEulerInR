## Project Euler #9:
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# 
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 5^2 whih is 9 + 16 = 25.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# Holy crap, this was a bear.
# At first I tried to do it by putting a and b into a dataframe using the formulas 
# found here: http://is.gd/HSm2P5
# That just made me insane.
# Then I decided to go with nested loops. The first time, I tried just sheer brute force
# and it ran for hours before I stopped it. (I had yardwork to do.)
# The math part took ages to tune, but once I got that, it was just figuring out the R. 
# I couldn't figure out how to get the results of just the forloop, but then I found
# you can just make it into a function and run it that way. Yep, I'm still a dolt.

euler9 <- function(){
  for(a in 1:500+1){
    for(b in 1:500+1){
      ifelse((a*a) + (b*b) == (1000 - b - a) * (1000 - b - a), print(a*b*(1000 - b - a)), NA)
    }
  }
}
