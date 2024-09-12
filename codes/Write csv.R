#Write a Csv

name = c("Jon","Bill", "Maria","Ben","Tina")
age  = c(23,41,32,58,26)
Staff = data.frame(name,age)
write.csv(Staff,"output.csv")
