# Install the tidyverse package
install.packages("tidyverse")

library(tidyverse)

# Import and read the MechaCar_mpg.csv
MechaCar_mpg <- read_csv("MechaCar_mpg.csv")

# Perform multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)

# Determine the p-value and r-square value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

# Import and read the Suspension_Coil.csv
Suspension_Coil <- read_csv("Suspension_Coil.csv")
View(Suspension_Coil)

# Create a total_summary
total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI))
View(total_summary)

# Create a lot_summary
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups = "keep")
View(lot_summary)

# Perform Suspension Coil t-test
t.test(Suspension_Coil$PSI, mu=1500)

# Perform subset Manufacturing Lot t-tests
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)       
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
