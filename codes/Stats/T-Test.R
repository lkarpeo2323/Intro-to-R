visit = read.csv("Telemedicine_extract.csv")

t.test(visit$WaitMinutes~visit$Gender, data=visit)

boxplot(visit$WaitMinutes~visit$Gender, data=visit, 
        main = "Boxplot of Wait Minutes by Gender",
        xlab="Gender", 
        ylab="Wait Minutes")

dev.off()        
