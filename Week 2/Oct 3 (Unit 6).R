#Exercise 1

v = 1:12
rn = c("id_1","id_2")
cn = c("v.1","v.2","v.3")
sn = c("store.1","store.2")

#Approach 1
a = array(v, dim=c(2,3,2),dimnames=list(rn,cn,sn))
a

#Approach 2
dim(v) = c(2,3,2)
v

#Approach 3
m.1 = matrix(1:6,nrow=2)
m.1
m.2 =matrix(7:12,nrow=2)
m.2
b = array(c(m.1,m.2),dim=c(2,3,2),dimnames=list(rn,cn,sn))
b



#Exercise 2

b[1,2,2]
class(b[1,2,2])

b[1,,2]
class(b[1,,2])

b[1,,]
class(b[1,,])

b[1,c(1,3),1]
class(b[1,c(1,3),1])

b[,c(1,3),]
class(b[,c(1,3),])

b
#Exercise 3



