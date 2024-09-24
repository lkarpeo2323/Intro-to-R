#Repeat these numbers 
rep(c(1,3),times = 3) #1 3 1 3 1 3
rep(c(1,3),each = 3) #1 1 1 3 3 3
rep(c(1,3),length.out = 5) #1 3 1 3 1



#Which
a = 11:16
a[which(a>12.5,5)] # 13 14 15 16

