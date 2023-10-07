#1
#a.
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
#a
month <- c("Jan", "Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)

df <- data.frame(Month = month, Price_Per_Liter = price_per_liter, Purchase_Quantity = purchase_quantity)
df

df_side <- t(df)
dffinal <- as.data.frame(df_side)
dffinal

#b
avgfuelexp <- weighted.mean(price_per_liter, purchase_quantity)
avgfuelexp


#7
rivers
rivers <- rivers [1:7]
rivers
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data

#What are the results? 
#[1]      7.0000   4205.0000    600.7143    450.0000 163611.2381    404.4889
#[7]    320.0000   1459.0000

#8
#a Create vectors for Power Ranking, Celebrity Name, and Pay
Power_Ranking <- 1:25
Celebrity_Name <- c(
  "Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods",
  "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos",
  "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali",
  "Paul McCartney", "George Lucas", "Elton John", "David Letterman",
  "Phil Mickelson", "J.K. Rowling", "Brad Pitt", "Peter Jackson",
  "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant"
)
Pay <- c(
  67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25,
  39, 45, 32, 40, 31
)

celebrity_data <- data.frame(Power_Ranking, Celebrity_Name, Pay)
celebrity_data

#b

celebrity_data$Power_Ranking[celebrity_data$Celebrity_Name == "J.K. Rowling"] <- 15
celebrity_data$Pay[celebrity_data$Celebrity_Name == "J.K. Rowling"] <- 90

celebrity_data

#c
write.csv(celebrity_data, file = "PowerRanking.csv", row.names = FALSE)
Excel_Data <- read.csv("PowerRanking.csv")
View(Excel_Data)

#d
TntoTwnty <-Excel_Data[10:20, ]
save(TntoTwnty, file = "Ranks.RData")
TntoTwnty

#e
#The output displays the data from Power Ranking 10 to 20 that starts with Dan Brown and ends with Bradd Pitt


#9
#a
install.packages("readxl")
library(readxl)
Excel_Vienna <- "hotels-vienna.xlsx"
Excel_Data <- read_excel(Excel_Vienna)
View(Excel_Data)

#b
dimensions <- dim(Excel_Data)
dimensions

#c
View(Excel_Data)
selected_columns <- Excel_Data[, c({"country","neighbourhood", "price", "stars", "accommodation_type", "ratings"})]
View(selected_columns)


#10
#a
Veggies <- c("Tomato","Carrot","Potatoes","Cucumber","Eggplant","Bell Pepper","Squash","Cabbage","Radish","Mushroom")
Veggies 

AddVeg<- c("Kangkong","Ampalaya")

#b
LastVeg<-c(Veggies, AddVeg)
LastVeg

#c
FourVeg<- c("Artichoke", "Beet", "Broccolli", "Sitaw")
UpdateVeg <- c(LastVeg[1:5], FourVeg, LastVeg[6:length(LastVeg)])
UpdateVeg

length(UpdateVeg)
#There are 16 data points

#d
Bye<- c(5, 10, 15)
Final<-UpdateVeg[-Bye]
Final

length(Final)
#There are 13 vegetables left