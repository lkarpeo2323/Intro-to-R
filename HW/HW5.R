#1A

data = read.csv("gap.csv")


#1B
names(data)
summary(data)


#2A and 2B
data$factor = factor(
  ifelse(data$femaleemployrate <= 50, "Low", "High"),
  levels = c("Low", "High")
)

# 2C: Put the frequency counts of "Low" and "High" in the "factor" variable
table(data$factor)







