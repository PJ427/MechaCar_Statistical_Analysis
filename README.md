# MechaCar_Statistical_Analysis

Summary:  Due to the MechaCar suffering from production troubles that are blocking the progress of the manufacturing team, we are tasked to provide a review of the production data for insights to assist the manufacturing team.  We need to complete this by:  

      o Performing multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
      o Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
      o Run t-tests to determine if the manufacturing lots are statistically different from the mean population

## Linear Regression to Predict MPG
     
   ![](https://github.com/PJ427/MechaCar_Statistical_Analysis/blob/main/Resources/linear_regression_output.PNG)
   
      o Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
        - The vehicle length and the ground clearance provide a non-randomamout of variance to the mpg. Their p-values are below the signifcance level of 0.05%.

      o Is the slope of the linear model considered to be zero? Why or why not?
        - The p-value of our linear regression analysis is 5.35e11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is         sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
   
      o Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
        - From our linear regression model, the r-squared value is 0.7149 which means that roughly 71% of all predictions will be correct when using this linear model.

## Summary Statistics on Suspension Coils

   Summary - The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

### Total Summary - 
      The manufacturing lots had a PSI Variance of 62.3, meeting the design specification.
![toatl_summary](https://github.com/PJ427/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.PNG)

### Lot Summary - 
      The specific lots show the lot 1 and 2 met the design specification but lot 3 did not meet the design specifications, actually exceeding it.
![lot_summary](https://github.com/PJ427/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.PNG)
   
## T-Tests on Suspension Coils

   Summary - As a whole the p-value is 0.06028 which is above the significant level of 0.05% so it is not statiscally different.  When grouped by lots, lots 1 and 2 are above the significance level showing they are statiscally different.  Lot 3 was below the signicance level and is the only lot that is different.
   
   ![](https://github.com/PJ427/MechaCar_Statistical_Analysis/blob/main/Resources/t_tests.PNG)

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

      o What metric or metrics are you going to test?
      - One of the best metrics to test would be the fuel efficiency.  With fluctuating fuel costs, many consumers are always looking to stretch the dollar.  Vehicles with         great fuel efficiency would help increase sales.
      
      o What is the null hypothesis or alternative hypothesis?
      - H0 : The means of all groups are equal, or µ1 = µ2 = … = µn.
      - Ha : At least one of the means is different from all other groups.
      
      o What statistical test would you use to test the hypothesis? And why?
      - The best way to complete this study would be to use the one-way ANOVA.  Using this we could test the means of a single dependent variable across a single independent       variable with multiple groups. 

      o What data is needed to run the statistical test?
      - We would be able to determine our fuel efficiency by using the mpf of different cars based on vehicle class.
