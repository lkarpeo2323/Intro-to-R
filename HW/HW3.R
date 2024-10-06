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
