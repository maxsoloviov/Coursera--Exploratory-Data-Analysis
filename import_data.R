# Function to read data
read_data <- function (file_path) {
    # Read the data
    data_full <- read.csv(file_path, header=T, sep=';', na.strings="?", 
                          check.names=F, stringsAsFactors=F, comment.char="", quote='\"',)
    data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")
    
    # Filter the data
    data <- subset(data_full, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
    
    # Tidy up
    rm(data_full)
    
    data
}