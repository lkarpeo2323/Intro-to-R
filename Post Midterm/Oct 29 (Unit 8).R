#Exercise 3

name = c("Amy","Bob","Cindy","David","Eddie")
grade = c(88,98,92,82,85)
program = c(F,T,T,F,F)


students = data.frame(name,grade,program)

standing = c("senior","junior","junior","senior","senior")
credits = c(9,12,9,9,6)
commute = c(T,T,F,T,F)

students = cbind(students,standing,credits,commute)
students
summary(students)


