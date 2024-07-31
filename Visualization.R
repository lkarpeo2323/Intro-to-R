# Create a data frame
Data_Frame <- data.frame(
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Print the data frame
print(Data_Frame)

# Pie Chart with Pulse column
pie(Data_Frame$Pulse, labels = Data_Frame$Training)


#Bar Chart with pulse column
barplot(Data_Frame$Pulse, names.arg = Data_Frame$Training)
