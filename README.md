# MechaCar_Statistical_Analysis
## Overview
### Background
AutosRUs’ management team has asked that the production data be reviewed for insights that may help the manufacturing team address production issues with AutosRUs’ newest prototype, the MechaCar.

### Tasks
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
Looking at the linear regression, we see that vehicle ground clearance and lenth have a significant impact on predicting mpg due to the Pr(>|t|) values being less than .05. The slope of the line is not zero, which indicates one (or more) variable has a significant relationship to MPG. Overall, the linear model has a moderate effectivness at predict the MPG of the MechaCar based on the R-squared value of .7149, or 71.49%.

<img width="502" alt="Screen Shot 2022-07-09 at 11 10 24 AM" src="https://user-images.githubusercontent.com/101379969/178117968-8d4f0bda-f0cc-4d84-8e8a-04998fb92a7f.png">

## Summary Statistics on Suspension Coils
The suspension coil design specfications for the MechaCar state that the coils must not exeed 100lbs per square inch. On average, the manufactured suspensions coils meet the design requirements. However, Lot 3 does not meet the psi variance of 100 with a psi variance of 170.29.

<img width="302" alt="Screen Shot 2022-07-09 at 11 26 53 AM" src="https://user-images.githubusercontent.com/101379969/178118711-a1739997-b5e1-4456-a6ca-6e3cc6433e72.png"><img width="459" alt="Screen Shot 2022-07-09 at 11 36 30 AM" src="https://user-images.githubusercontent.com/101379969/178118717-4df2286e-dc62-4ea2-be75-d194b3e3ecde.png">

## T-Tests on Suspension Coils
Overall, the suspension coils met manufactyring specifications. Using a significance level of .05, our p-value for all manufacturing lots is above the signifiance level. 

<img width="401" alt="Screen Shot 2022-07-09 at 11 53 49 AM" src="https://user-images.githubusercontent.com/101379969/178119238-9d5f66d6-436e-497a-961b-2851a2417841.png">

However, lot companirson show that Lot 1 and Lot 2 are within specifications, but Lot 3 falls outside with a p-value of .042.

<img width="573" alt="Screen Shot 2022-07-09 at 11 54 58 AM" src="https://user-images.githubusercontent.com/101379969/178119370-c6319009-e795-4684-b715-df1ab5ddfe6c.png">

## Study Design: MechaCar vs Competition
