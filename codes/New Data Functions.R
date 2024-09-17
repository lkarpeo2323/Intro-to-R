name = c("Jon","Bill", "Maria","Ben","Tina")
age  = c(23,41,32,58,26)
Staff = data.frame(name,age)

# Functions
names(Staff)  # list the variables in Staff
str(Staff) # list the structure of Staff
dim(Staff) # dimensions of an object
class(Staff) # class of an object (numeric, matrix, data frame, etc)
class(Staff$Name) # class of an object (numeric, matrix, data frame, etc)
head(Staff, n=2) # print first 2 rows of Staff
tail(Staff, n=2) # print last 2 rows of Staff

