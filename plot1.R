plot1 <- function() {
    data <- read.csv("subset_data")
    png("plot1.png")
    hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", breaks = 20)
    dev.off()
}