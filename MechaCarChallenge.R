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