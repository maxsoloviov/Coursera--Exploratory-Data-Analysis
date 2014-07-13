# !!! The function to read the data from the file (read_data) is defined in 'import_data.R'
source('import_data.R')

file_path <- 'data/household_power_consumption.txt'
# Read the data 
data <- read_data(file_path)

# Plot 1
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
