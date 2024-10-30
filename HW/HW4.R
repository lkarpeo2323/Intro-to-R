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

#Create a List of all the variable Names (rows,columns, slices)
names_list = list(
  c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"), # row names
  c("Unit", "Revenue", "Cost"), #Column names                                                         
  c("Branch 1", "Branch 2") #Branch Names
)

#Create the array
mydata = array(c(sales1,sales2), dim = c(12,3,2), dimnames= names_list)
mydata
