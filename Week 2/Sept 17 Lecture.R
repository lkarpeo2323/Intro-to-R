#Exercise 2

Student = c("Apple","Ben","Carol","Debby","Eddie")
Grade = c(80,75,92,86,78)
Class = data.frame(Student,Grade)
Class

write.csv(Class,"output.csv",row.names=FALSE)



#Exersise 3


data = read.csv('Professional.csv')
names(data)
class(data$Age)
class(data$Gender)
class(data$Household.Income)
str(data)
head(data, n=5)
tail(data, n=5)
mean(data$Age)
mean(data$Household.Income)
median(data$Age)
median(data$Household.Income)
min(data$Age)
min(data$Household.Income)
max(data$Age)
max(data$Household.Income)


