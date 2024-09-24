#Exercise 5
rep(1:10,5)

#Exercise 7
var.1 = c(65,30,75,65,65,30,60,30,65,45)
unique_values = unique(var.1)
sorted = sort(unique_values)
lowest = sorted[1:3]
lowest
z = lowest[c(1,3)]
z


#Exercise 8

list.price = 188

discounts = seq(.1, .8, .1) 

dis.price = list.price * (1 - discounts)

select.1 = dis.price [50:100]
