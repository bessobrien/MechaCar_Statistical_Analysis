# MechaCar Analyisis
## Summary


# Analysis
## Linear Regression to Predict MPG

In this first analysis, we used a multiple linear regression model. We are able to obtain and analyze a greater amount of data using a multiple regession model vs a single linear regression model. 

We created the linear regession summary: LINK ![1_summary_output]()

Going through this analysis, we asked ourselves these questions:

**Q:** Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

**A:** Vehicle weight was the main variable that provided a non-random amount of variance to the mpg values. AWD is an additional variable that may also provide some non-random amount of variance to the mpg values.

**Q:** Is the slope of the linear model considered to be zero? Why or why not?

**A:** No, the slope is not considered to be zero. We have established mpg is not determined by random chance and error; vehicle weight provided a non-random amount of variance to mpg. Therefore, our linear model slope is not zero.

**Q:** Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

**A:** No - the multiple linear regression was good at predicting for our current dataset. R-squared value was 0.71, which means that roughly 71% of the variability of our dependent variable is explained using this linear model. However, the lack of significant variables is evidence of overfitting. The performance of the model performed well with the current dataset, but fails to generalize and predict future data correctly.

## Summary Statistics on Suspension Coils

The second analysis was taking the results from mltiple production lots. The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

We first used the summarize() function in R to create a table of total summary:
![2_table_summary]LINK

We then used group_by() and summarize() to calculated the same measures of central tendency, but grouped by manufacturing lot size:
![2_lot_summary]LINK

Our analysis question:

**Q:** The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

**A:** After looking at the data, we can see that in total, our variance of the suspension coils did not exceed 100 pounds per square inch. However, after looking at the lots, we can see that Lot 3 had variance that exceeded the design specifications of 100 pounds per square inch. We can conclude that we need to review the design process, and investigate Lot 3 specifically to find factors that may have contributed to this large variance and what we need to do to adjust in future lots.



