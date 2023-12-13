#1 

student <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
PreTest <- c(55, 54, 47, 57, 51, 61, 57, 54, 63, 58)
PostTest <- c(61, 60, 56, 63, 56, 63, 59, 56, 62, 61)

StudentScore <- data.frame(Student = student, Pre_Test = PreTest, Post_Test = PostTest)
print(StudentScore)

#a
if (!requireNamespace("Hmisc", quietly = TRUE)) {
  install.packages("Hmisc")
}

if (!requireNamespace("pastecs", quietly = TRUE)) {
  install.packages("pastecs")
}

library(Hmisc)
library(pastecs)

#2. 
# Your data
fertilizer_levels <- c(10, 10, 10, 20, 20, 50, 10, 20, 10, 50, 20, 50, 20, 10)

# Convert to an ordered factor
ordered_fertilizer <- factor(fertilizer_levels, levels = c(10, 20, 50), ordered = TRUE)

# Print the result
print("Original Data:")
print(fertilizer_levels)
print("Ordered Factor:")
print(ordered_fertilizer)


#3 You can use a factor to represent the levels undertaken by 10 subjects.

ExrLvl <- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l")

ExrFact <- factor(ExrLvl, levels = c("n", "l", "i"), labels = c("none", "light", "intense"))

print(ExrFact)


#4
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
#a. 
StateFact<- factor(state)
print(StateFact)
#The resu;lts provide the different "Levels" provided in the vector.

#5.
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
#a. Sample Mean

incmeans <- tapply(incomes, StateFact, mean)
print(incmeans)

#b. The results show the mean for each state provided 

#6.
stdError <- function(x) sqrt(var(x)/length(x))
incster <- tapply(incomes, statef, stdError)

#a. The standard error is that the object 'statef' is not found as the vector was named as 'state'.


#7.
install.packages("titanic")
library(titanic)

data("titanic_train")
titanic_data <- titanic_train


Survived <- subset(titanic_data, Survived == 1)
NotSurvived <- subset(titanic_data, Survived == 0)

print(Survived)
print(NotSurvived)

#8
install.packages("readr")
library(readr)
BCancer <- read_csv("Worksheet#6/breastcancer_wisconsin.csv")
View(BCancer)

#a. The dataset is all about the recorded data about breastcancer. It includes the ID which I assume for each 
#individual and its characteristics such as clump thickness, size and shape uniformity.

#b1
StdrdErr<- sd(BCancer$clump_thickness) / sqrt(length(BCancer$clump_thickness))
StdrdErr

#b2
MeanAd<- mean(BCancer$marginal_adhesion)
SDAd <- sd(BCancer$marginal_adhesion)
CoAd <- (SDAd / MeanAd) * 100
CoAd

#b3
NullVal <- sum(is.na(BCancer$bare_nucleoli))
NullVal

#b4
MeanBlCh <- mean(BCancer$bland_chromatin, na.rm = TRUE)
SDBlCh <- sd(BCancer$bland_chromatin, na.rm = TRUE)
MeanBlCh
SDBlCh

#b5
Conf<- t.test(BCancer$shape_uniformity, na.rm = TRUE)
ConInter<- Conf$conf.int
ConInter

#c
NumAtt<- ncol(BCancer)
NumAtt
#There are 11 attributes

#d
Percent <- mean(BCancer$class == 4) * 100
Percent
#There are 34% of respondents that are malignant.
#9
library(readxl)
abalone <- read_excel("Worksheet#6/abalone.xls")
install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")
View(abalone)
head(abalone)
summary(abalone)
