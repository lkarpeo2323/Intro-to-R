#Exercise 1

name <- c("A","B","C","D")
m1 <- matrix(1:8,nrow=4)
m2 <- matrix(1:6,nrow=2)
list2 <- list(m1,m2,name)
list3 <- list(vector=name, matrix=m1, list=list2)

unname(list3)
name = c(a1="A", b1 = "B")
name
dim(name)

list3$matrix[5]
list3[[2]][5]
list3[2][[1]][5]

list3$list[[3]][3]
list3[[3]][[3]][3]
list3[3][[1]][[3]][3]


#Exercise 2
list4 = list3
list4[[2]][1,2]=50

v = c(1:9)
m= rbind(v)

list4[[3]]=v
list4[[3]]=m
list4[[3]]= list(v,m)

# Exercise 3
list4[c(4, 5)] <- list(c("x", "y", "z"), matrix2 = matrix(10:19, nrow = 2))
list4



#Exercise 1

name = c("Amy","Bob","Cindy","David","Eddie")
grade = c(88,98,92,82,85)
program = c(F,T,T,F,F)


students = data.frame(name,grade,program)
students

#Exercise 2

students[[2]][3]
students[2][[1]][3]
students$grade[3]
students[3,2]
