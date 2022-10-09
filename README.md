# MechaCar_Statistical_Analysis
R unit project: Car Mechanical Data


## Linear Regression to Predict MPG
The linear regression on the cars' MPG values produced the following output:

[MPG regression](images/mpg_lin_reg.png)

From the regression, it appears that the length of the vehicle and the ground clearance of the vehicle each have a statistically significant effect on MPG.

The slope of the linear regression is not considered to be zero, because the p-value associated with the F statistic is on the order of 10 ^ -11.

The regression gave an R^2 value of 0.71, meaning that the model accounts for about 70% of the variation in MPG. This indicates that it is reasonably effective in predicting the MPG of the prototypes.

## Summary Statistics on Suspension Coils
The overall dataset of suspension coils had the following statistics:
[Overall summary](images/total_summary.png)

Divided into manufacturing lots, the statistics were as follows:
[Summary by lot](images/lot_summary.png)

Although all three lots were similar in their mean and median PSI ratings, the later lot numbers showed greater variation compared to lot 1. In particular, Lot 3 fails the design specifications, because its variance is 170 PSI, which is well above the cutoff of 100.

##

##