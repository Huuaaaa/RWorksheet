#1.
HouseholdData <- data.frame(
  ShoeSize = c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5, 9.0, 13.0 , 7.5 ,10.5, 8.5, 12.0, 10.5,
               13.0 ,11.5, 8.5, 5.0, 10.0, 6.5, 7.5, 8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0),
  Height = c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0, 72.0, 64.0, 74.5, 67.0, 71.0, 71.0,
             77.0, 72.0, 59.0, 62.0, 72.0, 66.0, 64.0, 67.0, 73.0, 69.0, 72.0, 70.0, 69.0, 70.0),
  Gender = c("F","F","F","F","M","F","F","F","M","F","M","F","M","M",
             "M","M","F","F","M","F","F","M","M","F","M","M","M","M")
)

#a. Describe the data
#The data frame contains information on individuals' shoe sizes, heights, and genders.

#b.Subsets for Male and Female
SubM <- HouseholdData[HouseholdData$Gender == "M", c("ShoeSize", "Height")]

SubF <- HouseholdData[HouseholdData$Gender == "F", c("ShoeSize", "Height")]

SubM
SubF

#c. Mean of Height and Shoe Sizes
MeanSS<- mean(HouseholdData$ShoeSize)
MeanH<- mean(HouseholdData$Height)

MeanSS
MeanH

#d. Is there a relationship between shoe size and height? Why?
#Yes, there is a relationship between the shoe size and height since it can be 
#observed that taller people often have a larger shoe sizes.

#2. 
months_vector <- c("March","April","January","November","January",
"September","October","September","November","August",
"January","November","November","February","May","August",
"July","December","August","August","September","November","February", "April")

factor_months_vector<- factor(months_vector)
print(factor_months_vector)

#3.
summary(months_vector)
summary(factor_months_vector)

#The first summary provided the information about the  length, class, and mode. 
#It shows that the vector consists of 24 character elements.
#On the other hand, the second summary provided the count on how many times each month appears
#in the original data. Overall, both summary are useful as they provided the length of the data as well as how many elements it contained for it month.

#4
Direction <- c("East", "West", "North")
Frequency <- c(1, 4, 3)
factor_data<-c(Direction, Frequency)
new_order_data <- factor(factor_data,levels = c("East","West","North"))
print(new_order_data)

#5
#a. Import the excel file into the Environment Pane using read.table() function.
ExcelData<- read.table("/cloud/project/Worksheet#4/import_march.csv", header = TRUE, sep = ",")

#b. View the dataset. Write the R scripts and its result.
View(ExcelData)

#6

randomnum <- sample(1:50, 1)

cat("The chosen number is:", randomnum, "\n")

if (randomnum == 20) {
  cat("TRUE\n")
} else if (randomnum < 1 || randomnum> 50) {
  cat("The number selected is beyond the range of 1 to 50\n")
} else {
  cat(randomnum, "\n")
}

#7

