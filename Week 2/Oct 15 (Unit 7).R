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

