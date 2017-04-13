# Exercise 4: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data(USPersonalExpenditure)


# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)


# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme
data.frame(USPersonalExpenditure)


# Create a new variable by passing the USPersonalExpenditure to the data.frame function
uspe.frame <- data.frame(USPersonalExpenditure)


# What are the column names of your dataframe?
colnames(uspe.frame)


# Why are they so strange?
# Answer: Does not allow you to have colums names as a number.


# What are the row names of your dataframe?
rownames(uspe.frame)


# Create a column `category` that is equal to your rownames
uspe.frame[, "categoty"] <- rownames(uspe.frame)


# How much money was spent on personal care in 1940?
uspe.frame["Personal Care", "X1940"]


# How much money was spent on Food and Tobacco in 1960
uspe.frame["Food and Tobacco", "X1960"]


# What was the highest expenditure category in 1960?
max(uspe.frame[, "X1960"])


### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
highest.spending <- function(year) {
  max(uspe.frame[, paste0("X", year)])
}


# Using your function, determine the highest spending category of each year
highest.spending(1940)
highest.spending(1945)
highest.spending(1950)
highest.spending(1955)
highest.spending(1960)


# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
View(uspe.frame)
