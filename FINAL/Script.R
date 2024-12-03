data = read.csv("US  E-commerce records 2020_YC.csv")
library(psych)

#Regression Test #1


summary(lm(Sales ~ factor(data$Sub.Category), data = data))


boxplot(data$Sales ~ factor(data$Sub.Category),
        main = "Sales by Sub.Category",
        xlab = "Sub.Category",
        ylab = "Sales", 
        las=2)



dev.off()




