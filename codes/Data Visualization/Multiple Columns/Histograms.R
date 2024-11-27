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
