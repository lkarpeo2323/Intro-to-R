data = read.csv("US  E-commerce records 2020_YC.csv")
library(psych)

#########################3-----Regression Test #1----###################################3
#Copiers produced the most sales

summary(lm(Sales ~ factor(data$Sub.Category), data = data))


boxplot(data$Sales ~ factor(data$Sub.Category),
        main = "Sales by Sub.Category",
        xlab = "Sub.Category",
        ylab = "Sales", 
        las=2)
dev.off()

#######################3---------Stat Tests-----------#################################
#Profit vs SubCategory

#Statistical Test 1: ANOVA

#Conclusion: Copiers Produced the most profit:

#------Test 1
summary(aov(Profit ~ Sub.Category, data = data))

#--- Chart 1
boxplot(data$Profit~factor(data$Sub.Category),
     main = "Profit vs Sub-Category",
     xlab=" ",
     ylab = "Profit", 
     las=2,
     ylim= c(-100,6000)
)
#-----------------------------------------------------------------------------------------
#---  Test 2-----------

summary(aov(Quantity ~ Sub.Category, data = data))

#-----Chart 2

boxplot(data$Quantity~factor(data$Sub.Category),
     main = "Quantity vs Sub-Category",
     xlab=" ",
     ylab = "Quantity", 
     las=2,
    )


##########################--------CHARTS-----------##########################


profit = aggregate(Profit ~ Sub.Category, data = data, sum)

#------------Gains--------------#
positive = profit[profit$Profit > 0, ]

pie(positive$Profit, 
    labels=paste(positive$Sub.Category, ":", round(positive$Profit,digits= 2))
)

dev.off()


#-----------Losses---------#

negative = profit[profit$Profit < 0, ]

negative$Profit= negative$Profit*-1

pie(negative$Profit, 
    labels=paste(negative$Sub.Category, ":", round(negative$Profit,digits= 2))
    )

dev.off()

#################### Quantity vs Profit(Loss) #####################

loss = data[data$Sub.Category=='Tables'| 
              data$Sub.Category=='Supplies'| 
              data$Sub.Category=='Machines'| 
              data$Sub.Category=='Bookcases', 
            ]

summary(aov(Quantity ~ Sub.Category, data = loss))


boxplot(loss$Quantity~factor(loss$Sub.Category),
        main = "Quantity vs Sub-Category",
        xlab=" ",
        ylab = "Quantity", 
        las=2,
)














