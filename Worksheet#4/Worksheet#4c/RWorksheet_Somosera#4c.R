#a. Show your solutions on how to import a csv file into the environment

#On your file pane select "Upload", "Choose File" then find your file to upload and select "OK"  
library(readr)
mpg <- read_csv("Worksheet#4/Worksheet#4c/mpg.csv")
str(mpg)
#b. Which variables from mpg dataset are categorical?
#The variables that are categorical from the mpg dataset are manufacturer, model, trans(transmission) , drv (type of drive),
#fl (fuel type), and class

#c. Which are continuous variables?
#The variables that are continuous are displ (engine displacement), year, cyl(number of cylinders), cty (city miles per gallon),
#and hwy (highway miles per gallon).

#2. Which manufacturer has the most models in this data set? Which model has the most variations? Show your answer
install.packages("dplyr")
library(dplyr)

ManuMost<- mpg %>%
group_by(manufacturer) %>%
summarize(num_models = n_distinct(model)) %>%
arrange(desc(num_models)) %>%
slice(1) %>%
pull(manufacturer)
cat("Manufacturer with the most models:", ManuMost, "\n")

model_most_variations <- mpg %>%
group_by(model) %>%
summarize(num_variations = n_distinct(trans)) %>%
arrange(desc(num_variations)) %>%
slice(1) %>%
pull(model)
cat("Model with the most variations:", model_most_variations, "\n")


# Manufacturer with the most models is toyota while the model with the most variations is a4

#2a.
UniqueMod<- mpg %>%
group_by(manufacturer) %>%
summarize(unique_models = n_distinct(model))
print(UniqueMod)


#2b
barplot(UniqueMod$unique_models, names.arg = UniqueMod$manufacturer,
        main = "Unique Models by Manufacturer ",
        xlab = "Manufacturer",
        ylab = "Unique Models",
        col = "thistle4",
        border = "black",
        las = 2
)

barplot(table(mpg$model), main = "Number of Variations by Model",
        xlab = "Model",
        ylab = "Number of Variations",
        col = "plum3",
        border = "black",
        las = 2
)

#Same dataset will be used. You are going to show the relationship of the modeland the manufacturer
relation <- table(mpg$manufacturer, mpg$model)

print(relation)

#a. What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?
ggplot(mpg, aes(x = model, y = manufacturer)) +
  geom_point() +
  labs(title = "Relationship between Model and Manufacturer",
       x = "Model",
       y = "Manufacturer") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
#It shows the relationship between model and manufacturer by scatter plots.








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


