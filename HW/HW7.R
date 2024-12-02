#1 
visit = read.csv("Telemedicine_extract.csv")
#2--------------------------------------------

#a

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



