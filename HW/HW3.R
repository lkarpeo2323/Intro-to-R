# 1
gap = read.csv('gap.csv', header=TRUE)


#2A

gap2= gap[2:4]

#2B: structure of gap2
str(gap2) #173 obs. of  3 variables:

#2C: As a matrix 

gap2 = as.matrix(gap2)
gap2

#2D: Structure of gap2

str(gap2)

#2E: Variable Names

colnames(gap2) #"breastcancer"     "femaleemployrate" "employrate" 

#3A: Create the Matrix

m.1 = matrix(1:346,nrow=173,ncol = 2,byrow = TRUE)
colnames(m.1)=c("Odd","Even")

#3B
m.1[m.1>100]=100
m.1/100
m.1

#3C: Combine gap2 and m.1 into a new matrix
gap3 = cbind(gap2,m.1)
gap3

