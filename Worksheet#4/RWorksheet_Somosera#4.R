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

#b.
SubM <- HouseholdData[HouseholdData$Gender == "M", c("ShoeSize", "Height")]

SubF <- HouseholdData[HouseholdData$Gender == "F", c("ShoeSize", "Height")]

SubM
SubF

