library(stringr)
library(hash)
names <- readLines("names.txt")
names <- sort(names)
h <- hash(LETTERS, 1:26)

rattle <- function(){ 
  for(i in 1:length(names)){
    print(strsplit(names[i], ""))
  }
}