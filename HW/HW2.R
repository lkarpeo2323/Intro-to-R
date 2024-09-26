# Questions 1 and 2
csv_file = read.csv('gap.csv', header=TRUE)

#3A. variable names
names(csv_file)
# "country" ,"breastcancer", "femaleemployrate","employrate","urbanrate","continent" 

#3B Data Type
class(csv_file$country) #character
class(csv_file$breastcancer) #numeric
class(csv_file$femaleemployrate) #numeric 
class(csv_file$employrate) #numeric
class(csv_file$urbanrate) #numeric
class(csv_file$continent) #character


#3C structure of data
str(csv_file) # 173 obs. of  6 variables

#3D dimensions of data
dim(csv_file) # 173 by 6

#3E First 5 Rows
head(csv_file, n=5) 

#3F Last 5 Rows
tail(csv_file, n=5) 

#4A
cont = csv_file$continent

#4B
cont.uni = unique(cont)

#4C
length(cont.uni) # There are 7 Continents


#5A
cancer = csv_file$breastcancer

#5B
sorted = sort(cancer)

#5C
sorted[89] # 30.6
sorted[133] # 50.9

#5D
mild = cancer[cancer >=50 & cancer <=70]
mean(mild) # 35.88095


#5E
factor = rep(seq(.1,1,.1), length.out = length(cancer))
factor

#5F


