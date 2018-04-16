plot2 <- function() {
    data <- read.csv("subset_data")
    data$Date_Time <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
    png("plot2.png")
    plot(data$Date_Time, data$Global_active_power, ylab = "Global Active Power (killowatts)", xlab = "", type = "l")
    dev.off()
}