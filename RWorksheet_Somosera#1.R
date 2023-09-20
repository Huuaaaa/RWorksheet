#1 Vector
age <-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,51, 35, 24, 33, 41)
age

#a. How many data points?
#There are 34 data points 

length(age)

#2. Find the reciprocal
reciprocal <- 1 / age
reciprocal

#3. Assign 
new_age <- c(age,0,age)

#What happen to the new_age?
#It displayed two sets of "age" between 0

#4. sort 
sort(age)

#5 Maximum and Minimum 

min(age)
max(age)

#6
data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, 2.7)

length (data)
#a. How many data points?
#There are 12 data points

#7
new <-data*2
#The Data doubled its value

#8.1
One <- 1:100
One

#8.2
Two <- 20:60
Two

#8.3
Three <- mean(Two)
Three

#8.4  
Four <- sum(51:91)
Four

#8.5
Five<- 1:1000 
Five

CombinedData <- c(One,Two,Three,Four)

#a.How many data points from 8.1 to 8.4?
  #There are 143 Data Points

length(CombinedData)

#b. Write the R code and its output from 8.1 to 8.4
CombinedData

#c. For 8.5 find only maximum data points until 10.
Five <- seq(from = 1, to = 10)
Five

#9
Vec <- 1:100 



#10
backwards <- seq(from = 100, to = 1)
backwards

#11
natnum <- 1:24
natnum

multiples <- natnum[natnum %% 3== 0  | natnum %% 5 == 0]
multiples

#Find the sum of these multiples.
summulti<- sum (multiples)
summulti


#a. How many data points from 10 to 11?
length(c(backwards, summulti))

#b. Write the R code and its output from 10 and 11.
Combined1011 <- c(backwards, summulti)
Combined1011

#12 Describe the output
{ x <- 0+ x + 5 + }
#The output projects an error message that mentions an unexpected brace '}' in the statement

#13
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
score

#Find x[2] and x[3]
score[2]
score[3]

#14
a =c(1,2,NA,4,NA,6,7)
a

#a. Change the NA to 999
print(a,na.print="-999")

#Describe the output
#The output changed all the "NA" from the previous statement to -999

#15 

name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)

#What is the output of the above code?
#Initially if you run the code as it is it the first 3 line of code displays the same code provided but the last line results to the Version of the R that you are using. 