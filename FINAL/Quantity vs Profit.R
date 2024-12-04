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


#List the Mean of the Quantity of positive Profit and negative Profit



gain = data[data$Sub.Category=='Copiers'| 
              data$Sub.Category=='Accessories'| 
              data$Sub.Category=='Phones'| 
              data$Sub.Category=='Paper' |
              data$Sub.Category=='Appliances'|
              data$Sub.Category=='Binders'|
              data$Sub.Category=='Chairs' |
              data$Sub.Category=='Storage'|
              data$Sub.Category=='Furnishings'| 
              data$Sub.Category=='Art'|
              data$Sub.Category=='Labels'|
              data$Sub.Category=='Envelopes'|
              data$Sub.Category=='Fasteners', 
            
]



mean(gain$Quantity)



#Run a t test comparing the means of gain$Quantity and loss$Quantity
