source("loaddata.R")
data <- loaddata()
Sys.setlocale(category = "LC_ALL", locale = "English")
time <- paste(data$Date, data$Time, sep = " ")
time <- strptime(time, format = "%d/%m/%Y %H:%M:%S")
png(filename = "4.png", width = 480, height = 480, units = 'px', bg = "transparent")
par(mfrow = c(2,2))

plot(time, data$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
plot(time, data$Voltage, type = "l", ylab = "Voltage", xlab = "datatime")
plot(time, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "" )
lines(time, data$Sub_metering_2, col = "red")
lines(time, data$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), box.lty = 0, lty =1)
plot(time, data$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datatime")
dev.off()
  

