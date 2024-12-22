#Load Data
data <- read.csv("US  E-commerce records 2020_YC.csv", header = TRUE)

#Load Required Libraries
library(psych)
install.packages(nnet)
library(nnet)

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
        col = "blue")
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

###############################################################################

#-------------------------------------------------
# Advanced Analysis
#-------------------------------------------------


#regression analysis of ship mode by segment 
model1 = multinom(data$Ship.Mode~data$Segment, data = data)

summary(model1)

#stored the coefficients of the summary for model1 in variable named coefficients
coefficients = summary(model1)$coefficients
coefficients

##stored the standard errors of the summary for model1 in variable named standarderrors
standarderrors = summary(model1)$standard.errors 
standarderrors

#calculated the z-values for model1
z_scores = coefficients / standarderrors

#used the z-values to calculate the p-values for the multinomial regression in model1
p_values <- 2 * (1 - pnorm(abs(z_scores)))
p_values


#regression analysis of ship mode by region  
model2 = multinom(data$Ship.Mode~data$Region, data = data)
summary(model2)

#stored the coefficients of the summary for model2 in variable named coefficients2
coefficients2 = summary(model2)$coefficients
coefficients2

#stored the standarderrors of the summary for model2 in variable named standarderrors2
standarderrors2 = summary(model2)$standard.errors 
standarderrors2

#calculated the z-values for model2
z_scores2 = coefficients2 / standarderrors2

#used the z-values to calcualte the p-values for model2
p_values2 <- 2 * (1 - pnorm(abs(z_scores2)))
p_values2

#conducted a chi sq test to verify the regerssion results for model2
model3table = table(data$Ship.Mode,factor(data$Region))
model3table
#displays the p-value for the chisq test of ship mode and region
chisq.test(model3table)


#barplot visualizes the usage frequency of ship mode by region
mycolors = c('red','blue','pink','green')

barplot(model3table,beside = TRUE,
        xlab = "Region",
        ylab = "Usage Frequency",
        col = mycolors)
legend("topleft",legend =c("First Class","Same Day","Second Class","Standard Class") ,cex = .65,fill =mycolors )







######---Create Visualization PDF--------###########


pdf("EcommercePlots.pdf")
par(mfrow = c(2,2))

#-----Total Sales by Product Category
plot_one = aggregate(Sales~Category, data = data, sum)

barplot(
  plot_one$Sales, 
  names.arg = plot_one$Category, 
  col = "blue", 
  xlab = "Category", 
  ylab = "Sales", 
  main = "Sales by Product Category", 
  cex.names=.8
)

#---Total Sales by Region
plot_two = aggregate(Sales~Region, data = data, sum)

barplot(
  plot_two$Sales, 
  names.arg = plot_two$Region, 
  col = "green", 
  xlab = "Category", 
  ylab = "Sales", 
  main = "Sales by Region", 
  
)



#---barplot visualizes the usage frequency of ship mode by region
mycolors = c('red','blue','pink','green')

barplot(model3table,beside = TRUE,
        xlab = "Region",
        ylab = "Usage Frequency",
        col = mycolors)
legend("topleft",legend =c("First Class","Same Day","Second Class","Standard Class") ,cex = .65,fill =mycolors )




#---Total Profit by Sub-Catgeory 


profit_by_subcategory <- aggregate(Profit ~ Sub.Category, data = data, sum)

#Sort the data
profit_by_subcategory <- profit_by_subcategory[order(profit_by_subcategory$Profit, decreasing = TRUE), ]

par(mar = c(5, 10, 4, 2))  # Adjust margins for label visibility


barplot(profit_by_subcategory$Profit,
        names.arg = profit_by_subcategory$Sub.Category,
        main = "Total Profit by Sub-Category",
        xlab = "Total Profit (in Dollars)",
        horiz = TRUE,
        col = "blue",
        las = 1,  # Horizontal y-axis labels
        cex.names = 0.8  #Smaller text for labels
)


dev.off()



#-------------------------------##############
#Data Analysis Visualization PDF
#-------------------------------------##########

pdf("AnalysisPlots.pdf")
par(mfrow = c(2,2))


# ----------------------------------------------------
# Scatter Plot: Profit vs Discount with Regression Line
# ----------------------------------------------------

# Scatter plot to visualize the relationship between Discount and Profit
plot(data$Discount, data$Profit, 
     xlab = "Discount (%)", 
     ylab = "Profit (USD)", 
     main = "Scatter Plot: Profit vs Discount", 
     pch = 16, col = "blue", 
     cex = 0.8)  # Adjust point size for clarity

profit_discount_model <- lm(Profit ~ Discount, data = data)

abline(profit_discount_model, col = "red", lwd = 2, lty = 2) 

summary(profit_discount_model)


# ----------------------------------------------------
#---- Barplot for testing the effect of region on Average Profit
# ----------------------------------------------------

barplot(mean_profit$Profit,
        names.arg = mean_profit$Region,
        main = "Average Profit by Region",
        xlab = "Region",
        ylab = "Average Profit",
        col = "blue")
#______________________________________





dev.off()
