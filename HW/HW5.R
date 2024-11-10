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


data$loop1 <- as.character(data$femaleemployrate)

#3B: Use a loop to set values of 'loop1' to "Low" or "High" or "N/A" based on 'femaleemployrate'

for (i in 1:nrow(data)) {
  if (is.na(data$femaleemployrate[i])) {
    data$loop1[i] = "N/A"  # Assign "N/A" for NA values
  } else if (data$femaleemployrate[i] <= 50) {
    data$loop1[i] = "Low"  
  } else {
    data$loop1[i] = "High"  
  }
}
data



