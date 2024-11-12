name <- c("Amy","Bob","Cindy","David","Eddie")
grade <- c(88,98,92,82,85)
program <- c(F,T,T,F,F)
students <- data.frame(name,grade,program)

names(students)[1] #Retrieve the name of the first column
class(students[[1]]) #Retrieve the class of a column


#Exercise 2 'While' Loop

i = 1
while (i <= ncol(students)){
  print(paste(
    names(students)[i], 
              "is", 
    class(students[[i]])))
  i = i+1 #Must have increment AFTER the print
}



#Exercise 3: 'Repeat' Method

i = 1
repeat {
  
  print(paste(
    names(students)[i], 
    "is", 
    class(students[[i]])
  ))
  
  i <- i + 1
  
  if (i > ncol(students)) {
    break  
  }
}
