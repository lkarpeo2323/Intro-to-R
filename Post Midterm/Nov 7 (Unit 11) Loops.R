b = 0
for(i in 1:3){
  b=b+i
  print(b)
}

b

#Exercise 1

# Create the data frame
name <- c("Amy","Bob","Cindy","David","Eddie")
grade <- c(88,98,92,82,85)
program <- c(F,T,T,F,F)
students <- data.frame(name,grade,program)



for (i in names(students)) {
  print(class(students[[i]]))
}
