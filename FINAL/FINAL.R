#Load Data
data <- read.csv("projectdata.csv", header = TRUE)

#Load Required Libraries
library(psych)
library(ggplot2)

# --------------------------------------------------------------------------------
# Question 1: Analyze Sales by Category and Region
# --------------------------------------------------------------------------------

# Fit the linear regression model
q1.model <- lm(Sales ~ Category + Region, data = data)

# Display the model results
summary(q1.model)


# --- Visualizations: Sales Analysis ---

# 1. Total Sales by Product Category
plot_one = aggregate(Sales~Category, data = data, sum)

barplot(
  plot_one$Sales, 
  names.arg = plot_one$Category, 
  col = "blue", 
  xlab = "Category", 
  ylab = "Sales", 
  main = "Sales by Product Category", 
)

dev.off()


# 2. Total Sales by Region
plot_two = aggregate(Sales~Region, data = data, sum)

barplot(
  plot_two$Sales, 
  names.arg = plot_two$Region, 
  col = "green", 
  xlab = "Category", 
  ylab = "Sales", 
  main = "Sales by Region", 
  
)

dev.off()


# --------------------------------------------------------------------------------
# Question 2: Impact of Variables on Sales
# --------------------------------------------------------------------------------

##---linear regression model----------
q2.model <- lm(Sales ~ Ship.Mode + Segment + Sub.Category + Quantity + Discount, data = data)

###-------Display the results--------------
summary(q2.model)

# --------------------------------------------------------------------------------
# Question 3: Profit Analysis by Region
# --------------------------------------------------------------------------------

# Fit the linear regression model for Profit by Region
q3.model <- lm(Profit ~ Region, data = data)

###-------View Results--------------
summary(q3.model)

# Calculate the mean profit for each region using the aggregate
mean_profit <- aggregate(Profit ~ Region, data = data, mean)

# --- Visualizations: Profit Analysis ---

# Barplot for Average Profit by Region

barplot(mean_profit$Profit,
        names.arg = mean_profit$Region,
        main = "Average Profit by Region",
        xlab = "Region",
        ylab = "Average Profit",
        col = "lightblue",
        ylim = c(0, max(mean_profit$Profit) + 50))

# --------------------------------------------------------------------------------
# Question 4: Analyzing the Relationship Between Profit and Discount
# --------------------------------------------------------------------------------

# Create the linear regression model
q4.model <- lm(Profit ~ Discount, data = data)

# Summarize the model to view results
summary(q4.model)

# Interpretation:
# The p-value is < 0.05, allowing us to accept the alternative hypothesis.
# This means there is a significant association between Profit and Discount.

# --- Visualization: Scatter Plot of Profit vs Discount ---

plot(data$Discount, data$Profit, 
     data=data,
     xlab="Discount", 
     ylab="Profit", 
     main = "Profit vs Discount", 
     cex=0.8, 
     pch=16) 

# Add regression line to the scatter plot
fit = lm(Profit~Discount, data=data) 
abline(fit,lty=2, lwd=2) 

dev.off()
