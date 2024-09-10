compound_interest <- function(p,r,n,t){
  a = (p)*(1+(r/n))**(n*t)
  print(a)
}

compound_interest(100,.1,12,20)
