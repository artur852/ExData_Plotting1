plot3 <- function() {
    data <- read.csv("subset_data")
    data$Date_Time <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
    loaded <<- data
    png("plot3.png")
    plot(data$Date_Time, data$Sub_metering_1, ylab = "Energy sub metering", xlab = "", type = "l")
    lines(data$Date_Time, data$Sub_metering_2, col = "red")
    lines(data$Date_Time, data$Sub_metering_3, col = "blue")
    legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    	   col = c("black", "red", "blue"), lty=1)
    dev.off()
}