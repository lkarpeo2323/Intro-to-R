#1
data(mtcars)


#2
#Create a histogram of the mpg variable
hist(mtcars$mpg, 
     main="Histogram of mpg",
     xlab="Miles Per Gallon", 
     ylab="Frequency"
)

#Showing the average line
abline(v=mean(mtcars$mpg), col="red")

#Showing the value of the average in the top left corner
legend("topleft", "Average=20.09", text.col="red", bty="n")

#Observations:
# - Most of the cars fall with in the 15-25 mpg range with a few outliers above 30
