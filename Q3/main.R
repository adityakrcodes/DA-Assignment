# Generating Sample Data for 30 days
days <- 1:30 
# Mean temperature of 30°C with a standard deviation of 5
temperatures <- round(rnorm(30, mean = 30, sd = 5), 1)

# Create a data frame
weather_data <- data.frame(day = days, temperature = temperatures)

# Calculating Average Temperature
average_temperature <- mean(weather_data$temperature)

# Generating a Graph
# Load the ggplot2 package
library(ggplot2)

# Create the temperature plot
ggplot(weather_data, aes(x = day, y = temperature)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  labs(title = "Daily Temperatures for the Current Month",
       x = "Day",
       y = "Temperature (°C)") +
  theme_minimal()

# Dynamic Report according to the weather
report <- sprintf("Weather Report for the Current Month:
The average temperature recorded for the current month is %.1f°C. The daily
temperature readings were recorded consistently throughout the month. The graph
below shows the daily temperatures recorded.On average, the temperatures 
fluctuated around 30°C with a few notable variations. The highest temperature 
recorded was %.1f°C, and the lowest was %.1f°C.The data collected provides 
valuable insights into the weather patterns for this month, which can be used 
for further analysis and forecasting. Please refer to the attached graph for a
visual representation of the daily temperatures recorded.", average_temperature,
                  max(weather_data$temperature), min(weather_data$temperature))

cat(report)
