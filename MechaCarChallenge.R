# Install the tidyverse package
install.packages("tidyverse")

library(tidyverse)

# The read_csv() function imports our dataset as a data table
MechaCar_mpg <- read_csv("MechaCar_mpg.csv")

# Perform multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)

# Determine the p-value and r-square value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))
