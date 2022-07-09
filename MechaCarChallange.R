# DELIVERABLE 1
# Use the library() function to load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg_data <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)

# Perform linear regression using the lm() function. In the lm() function, pass 
# in all six variables (i.e., columns), and add the dataframe you created in 
# Step 4 as the data parameter.
MechaCar_mpg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar_mpg_data)

# Using the summary() function, determine the p-value and the r-squared value 
# for the linear regression model
summary(MechaCar_mpg)


# DELIVERABLE 2
# In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv 
# file as a table.
Suspension_Coil_data <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Write an RScript that creates a total_summary dataframe using the summarize() 
# function to get the mean, median, variance, and standard deviation of the 
# suspension coil’s PSI column.
total_summary <- Suspension_Coil_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Write an RScript that creates a lot_summary dataframe using the group_by() 
# and the summarize() functions to group each manufacturing lot by the mean, 
# median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- Suspension_Coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = "keep")


# DELIVERABLE 3
# t-test across all Lots
t.test(Suspension_Coil_data$PSI,mu = 1500)

# t-test on Lot 1
t.test(subset(Suspension_Coil_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# t-test on Lot 2
t.test(subset(Suspension_Coil_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# t-test on Lot 3
t.test(subset(Suspension_Coil_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)


