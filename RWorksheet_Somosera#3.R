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
matrix(data = c(1,2,3,4,5,6,7,8,9,10,11,12),3,4)
