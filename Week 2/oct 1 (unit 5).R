#Exercise 3

a = seq(1:10)
b = seq(11,29,2)
c = seq(12,30,2)
income = cbind(a,b,c)
colnames(income)=c("A","B","C")


income.2 <- income * 1000  # Multiply each element by 1000

income.3 = income.2
income.3[c(6,7),1] = income.2[c(6,7),1]/5
income.3

