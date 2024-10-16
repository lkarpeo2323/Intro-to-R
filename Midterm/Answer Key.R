### Problem Set 1 ###
vec <- rep(seq(1,101,by=5),length.out=1000)

### Problem Set 2 ###
### The area is 330 with the given parameters
Area <- function(a, b, h){
  x <- ((a+b)/2)*h
  return(x)
}

Area(10, 45, 12)

### Problem Set 3 ###
## Part 1 ###
hr <- read.csv("HR.csv")
hr <- as.matrix(hr)

## Part 2 ###
colnames(hr)
head(hr,n=5)
tail(hr,n=5)

## Part 3 ###
## There are 42 employees, and 16 of them have high salary 
sal <- hr[,"Salary"]
length(sal)
mean(sal)
sal.v.h <- sal[sal>=150000 & sal<=200000]
length(sal.v.h)

exp.v <- hr[,"Experience"]
exp.v
exp.v[exp.v<=10] <- 1
exp.v[exp.v>10 & exp.v<=20] <- 2
exp.v[exp.v>20 & exp.v<=30] <- 3
exp.v[exp.v>30 & exp.v<=40] <- 4
exp.v

## Part 4 ###
mydata <- hr[,c("Salary","Experience")]
colnames(mydata) <- c("salary","experience")
mydata
dim(mydata)[1]     # the output of dim() is a vector, the 1st element is the number of rows
colMeans(mydata)
exp.m <- mydata[,"experience"]
exp.m[exp.m<=10] <- 1
exp.m[exp.m>10 & exp.m<=20] <- 2
exp.m[exp.m>20 & exp.m<=30] <- 3
exp.m[exp.m>30 & exp.m<=40] <- 4
exp.m
mydata <- cbind(mydata,exp.m)
mydata
