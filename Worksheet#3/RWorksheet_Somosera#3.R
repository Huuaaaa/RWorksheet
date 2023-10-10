LETTERS
letters

#a. You need to produce a vector that contains the first 11 letters
FLet<- LETTERS [1:11]
FLet

#b. Produce a vector that contains the odd numbered letters.
OddLet <- LETTERS[seq(1,25,2)]
OddLet

#c.Produce a vector that contains the vowels
vwls <- c(letters[which(letters %in% c("a","e","i","o","u"))], 
            LETTERS[which(LETTERS %in% c("A","E","I","O","U"))])
vwls

#d. Produce a vector that contains the last 5 lowercase letters.
lastfv<- tail(letters, 5)
lastfv

#e. Produce a vector that contains letters between 15 to 24 letters in lowercase.
Betweenletters<- letters[15:24]
Betweenletters


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

#e
str(df)
#The output displays a message "1 obs. of 2 variable:" and presents to show the city and temperature that was entered earlier.

#f
df[3:4,]

#2 MATRIX
#a.What will be the R code for the #2 question and its result?

matr <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4, byrow = TRUE)
matr

#b. Multiply the matrix by two. What is its R code and its result?
matrix(c(1:8, 11:14), nrow = 3, ncol = 4, byrow = TRUE)*2

#c. What is the content of row 2? What is its R code?
matrix(c(1:8,11:14),ncol=4,nrow=3)[2,]

#d. What will be the R code if you want to display the column 3 and column 4 in row 1
#and row 2? What is its output? 
matrix(c(1:8,11:14),ncol=4,nrow=3)[1:2,c(3,4)]

#e. What is the R code is you want to display only the columns in 2 and 3, row 3?
matrix(c(1:8,11:14),ncol=4,nrow=3)[3,c(2,3)]

#f. What is the R code is you want to display only the columns 4? What is its output?  
matrix(c(1:8,11:14),ncol=4,nrow=3)[,4]

#g. Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro
#for the matrix that was created in b.‘. What is its R code and corresponding output?

newmat <- matrix(c(1:8,11:14)*2,ncol=4,nrow=3)
rownames(newmat) <- c("isa","dalawa","tatlo")
colnames(newmat) <- c("uno","dos","tres","quatro")
newmat

#h.
dim(matr) <- c(6,2)
matr

#3
#a.
arr <- c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)
arr

arry3D <- array(arr, dim = c(2, 4, 3))
arry3D

#b.
dim(arry3D)
#The array has three dimensions

#c.
dimnames(arry3D) <- list(c("a", "b"), LETTERS[1:4], c("1st-Dimensional Array", "2nd-Dimensional Array", "3rd-Dimensional Array"))
arry3D

#It's output would be the following:
#, , 1st-Dimensional Array
#A B C D
#a 1 3 7 9
#b 2 6 8 0
#, , 2nd-Dimensional Array
#A B C D
#a 3 5 1 3
#b 4 1 2 6
#, , 3rd-Dimensional Array
#A B C D
#a 7 9 3 5
#b 8 0 4 1