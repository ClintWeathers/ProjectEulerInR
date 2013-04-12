# Project Euler #29
# Basically it's a nested loop that dumps out to a list.
# But because it's R, it has to punish you for using a nested loop.
# R's syntax makes no sense sometimes. I literally hit on this idea
# at random.

powers<-list() 
for(b in 2:100) { 
  powers[[b]] <- list() 
  for( a in 2:100) powers[[b]][[a]]<-a^b
} 

length(unique(sort(unlist(powers))))
# I do love how elegantly functions stack in R. It's pretty.

# [1] 9183

# Word to your mother. We outa here.




