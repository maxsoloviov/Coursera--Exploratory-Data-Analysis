# !!! The function to read the data from the file (read_data) is defined in 'import_data.R'
source('import_data.R')

file_path <- 'data/household_power_consumption.txt'
# Read the data 
data <- read_data(file_path)

# Convert the dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

# Plot 2
plot(data$Global_active_power~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()