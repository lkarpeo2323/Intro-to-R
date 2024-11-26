#Exercise 6

data(mtcars)

var = names(mtcars)
var

pdf("ScatterPlots.pdf")
par(mfrow = c(3,2))

for (i in 3:7){
  plot(mtcars[[1]]~mtcars[[i]], 
       main = paste("Scatter Plot of MPG v.s.", var[3]))
  
}

dev.off()

#---------------------------------------------------



# Unit 13 Exercise 3

#Test the effect of Gender on Internet use
data = read.csv("Telemedicine_extract.csv")
names(data)

chisq.test(data$Gender, data$InternetUse)

#p-value =  0.8996
#we cannot reject null hypothesis: 
#we do not have evidence that internet use is effected by gender


a = table(data$Gender, data$InternetUse)
barplot(a, beside=T, legend=T)
