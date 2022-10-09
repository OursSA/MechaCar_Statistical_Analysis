library(dplyr)
library (tidyverse)
#Deliverable 1
# Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaMpgs <- read.csv(file="MechaCar_mpg.csv")

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
MPG_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaMpgs)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(MPG_reg)


#Deliverable 2
#In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
Sus_coils <- read.csv(file="Suspension_Coil.csv")

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

total_summary <- summarize(Sus_coils, mean(PSI), median(PSI), var(PSI), sd(PSI))
total_summary

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
grouped_coils <- Sus_coils %>% group_by(Manufacturing_Lot)
summarize(grouped_coils, mean(PSI))

lot_summary <- Sus_coils %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI))
lot_summary

#Deliverable 3
#RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Sus_coils$PSI, mu=1500)
#using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

t.test(PSI ~1, mu=1500, data=Sus_coils, subset = Manufacturing_Lot =="Lot1") 
t.test(PSI~1, mu=1500, data=Sus_coils, subset = Manufacturing_Lot =="Lot2")
t.test(PSI~1, mu=1500, data=Sus_coils, subset = Manufacturing_Lot =="Lot3") 

