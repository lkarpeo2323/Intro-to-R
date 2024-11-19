data(mtcars)
#-----------------------------------
#Best Fit Line


plot(mtcars$hp, mtcars$mpg) # hp= x-axis, mpg=y-axis

fit = lm(mpg~hp, data=mtcars) #mpg is y-axis, hp is x-axis

abline(fit,lty=5) # Plot the best fit line

#------------------------------

#Pie Chart
scoring = c(exam=50,hw=30,exercise=20)
pie(scoring)

#---------------------------------------------
#Bar Plot

barplot(scoring)
#--------------
#Bar Plot labeled by name

name <- c("Amy","Bob","Cindy","David","Eddie")
grade <- c(88,98,92,82,85)
students <- data.frame(name,grade)

barplot(grade~name,data=students,xlab="Student Name",ylab="Grades")
#-------------------------------------------------------------
#Histogram

hist(mtcars$mpg, breaks=10)
#------------------------
#Scatter Plot

plot(mtcars$hp, mtcars$mpg) # hp= x-axis, mpg=y-axis
