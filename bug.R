```R
# This function attempts to calculate the mean of a vector, but it has a subtle error.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vectors
  }
  sum_x <- sum(x, na.rm = TRUE) # removes NA values before summation
  mean_x <- sum_x / length(x) # this is the problematic line 
  return(mean_x)
}

# Example usage (this will not return the correct average)
my_vector <- c(1, 2, 3, NA, 5)
result <- calculate_mean(my_vector)
print(result)
```