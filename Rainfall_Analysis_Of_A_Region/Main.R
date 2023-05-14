library(readxl)
library(ggplot2)

# Import data from Excel file
data <- read_excel("D:/RProb/Coastal-Andhra-Rainfall-Dataset.xlsx")

# Plot a line graph of annual rainfall over years
ggplot(data, aes(x=YEAR, y=ANNUAL)) +
  geom_line() +
  geom_smooth(method="loess", se=FALSE) +  # Add smoothed line
  labs(x="Year", y="Annual (mm)") + #To plot grpahs of different columns we used different y axis values 
  theme_minimal()