name = c("Jon","Bill", "Maria","Ben","Tina")
age  = c(23,41,32,58,26)
staff = data.frame(name,age)
staff


#Exercise 1

Student = c("Apple","Ben","Carol","Debby","Eddie")
Grade = c(80,75,92,86,78)
Class = data.frame(Student,Grade)
Class



#Read Table
##Keep Data file in same folder as R file

data = read.table("Amazon.txt",header=TRUE)
print(data)






