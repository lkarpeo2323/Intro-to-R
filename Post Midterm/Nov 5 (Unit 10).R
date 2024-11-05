#Exercise 2
x = 40

if (x>=60){
  print("Pass")
}else{
  print("Fail")
}

#Self-Defined Function
leo = function(x){
  if (x>=60){
    print("Pass")
  }else{
    print("Fail")
  }
}

leo(80) #run the function




#Exercise 3 

x=3

if (x == 1) {
  print("Mon")
} else if (x == 2) {
  print("Tue")
} else if (x == 3) {
  print("Wed")
} else if (x == 4) {
  print("Thu")
} else if (x == 5) {
  print("Fri")
} else if (x == 6) {
  print("Sat")
} else if (x == 7) {
  print("Sun")
} else {
  print("Enter an integer between 1 and 7")
}



#Exercise 4


x=3

if(x%%1 !=0 | x< 1 | x>7){ #if x is not a an integer between 1 and 7
  print("Enter a valid intger");
} else { 
  switch(x,"Mon", "Tue", "Wed",  "Thu",  "Fri",  "Sat",  "Sun")
}

#Exercise 5

x = -10:10

ifelse(x < 0, -1, ifelse(x == 0, 0, 1))






