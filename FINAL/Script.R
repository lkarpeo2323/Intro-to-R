data = read.csv("US  E-commerce records 2020_YC.csv")


#Find the effect of covid on sales. 

#Differnce is avg sales per day before and after 3/13/2020

chisq.test(data$State, data$Category)

data
