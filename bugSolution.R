```R
# Corrected function using the built-in mean() function
calculate_mean_corrected <- function(x) {
  mean(x, na.rm = TRUE)
}

# Corrected function with manual NA handling
calculate_mean_corrected2 <- function(x) {
  x <- x[!is.na(x)] # removes NA values before calculating mean
  if (length(x) == 0) {
    return(NA) 
  } else {
    return(sum(x) / length(x))
  }
}

# Example usage
my_vector <- c(1, 2, 3, NA, 5)
result <- calculate_mean_corrected(my_vector)  #Correct result using mean()
print(result)

result2 <- calculate_mean_corrected2(my_vector) #Correct result with manual NA handling
print(result2)
```