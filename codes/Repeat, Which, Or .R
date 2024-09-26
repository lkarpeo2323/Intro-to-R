#Repeat these numbers 
rep(c(1,3),times = 3) #1 3 1 3 1 3
rep(c(1,3),each = 3) #1 1 1 3 3 3
rep(c(1,3),length.out = 5) #1 3 1 3 1



#Which
a = 11:16
a[a>12.5] # 13 14 15 16

# <12.5 OR >14.5
a[a>12.5 | a>14.5]



#Append
a = 1:2
append(a,3) # 1 2 3 
