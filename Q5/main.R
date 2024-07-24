# Load the dplyr package if not already loaded
library(dplyr)
# Change the working directory as I am storing all the questions file in separate
# folders. To change the working directory we will be using the setwd() function
setwd('/home/adityakrcodes/Code/5BCAA - 22C01009/Q5')

# Import the CSV file
student_data <- read.csv('input.csv')

# View the first few rows of the data
head(student_data)

# Find the total number of rows and columns
num_rows <- nrow(student_data)
num_cols <- ncol(student_data)
cat("Total number of rows:", num_rows, "\n")
cat("Total number of columns:", num_cols, "\n")

# Find the maximum students enrolled for BCA
max_bca_students <- student_data %>% filter(course == "BCA") %>% nrow()
cat("Maximum students enrolled for BCA:", max_bca_students, "\n")

# Count the number of students enrolled for each course
course_count <- student_data %>% group_by(course) %>% summarise(count = n())
print(course_count)
