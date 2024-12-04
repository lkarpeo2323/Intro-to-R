data = read.csv("US  E-commerce records 2020_YC.csv")
library(psych)

#Regression Test #1

#Copiers produced the most sales

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
     col = "blue", pch = 16, 
     ylim= c(0,300))

abline(lm(Profit ~ Quantity, data = data), col = "red", lwd = 2)

#-----------------------------Stat Tests----------------------------------------------------------
#Profit vs SubCategory

#Statistical Test 1: ANOVA

#Conclusion: Copiers Produced the most profit:

#Question: is it partly because the quantity sold was high?
        #Check the next boxplot ( Quantity vs subCategory)


#Test 1
summary(aov(Profit ~ Sub.Category, data = data))

#--- Chart 1
boxplot(data$Profit~factor(data$Sub.Category),
     main = "Profit vs Sub-Category",
     xlab=" ",
     ylab = "Profit", 
     las=2,
     ylim= c(-100,6000)
)

#---  Test 2

summary(aov(Quantity ~ Sub.Category, data = data))

#-----Chart 2

boxplot(data$Quantity~factor(data$Sub.Category),
     main = "Quantity vs Sub-Category",
     xlab=" ",
     ylab = "Quantity", 
     las=2,
    )
















