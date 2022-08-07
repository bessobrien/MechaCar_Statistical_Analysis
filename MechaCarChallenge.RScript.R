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

# Summarize measures of central tendancy
total_summary <- sus_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # create total summary table with multiple columns

#Create a df that groups each manufacturing lot by measures of central tendancy
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # create lot summary with group_by and summarize


