plot4 <- function() {
    data <- read.csv("subset_data")
    data$Date_Time <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
    loaded <<- data

    png("plot4.png")

    par(mfrow = c(2, 2))

    # 1,1
    plot(data$Date_Time, data$Global_active_power, ylab = "Global Active Power", xlab = "", type = "l")

    # 1,2
    plot(data$Date_Time, data$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")

    # 2, 1
    plot(data$Date_Time, data$Sub_metering_1, ylab = "Energy sub metering", xlab = "", type = "l")
    lines(data$Date_Time, data$Sub_metering_2, col = "red")
    lines(data$Date_Time, data$Sub_metering_3, col = "blue")
    legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           col = c("black", "red", "blue"), lty=1)


    # 2, 2
    plot(data$Date_Time, data$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l");


    dev.off()
}