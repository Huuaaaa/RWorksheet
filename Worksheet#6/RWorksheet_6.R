#1 

student <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
pre_test <- c(55, 54, 47, 57, 51, 61, 57, 54, 63, 58)
post_test <- c(61, 60, 56, 63, 56, 63, 59, 56, 62, 61)

StudentScore <- data.frame(Student = student, Pre_Test = pre_test, Post_Test = post_test)
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
