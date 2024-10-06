#Exercise 3

a = seq(1:10)
b = seq(11,29,2)
c = seq(12,30,2)
income = cbind(a,b,c)
colnames(income)=c("A","B","C")
income.2 <- income * 1000  # Multiply each element by 1000
income.3 = income.2
income.3[c(6,7),1] = income.2[c(6,7),1]/5 #Divide col 1 row 6 and 7 by 2
income.3[1, "C"] = 6000
income.3[c(2,8:10), "B"] = income.3[c(2,8:10), "B"] / 4 #Divide col "B" row 2, and 8 through 10  by 4
income.3[2:10, "C"] = income.3[2:10, "C"] / 2
income.3[income.3 > 15000 & income.3 < 20000] = 18000
income.4 = income.3[, c("A", "B")]
print(income.4)
