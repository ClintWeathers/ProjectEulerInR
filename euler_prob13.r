options(digits = 11)
# This is the key, right here. Normally, R will only give you 6 digits on a 
# numeric before it drops into EE notation. You can force it to go up to 
# 22 digits. All hail Stack Overflow for that bit of awesome. 

list <- scan("bignums.txt")
# This reads your lines in, one at a time. Works very much in the same way
# that "readline" does in Perl. If you do a ?scan, you can see that you can
# specify different types to scan in. Looks like the default is numeric since
# that's what I got. 

result <- sum(list)
# Simple enough. Just sums up your numbers. 

library(stringr)
# For Hadley Wickham's str_replace() function. 

print(str_replace(substring(result, 1, 11), "\\.", ""))
# This just prints the first 11 characters (10 plus the period) and 86's the
# period to give you the exact answer you need. 
# Other than the EE notation, the answer I got this time was the same as I got
# from my python answer when I literally read the lines in one by one (why
# doesn't R have something like that?) and summed each line, then summed the sum
# of the sums. R should also have something like list.append.  I digress.

# "5537376230"