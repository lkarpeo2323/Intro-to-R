# 1: Read the CSV file into a data frame named 'gap' with headers
gap = read.csv('gap.csv', header=TRUE)

# 2A: Extract specific columns (2 to 4) from 'gap' and assign to 'gap2'
gap2 = gap[2:4]

# 2B: Display the structure of 'gap2' to show its composition
str(gap2) # 173 observations of 3 variables

# 2C: Convert 'gap2' to a matrix for easier manipulation in later steps
gap2 = as.matrix(gap2)

# 2D: Check the structure of 'gap2' after conversion to verify changes
str(gap2)

# 2E: Retrieve and display column names of 'gap2' to confirm they are correctly set
colnames(gap2) # "breastcancer", "femaleemployrate", "employrate"
gap2

# 3A: Create a matrix 'm.1' with 173 rows and 2 columns, filling by row
# Column names are set to "Odd" and "Even" for easier interpretation
m.1 = matrix(1:346, nrow=173, ncol=2, byrow=TRUE)
colnames(m.1) = c("Odd", "Even")
m.1

# 3B: Replace all values greater than 100 in 'm.1' with 100
m.1[m.1 > 100] = 100

# Divide all values in 'm.1' by 100 for scaling purposes
m.1 = m.1 / 100
m.1

# 3C: Combine 'gap2' and 'm.1' into a new matrix called 'gap3'
gap3 = cbind(gap2, m.1)
gap3

# 4: Create a new variable 'breastcancer2' by multiplying the 'breastcancer' column
# by the 'Odd' column, then add it as a new column in 'gap3'
breastcancer2 = as.numeric(gap3[, "breastcancer"]) * as.numeric(gap3[, "Odd"])
gap3 = cbind(gap3, breastcancer2)
gap3

# 5: Calculate the column sums and means for 'gap3' while ignoring missing values (NA)
totals = colSums(gap3, na.rm=TRUE)
averages = colMeans(gap3, na.rm=TRUE)

# Display the total sums and averages of each column
totals
averages
