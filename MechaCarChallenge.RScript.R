# Deliverable 1
# Install dplyr packages
install.packages("dplyr")

# Read the CSV File
MechaCar_mpg <- read.csv("MechaCar_mpg.csv")
View(MechaCar_mpg)

# Perform the linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar_mpg) #generate multi linear regression

#Use the summary function to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar_mpg)) #summarize linear model


# Deliverable 2
# Read the Suspension coil file
sus_coil <- read.csv("Suspension_Coil.csv")

# Load the dplry library
library(dplyr)

# Summarize measures of central tendancy
total_summary <- sus_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # create total summary table with multiple columns

#Create a df that groups each manufacturing lot by measures of central tendency
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # create lot summary with group_by and summarize


# Deliverable 3
# write a t test comparing manufacturing lot means to standard 1500
t.test((sus_coil$PSI),mu=1500)

#t test for lot 1
t.test(subset(sus_coil, Manufacturing_Lot == "Lot1")$PSI,mu=1500)

# t test for lot 2
t.test(subset(sus_coil, Manufacturing_Lot == "Lot2")$PSI,mu=1500)

# t test for lot 3
t.test(subset(sus_coil, Manufacturing_Lot == "Lot3")$PSI,mu=1500)




