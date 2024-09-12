#Write a Csv

name = c("Jon","Bill", "Maria","Ben","Tina")
age  = c(23,41,32,58,26)
Staff = data.frame(name,age)
write.csv(Staff,"output.csv", row.names=F)

#Exercise 1

Student = c("Apple","Ben","Carol","Debby","Eddie")
Grade = c(80,75,92,86,78)
Class = data.frame(Student,Grade)
Class

#Read Table and CSV 
##Keep Data file in same folder as R file

text_file = read.table("Amazon.txt",header=TRUE)
csv_file = read.csv("Amazon.csv",header=TRUE)
print(csv_file)






