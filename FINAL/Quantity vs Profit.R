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


List the Mean of the Quantity of positive Profit and negative Profit
