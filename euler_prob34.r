#Euler Problem 34 in R.
#This is a new one for me, not a rework.

#boringFactorial is the exact same recursive ! function you wrote in Discrete Math back when 
#you were a sophomore. It's quite possible that a well-written iterative ! function would have worked faster.See the notes above
#Whatever. There's a nice breeze blowing in and the sun is shining. I'm in no great hurry.

boringFactorial <- function(n) {
  if ( n <= 1 ) 1
  else n * boringFactorial(n-1)
}

#This would have been much easier if I could splitstring on a numeric, but alas R is what R is.
#So we turn the number into a string, split it, get the ! of the digits, add them back up and if that 
#sum is the same as our number, we print out and if not, well, we move on. 
#Many are called, few are chosen.

yup <- function(i){
  y = as.character(i)
  z = (as.numeric(unlist(strsplit(y,""))))
  a = sapply(z, boringFactorial)
  ifelse(sum(a)==y, print(c(i, "YUP")), NA)
}

#The hook of the whole thing, of course is this:
#How far up do you want to go? Well, boringFactorial(9) == 362880
#So it's not going to be any higher than (362880 * 9)/4, I'd bet. 
#Let's go with 3,265,920/4 or a nice round 1e6 .

system.time(for(x in 3:1e6){yup(x)})

#[1] "145" "YUP"
#[1] "40585" "YUP"  
#user  system elapsed 
#117.864   0.076 119.794 