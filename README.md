Module 15 Challenge write-up

# MechaCar_Statistical_Analysis
R & R scripts

# Linear Regression to Predict MPG
Multiple linear regression models allow us to determine if there is a significant statistically relationship between any number of variables to a single output. This module’s challenge had us create a linear regression model in “R script” to determine the significance for several design variables on a vehicle’s miles per gallon (mpg), we were using data provided for 50 of MechaCar prototypes. We selected the following five features for our analysis: vehicle weight, spoiler angle, ground clearance, All Wheel Drive (AWD) and vehicle length. 

![image](https://user-images.githubusercontent.com/95320265/163484080-0819f524-5acd-4136-9f0d-99098a5ec082.png)











•	Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Only two of the five variables proved to have statistically significant impact on the mpg based on the above result. Those with *** are the variables that are significant. Both vehicle length (p-value of 2.60e-12) and ground clearance (p-value of 5.21e-08), meet the standard 0.05 p-value that indicates a statistical significance, while all the other variables did not. The estimate numbers indicate the increase in MPG’s per one unit increased in the variable measurement.

•	Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model would not be considered zero. Since the overall p-value for the multiple linear regression, all five variables, is 5.35e-11, which is below the significance level of 0.05; therefore, we can reject the null hypothesis of a zero slope.

•	Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
With r-squared value of 0.7149, which means that the five selected variables account for over 70% of the changes in gas milage; and with a significant p-value of 5.35e-11 we can determine that our model effectively predicts mpg of MechaCar prototypes. 

