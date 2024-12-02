#1 

visit = read.csv("Telemedicine_extract.csv")

#2

#a

#------------------------------
#b

t.test(visit$WaitMinutes~visit$Gender, data=visit)

#we do not have evidence that suggests wait minutes is effected by gender

#---------------------------------
#c

summary(lm(visit$WaitMinutes~visit$Gender,data=visit))

#------------------
#d

boxplot(visit$WaitMinutes~visit$Gender, data=visit, 
        main = "Boxplot of Wait Minutes by Gender",
        xlab="Gender", 
        ylab="Wait Minutes")

dev.off()



