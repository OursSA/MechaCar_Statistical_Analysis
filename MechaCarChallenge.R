library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaMpgs <- read.csv(file="MechaCar_mpg.csv")

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
MPG_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaMpgs)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(MPG_reg)