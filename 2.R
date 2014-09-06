source("loaddata.R")
data <- loaddata()
time <- paste(data$Date, data$Time, sep = " ")
time <- strptime(time, format = "%d/%m/%Y %H:%M:%S")
png(filename = "2.png", width = 480, height = 480, units = 'px', bg = "transparent")
plot(time, data$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()


