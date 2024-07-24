# Load the readxl package if not already loaded
library(readxl)

# Change the working directory as I am storing all the questions file in separate
# folders. To change the working directory we will be using the setwd() function
setwd('/home/adityakrcodes/Code/5BCAA - 22C01009/Q4')

# Read the dataset from the Excel file
laptop_sales <- read_excel("laptop_data.xlsx")

# Display the first few rows of the dataset to understand its structure
head(laptop_sales)

# Calculate the maximum price of laptops for each company
max_prices <- aggregate(Price ~ Company_Name, data = laptop_sales, max)
names(max_prices) <- c("Company_Name", "Max_Price")

# Calculate the minimum price of laptops for each company
min_prices <- aggregate(Price ~ Company_Name, data = laptop_sales, min)
names(min_prices) <- c("Company_Name", "Min_Price")

# Calculate the average price of laptops for each company
avg_prices <- aggregate(Price ~ Company_Name, data = laptop_sales, mean)
names(avg_prices) <- c("Company_Name", "Avg_Price")

# Print the results
print("Maximum prices of laptops for each company:")
print(max_prices)

print("Minimum prices of laptops for each company:")
print(min_prices)

print("Average prices of laptops for each company:")
print(avg_prices)
