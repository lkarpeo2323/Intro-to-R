#1a
sales = read.csv("sales.csv")

#1b
str(sales)

#1c:  

#Convert "sales" to a matrix called "sales1"
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



#2A

#Extract the November and December Data

nov_dec_data <- mydata[c("Nov", "Dec"), , ]
nov_dec_data

#2B

#Extract the Revenue Data

revenue_data = mydata[ , "Revenue", ]
revenue_data

#2C

#Extract the revenue data from November and December

revenue_nov_dec = mydata[c("Nov","Dec"),"Revenue",]
revenue_nov_dec


#2D

#Extract July revenue from branch 1
revenue_july_branch1 = mydata["Jul","Revenue","Branch 1"]
revenue_july_branch1 #13817


#3A

# Total Unit, Revenue, and Cost for Branch 1

total_branch1 = colSums(mydata[ , , "Branch 1"])
total_branch1

# Total Unit, Revenue, and Cost for Branch 2
total_branch2 = colSums(mydata[ , , "Branch 2"])
total_branch2

#Both Branches colSums
both_branches = rbind(total_branch1,total_branch2)
colSums(both_branches)

#3B

#Total Revenue for EACH month from each Branch

monthly_total_revenue = rowSums(mydata[ ,"Revenue" , ])
monthly_total_revenue







