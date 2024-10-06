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
