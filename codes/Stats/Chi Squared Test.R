#Test the effect of Gender on Internet use


data = read.csv("Telemedicine_extract.csv")


names(data)

chisq.test(data$Gender, data$InternetUse)

#p-value =  0.8996
#we cannot reject null hypothesis: 
#we do not have evidence that internet use is effected by gender
#Best to use a bar plot
