#Write a Csv called 'output.csv'

name = c("Jon","Bill", "Maria","Ben","Tina")
age  = c(23,41,32,58,26)
Staff = data.frame(name,age)
write.csv(Staff,"output.csv")

#Write and read csv and text files
text_file = read.table("Amazon.txt",header=TRUE)
csv_file = read.csv("Amazon.csv",header=TRUE)
print(csv_file)
