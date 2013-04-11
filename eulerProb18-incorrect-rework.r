# Well, this one was way wrong.
# Why? Because I didn't read the instructions carefully.
# Why not? Because I'm a dolt. 
# But, I can see where this sums() function could come in handy later.

con  <- file("triangle.txt", open = "r")

open(con)
results.list <- list();
current.line <- 1
while( length(line <- scan(con,what=integer(0),nlines=1,quiet=TRUE))>0 ) {
  results.list[[current.line]] <- line
  current.line <- current.line + 1
}
close(con)

sums <- function(){
  total <- 0
  for(x in 1:length(results.list)){
    y <- (max(results.list[[x]]))
    #print(y)
    total <- y+total
    #print(total)
    } 
  print("And your total is:")
  print( total)
  }