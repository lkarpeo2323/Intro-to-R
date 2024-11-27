iSum = 0
for (i in 1:nrow(data)) {  # Loop through each row
  for (j in 1:ncol(data)) {  # Loop through each column
    if (is.na(data[i, j])) {  # Check if the current value is NA
      iSum = iSum + 1   # Increment the counter if NA
    }
  }
}

# Print the total number of NAs in the entire dataframe
print(iSum)
