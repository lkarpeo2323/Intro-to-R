var = names(mtcars)
var

#Send to PDF

pdf("Histograms.pdf")


par(mfrow = c(3,2))

for (i in 1:7) {
  if (i==2){ #Exclude column 2
    i=i+1
  } else{
  hist(mtcars[[var[i]]], 
       main = paste("Histogram of", var[i]), 
       xlab = var[i], 
       ylab = "Frequency", 
       )
  }
}

dev.off()
