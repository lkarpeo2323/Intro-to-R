name <- c("Mickey","Minnie","Tong","Yoyo")
age <- 26:29
female <- c(F,T,T,F)
seniority <- c(3, 5, 4, 10)
mydata <- data.frame(name, age, female, seniority)
mydata

mydata[["age"]][1] #Retrieve the first "Age" value
