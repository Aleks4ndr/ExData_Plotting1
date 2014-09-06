source("loaddata.R")
data <- loaddata()
png(filename = "1.png", width = 480, height = 480, units = 'px', bg = "transparent")
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()


