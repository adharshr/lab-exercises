## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# my.num is an number and initials is a string, so they can't be in the vector

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# the stringr package was installed, but it was never loaded

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# the variable is called "initials" but the person who wrote this code passed in a variable called "initial" 


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
v1 <- c(1, 2, 3)
typeof(v1)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  n <- abs(length(v1) - length(v2))
  message <- paste("The difference in lengths is", n)
  return(message)
}

# Pass two vectors of different length to your `CompareLength` function
v2 <- c(4, 1)
CompareLength(v1, v2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  n <- abs(length(v1) - length(v2))
  if(length(v1) > length(v2)) {
    return ("Your first vector is longer by N elements")
  } else if(length(v2) > length(v1)) {
    return("Your second vector is longer by N elements")
  }
  
  return('vectors are equal in length')
}
# Pass two vectors to your `DescribeDifference` function
print(DescribeDifference(v1, v2))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


