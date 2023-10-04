LETTERS
letters

#a. You need to produce a vector that contains the first 11 letters
LETTERS [1:11]

#b. Produce a vector that contains the odd numbered letters.
odd <-LETTERS [1,25,2]
odd


#c.Produce a vector that contains the vowels




#d. Produce a vector that contains the last 5 lowercase letters.
letters [1:5]

#e. Produce a vector that contains letters between 15 to 24 letters in lowercase.
letters [15:24]




#2 Vector of Average Temperatures
#a
City <- c("Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island ,Davao City")
City


#b
Temp <- c("42°C, 39°C, 34°C, 34°C, 30°C, 27°C")
Temp

#c.
df <- data.frame(City, Temp)
df

#The results are: 
#City
#1 Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island ,Davao City
#Temp
#1 42°C, 39°C, 34°C, 34°C, 30°C, 27°C


#d.
names(df) <- c("City", "Temperature")
names(df)











#2
#a.What will be the R code for the #2 question and its result?

matr <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4, byrow = TRUE)
matr

#b. Multiply the matrix by two. What is its R code and its result?
matrs <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4, byrow = TRUE)*2
matrs

#c. What is the content of row 2? What is its R code?
matrs [2]

#d. What will be the R code if you want to display the column 3 and column 4 in row 1
#and row 2? What is its output? 
matrs
matrs[c(1,2),c(3,4)]

#e. What is the R code is you want to display only the columns in 2 and 3, row 3?
matrs[3, 2:3]

#f. What is the R code is you want to display only the columns 4? What is its output?  
matrs[,4]

#g. Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro
#for the matrix that was created in b.‘. What is its R code and corresponding output?


