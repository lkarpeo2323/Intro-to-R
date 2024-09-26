#Exercise 9

grade = c("Abby" =78, "Bob" = 86, "Cindy"=94,"Debby"=85,"Ed"=76)
grade["Bob"] #Get Bob's score
grade = c(grade,Frank=80) # Add Frank's grade 
grade


#Exercise 11
sat <- c(T,T,F,F,T,F,F,T,T,T,T)
sat.n = as.numeric(sat)
sum(sat.n)/length(sat.n)


#Exercise 1 (unit 5)
a = c(1:10)
b = matrix(1:30, ncol=2, byrow=T)
income = cbind(a,b)
colnames(income)=c("A","B","C")
income


#Exercise 2

income.2 <- income * 1000  # Multiply each element by 1000

totals <- colSums(income.2)
averages <- colMeans(income.2)

totals
averages







