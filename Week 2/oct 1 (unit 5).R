#Exercise 3

a = seq(1:10)
b = seq(11,29,2)
c = seq(12,30,2)
income = cbind(a,b,c)
colnames(income)=c("A","B","C")
income.2 <- income * 1000  # Multiply each element by 1000
income.3 = income.2
income.3[c(6,7),1] = income.2[c(6,7),1]/5
income.3[1, "C"] = 6000
income.3[2, "B"] = income.3[2, "B"] / 4
income.3[8:10, "B"] = income.3[8:10, "B"] / 4
income.3[2:10, "C"] = income.3[2:10, "C"] / 2
income.3[income.3 > 15000 & income.3 < 20000] = 18000
income.4 = income.3[, c("A", "B")]
print(income.4)
