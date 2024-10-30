#1a
sales = read.csv("sales.csv")

#1b
str(sales)

#1c

sales1 = as.matrix(sales)
sales1

#1d
class(sales$UnitSold) #integer
class(sales$Revenue) #integer
class(sales$Cost) #integer

colnames(sales1) #"UnitSold" "Revenue"  "Cost"
ncol(sales1) #3 columns
nrow(sales1) #12 rows

#1E
sales2 = 2*sales1
sales2

#1F

mydata = cbind(sales1,sales2)

#Add Row Names
rownames(mydata) = c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
mydata







