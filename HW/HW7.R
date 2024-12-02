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

#A

summary(lm(WaitMinutes ~ Age + Gender, data = visit))

#For Females (Gender=0): WaitMinutes= 46.2617− 0.5303 × Age
#For Males (Gender= 1): WaitMinutes = 46.2617− 0.5303 × Age−4.9867

#The coefficient of -0.5303 for age suggests that for every year of age, waiting time decreases by .5303 minutes. This is somewhat significant with a p-value of 0.050362
# Gender does not show statistical significance as its p-value  is 0.335877 









