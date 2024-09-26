#Exercise 5
rep(1:10,5)

#Exercise 7
var.1 = c(65,30,75,65,65,30,60,30,65,45)
unique_values = unique(var.1)
length(unique_values)
sorted = sort(unique_values)
lowest = sorted[1:3]
lowest # 30 45 60
z = lowest[c(1,3)] 
z # 30 60


#Exercise 8

list.price = 188
discounts = seq(.1, .8, .1) 
dis.price = list.price * (1 - discounts)

#which
select.1 = dis.price[dis.price>=50 & dis.price <= 100]
select.1 # 94.0 75.2 56.4


#which
select.2 = dis.price[dis.price<50 | dis.price>100]
select.2 # 169.2 150.4 131.6 112.8  37.6
