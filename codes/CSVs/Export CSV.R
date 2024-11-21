#Exercise 2

Student = c("Apple","Ben","Carol","Debby","Eddie")
Grade = c(80,75,92,86,78)
Class = data.frame(Student,Grade)
Class

write.csv(Class,"output.csv",row.names=FALSE)
