#a
seqA <- -5:5
seqA

#The output displays a sequence from -5 to 5

#b
x <- 1:7
x

#x is equal to 1 2 3 4 5 6 7

#2
vecseq <- seq(1, 3, by=0.2)
vecseq

#The output displays a sequence of number from 1 to 3 by adding 0.2 on each number

#3
Cencus <- c(34,28,22,36,27,18,52,39,42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,18)
Cencus

#a. Access 3rd element, what is the value?
#22
Cen3rd <- Cencus[3]
Cen3rd

#b. Access 2nd and 4th element, what are the values?\
#28 36
Cencus[c(2, 4)]
Cencus

#c. Access all but the 4th and 12th element is not included

Not1 <- Cencus[-4]
Not1
Not2 <- Cencus [-13]
Not2

NotBoth <- c(Not1, Not2)
NotBoth

#4
x <- c("first"=3, "second"=0, "third"=9)
names(x)
#a
x [c ("first", "third")]
#The output displays the value assigned to the variables "first","second" which is 3 and 0 respectively.

#5
x <- -3:2
x
#a. Modify 2nd element and change it to 0

x[2] <- 0
x

#Since we modified that the 2nd number of the sequence will be changed to 0 the output displays -3  0 -1  0  1  2 as the final output.

#6
month <- ("Jan,Feb,March,Apr,May,June")
price_per_liter <-("52.50,57.25,60.00,65.00,74.25,54.00")
purchase_quantity<-("25,30,40,50,10,45")

df <- data.frame (Month = month,
                  Price_per_Liter = price_per_liter,
                  Purchase_Quantity = purchase_quantity)
df



#7
riv <- rivers [1:7]
length(riv)
