# Some variables
data_url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
zip_file <- 'power_consumption.zip'
data_folder <- 'data'

# create 'data' directory if it doesn't exist
dir.create(data_folder, showWarnings = FALSE)

# Handle data (download, unzip, put the .txt-file into 'data, delete zip-file)
download.file(data_url, method = 'curl', destfile = zip_file )
unzip(zip_file, exdir = 'data')
unlink(zip_file)
