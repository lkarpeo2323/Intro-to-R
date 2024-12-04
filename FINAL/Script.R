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

#------------------------------------------------------------------
#Regression Test #2

#Profit vs Quantity


summary(lm(Profit ~ Quantity, data = data))

plot(data$Quantity, data$Profit,
     main = "Profit vs Quantity",
     xlab = "Quantity",
     ylab = "Profit",
     col = "blue", pch = 16)
abline(lm(Sales ~ Quantity, data = data), col = "red", lwd = 2)


dev.off()




