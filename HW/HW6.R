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

full_names = c("Miles Per Gallon", "Cylinders",  "Displacement", "Horse Power", "Rear Axle Ratio", "Weight", "Quarter Mile Time")

#Send to PDF

pdf("Histograms.pdf")


par(mfrow = c(3,2))

for (i in 1:7) {
  if (i==2){ #Exclude column 2
    i=i+1
  } else{
  hist(mtcars[[var[i]]], 
       main = paste("Histogram of", var[i]), 
       xlab = full_names[i], 
       ylab = "Frequency", 
       )
  }
}

dev.off()


#------------------------------------------------------------
#4


var = names(mtcars)
full_names = c("Miles Per Gallon", "cylinders",  "Displacement", "Horse Power", "Rear Axle Ratio", "Weight", "Quarter Mile Time", 
               "V/S", "0 = automatic, 1 = manual", "forward gears", "carburetors")

pdf("Boxplots for MPG.pdf")


par(mfrow = c(3, 2))

boxplot(mtcars$mpg ~ mtcars[[var[2]]], 
        main = paste("Boxplot of mpg by", var[2]),  
        xlab = paste("Number of", full_names[2]),                  
        ylab = "Miles Per Gallon")       

for (i in 8:9) {
  boxplot(mtcars$mpg ~ mtcars[[var[i]]], 
          main = paste("Boxplot of mpg by", var[i]),  
          xlab = full_names[i],                  
          ylab = "Miles Per Gallon",      
          )              
}

for (i in 10:11) {
  boxplot(mtcars$mpg ~ mtcars[[var[i]]], 
          main = paste("Boxplot of mpg by", var[i]),  
          xlab = paste("Number of", full_names[i]),                  
          ylab = "Miles Per Gallon",      
  )              
}


def.off()


#--------------------------


#5


var = names(mtcars)
full_names = c("Miles Per Gallon", "cylinders",  "Displacement", "Horse Power", "Rear Axle Ratio", "Weight", "Quarter Mile Time", 
               "V/S", "0 = automatic, 1 = manual", "forward gears", "carburetors")

pdf("Boxplots for ALL.pdf")


par(mfrow = c(3, 2))

for (x in 3:7){
  boxplot(mtcars[[var[x]]] ~ mtcars[[var[2]]], 
          main = paste("Boxplot of", var[x] ,"by", var[2]),  
          xlab = paste("Number of", full_names[2]),                  
          ylab = full_names[x]) 
  
  for (i in 8:9) {
  boxplot(mtcars[[var[x]]] ~ mtcars[[var[i]]], 
          main = paste("Boxplot of", var[x] ,"by", var[i]),  
          xlab = full_names[i],                  
          ylab = full_names[x]     
    )              
  }
  
  for (i in 10:11) {
  boxplot(mtcars[[var[x]]] ~ mtcars[[var[i]]], 
          main = paste("Boxplot of", var[x] ,"by", var[i]),  
          xlab = paste("Number of", full_names[i]),                  
          ylab = full_names[x]      
    )              
  }
  
  
  
}
dev.off()
