names <- readLines("names.txt")
names <- sort(names)
names <- tolower(names)
# I will admit there was some non-R datamungery that happened beforehand.
# I took the original names.txt and ran it through a sed that stripped
# out the quotation marks and sub'd a \n for each comma. I'm sure it could be
# done in R with mabe a scan and some str_replace. 
# The tolower(names) was just because it wouldn't change the score (unlike using
# some sort of ascii translation) and I hate stuff in all caps. 

l <- length(names)
# gives you the length of the list of names, 5163.

hashtable <- data.frame(row.names = letters, nums = 1:26)  
# Herein lies the rub. This is the key to the whole thing right here.
# The hash() function won't work because
# it only takes values with numbers. Forcing the row.names to be letters
# basically makes the whole thing a hashtable right out of Perl. In python
# it'd be called a dictionary. 

scorer <- function(x) {
  nameletters <- unlist(strsplit(x, split = ""))
  #splits the names by letter which returns a list, and unlists that.
  score <- sum(hashtable[nameletters, "nums"])
  #sums the hashed results (letter value) for all the letters in the name.
  return(score)
  #you have to do return here since it's a function and you need to use the result.
}


score <- as.numeric(l) 
# This has to be numeric. It pukes with an error if you use just l because
# l by itself is typed as an integer. 

for (i in 1:l) {
  score[i] <- scorer(names[i])
}
# This loops through each name on the list and scores it using the scorer(x) function.

result <- sum(score * (1:l))
# This multiplies the score of each name, multiplies it by the position on the list
# of names, and sums those. 

print(result)
# [1] 871198282
# Voila. 