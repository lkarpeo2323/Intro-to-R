var = names(mtcars)
full_names = c("Miles Per Gallon", "Cylinders",  "Displacement", "Horse Power", "Rear Axle Ratio", "Weight", "Quarter Mile Time")

# 3 rows by 2 columns
par(mfrow = c(3, 2))


for (i in 2:7) {
  boxplot(mtcars$mpg ~ mtcars[[var[i]]], 
          main = paste("Boxplot of mpg by", var[i]),  
          xlab = var[i],                  
          ylab = "Miles Per Gallon"      
          )              
}
