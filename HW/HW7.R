#1 

visit = read.csv("Telemedicine_extract.csv")

#2

#a

library(psych)


describeBy(visit$WaitMinutes, visit$Gender)

#------------------------------

#b

t.test(visit$WaitMinutes~visit$Gender, data=visit)

#p-value = 0.5455
#we do not have evidence that suggests wait minutes is effected by gender

#---------------------------------
#c

summary(lm(visit$WaitMinutes~visit$Gender,data=visit))

#p-value: 0.5617
# No evidence that suggests gender has a strong relationship with waiting time

#------------------
#d

boxplot(visit$WaitMinutes~visit$Gender, data=visit, 
        main = "Boxplot of Wait Time by Gender",
        xlab="Gender", 
        ylab="Wait Time (Minutes)")

dev.off()



#3------------------------


#a

summary(lm(visit$WaitMinutes~visit$Age,data=visit))

#In this case, age is not statistically significant as the p-value is .06918.
# We cannot conclude that waiting time differs based on age


#b

plot(visit$Age, visit$WaitMinutes, 
     main = "Wait Minutes vs Age", 
     xlab = "Age",
     ylab= "Wait Time (Minutes)") 
fit = lm(visit$WaitMinutes~visit$Age, data=visit) 
abline(fit,lty=5) # Plot the best fit line


#The scatter plot visually represents the regression model in 3a, showing the relationship between wait minutes and age


dev.off()



#4




