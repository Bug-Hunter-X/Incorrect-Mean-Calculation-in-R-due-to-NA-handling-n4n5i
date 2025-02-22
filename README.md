# R Bug: Incorrect Mean Calculation
This repository demonstrates a common subtle error in R when calculating the mean of a vector containing `NA` values.  The `calculate_mean` function attempts to handle `NA` values, but does not adjust the divisor to reflect the number of non-`NA` elements.  This leads to an incorrect mean. The solution shows how to properly handle `NA` values using the `mean()` function or by manually adjusting the divisor.