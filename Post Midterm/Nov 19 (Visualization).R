#Line of Best Fit

data(mtcars)

plot(mtcars$hp, mtcars$mpg) #Scatter Plot
fit = lm(mpg~hp, data=mtcars)

abline(fit,lty=2)
abline(h=20) #Manually place a horizontal Line

#------------------------------------

#Exercise 3

plot(mtcars$mpg, 
     main="An index Plot for Miles-Per-Gallon",
     ylab="Miles Per Gallon", col="blue", pch=8
     )

abline(h=mean(mtcars$mpg), col="red")
legend("topleft", "Average=20.09", text.col="red", bty="n")


#---------------------------------------------

#Pie Chart
scoring = c(exam=50,hw=30,exercise=20)
pie(scoring)

#---------------------------------------------

#Bar Plot

barplot(scoring)
#--------------

#Barplot labeled by name
name <- c("Amy","Bob","Cindy","David","Eddie")
grade <- c(88,98,92,82,85)
students <- data.frame(name,grade)

barplot(grade~name,data=students,xlab="Student Name",ylab="Grades")

#--------------------------
