#1
vecA <- c(1,2,3,4,5) 
matA <- matrix(0, nrow = 5, ncol = 5) 

for (i in 1:5){ 
  for (j in 1:5){ 
    matA[i,j] <- abs(vecA[i]-vecA[j]) #
  }
}

print(matA) 

#2
asterisks <- "" 
for(i in 1:5){  
asterisks <- paste(asterisks, "*") 

cat(asterisks, "\n")
}


#3
n <- as.integer(readline(prompt="Enter the number of terms: "))

a <- 0
b <- 1

print(b)

repeat {
  c <- a + b
  if (c > 500) {  
    break
  }
  print(c)
  a <- b
  b <- c
}

#4
View(HouseholdData)

#a. What is the R script for importing an excel or a csv file? Display the first 6 rows of
#the dataset? Show your codes and its result