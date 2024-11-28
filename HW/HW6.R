#1
data(mtcars)

#----------------------------------------------------
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

#--------------------------------------------------------
#3

var = names(mtcars)
var

#List the full Names

full_names = c("Miles Per Gallon", "Cylinders", "Displacement", "Horse Power", "Rear Axle Ratio", "Weight", "Quarter Mile Time")

#Send to PDF

pdf("Histograms.pdf")

# 3 rows by 2 columns
par(mfrow = c(3,2))

for (i in 1:7) {
  if (i==2){ #Exclude column 2
    i=i+1
  } else{
  hist(mtcars[[var[i]]], 
       main = paste("Histogram of", var[i]), #Title
       xlab = full_names[i], #x label 
       ylab = "Frequency", #y label
       )
  }
}

dev.off()

#--------------------------------

#4


var = names(mtcars)
full_names = c("Miles Per Gallon", "Cylinders",  "Displacement", "Horse Power", "Rear Axle Ratio", "Weight", "Quarter Mile Time")



par(mfrow = c(3, 2))

boxplot(mtcars$mpg ~ mtcars[[var[2]]], 
        main = paste("Boxplot of mpg by", full_names[2]),  
        xlab = var[2],                  
        ylab = "Miles Per Gallon")       

for (i in 8:11) {
  boxplot(mtcars$mpg ~ mtcars[[var[i]]], 
          main = paste("Boxplot of mpg by", var[i]),  
          xlab = var[i],                  
          ylab = "Miles Per Gallon",      
          )              
}
