a =.06
b = 2000
c = -10

(a*sqrt(b))/(1-(1+a)^c)

a =.6
b = 2000
c = -10
factor  = function(a,b,c){
  y = (a*sqrt(b))/(1-(1+a)^c)
  print(a)
  return(y)
  }

factor(.06,2000,-10)



#lm function 
a = 1:10
b = 11:20

reg = lm(b~a)

reg

#Correlation Test
corr.test(a,b)


