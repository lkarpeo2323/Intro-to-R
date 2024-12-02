
#Unit 12 Exercise 6

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

#---------------Unit 13------------------------------------

#Exercise 1-------


data(mtcars)


mtcars$am.f <- factor(mtcars$am,labels=c("Auto","Manual"))
mtcars$vs.f <- factor(mtcars$vs,labels=c("V-Shape","Straight"))
mtcars$cyl.f <- factor(mtcars$cyl,labels=c("4 Cylinders","6 Cylinders","8 Cylinders"))

t.test(mpg~vs.f, data=mtcars)


#Box Plot for T-Test
boxplot(mpg ~ vs.f, data = mtcars, 
        main = "MPG by Engine Type (V-Shape vs Straight)",
        xlab = "Engine Type", 
        ylab = "Miles Per Gallon")

dev.off()

#The p-value is less than .05 indicating a significant difference between the avg mpg for v-shape and straight

#Exercise 2-----




#Exercise 3------

#Test the effect of Gender on Internet use
data = read.csv("Telemedicine_extract.csv")
names(data)

chisq.test(data$Gender, data$InternetUse)

#p-value =  0.8996
#we cannot reject null hypothesis: 
#we do not have evidence that internet use is effected by gender


a = table(data$Gender, data$InternetUse)
barplot(a, beside=T, legend=T)
