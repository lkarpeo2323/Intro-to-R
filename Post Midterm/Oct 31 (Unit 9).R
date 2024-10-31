#Exercise 1

name <- c("Amy","Bob","Cindy","David","Eddie","Fanny","Greg","Harry")
grade <- c(88,98,92,82,85,65,70,67)
standing <- c("senior","junior","sophomore","senior","senior","sophomore","freshmen","junior")
students <- data.frame(name,grade,standing)

# Check if 'standing' is a factor
is.factor(students$standing)

# Convert 'standing' to a factor
students$standing.f = factor(students$standing)

#set the levels (#The first one is the greatest)
students$standing.f2 = factor(students$standing,levels = c("freshmen","sophomore","junior", "senior"))

#check if its a factor
is.factor(students$standing.f2)

#Get the Frequency
table(students$standing.f2)  





