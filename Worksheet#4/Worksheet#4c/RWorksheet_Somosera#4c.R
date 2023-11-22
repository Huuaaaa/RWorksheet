#a. Show your solutions on how to import a csv file into the environment

#On your file pane select "Upload", "Choose File" then find your file to upload and select "OK"  
library(readr)
mpg <- read_csv("Worksheet#4/Worksheet#4c/mpg.csv")
View(mpg)
#b. Which variables from mpg dataset are categorical?
#The variables that are categorical from the mpg dataset are manufacturer, model, year, trans, fl, and class

#c. Which are continuous variables?
#The variables that are continuous are displ, cty, hwy

#2. Which manufacturer has the most models in this data set? Which model has the most variations? Show your answer
library(ggplot2)
MostModel<-read.csv("Worksheet#4/Worksheet#4c/mpg.csv")

model_count <- table(MostModel$manufacturer, MostModel$model)
max_models <- max(unlist(model_count))
max_manufacturer <- names(model_count)[unlist(model_count) == max_models]
variation_count <- table(MostModel$model, MostModel$cyl)

max_variations <- max(unlist(variation_count))
max_model <- names(variation_count)[unlist(variation_count) == max_variations]

cat("The manufacturer with the most models is:", max_manufacturer)
cat("The model with the most variations is:", max_model)







#6 Import the traffic.csv onto your R environment
library(readr)
traffic <- read_csv("Worksheet#4/Worksheet#4c/traffic.csv")
View(traffic)

#a 
nrow(traffic)
names(traffic)
#There are 48,120 observations in traffic.csv and the variables are "DateTime" "Junction" "Vehicles" and "ID".
install.packages("dplyr")
library(dplyr)

junctions <- traffic %>%
junctions


#7 From alexa_file.xlsx, import it to your environment
library(readxl)
alexa_file <- read_excel("Worksheet#4/Worksheet#4b/alexa_file.xlsx")
View(alexa_file)


