data = read.csv("US  E-commerce records 2020_YC.csv")
library(psych)

factor(data$Order.ID)
cities = aggregate(data$Order.ID ~ City, data = data, length)
colnames(cities) = c("City", "Number of Orders")

##----------- Histogram --------------##
#Show how the number of orders is distributed across cities so we  can make barplot

hist(cities$`Number of Orders`, 
     breaks=(nrow(cities)/2), 
     main = "Distribution of Order Counts Across Cities", 
     xlab = "Order Count", 
     ylab = "Frequency")

dev.off()

##------------- Barplot --------------##
most = cities[cities$`Number of Orders`>25, ]

barplot(`Number of Orders`~City,data=most,
        xlab="City Name",
        ylab="Total Orders", 
        las=2)


dev.off()
