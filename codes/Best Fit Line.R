data(mtcars)

#Scatter Plot
plot(mtcars$hp, mtcars$mpg) # hp= x-axis, mpg=y-axis

fit = lm(mpg~hp, data=mtcars) #mpg is y-axis, hp is x-axis

#Best Fit Line
abline(fit,lty=5)
