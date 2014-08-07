source("loaddata.R")
main <- function(){
  par(bg = "transparent")
  data <- loaddata()
  time <- paste(data$Date, data$Time, sep = " ")
  time <- strptime(time, format = "%d/%m/%Y %H:%M:%S")
  png(filename = "3.png", width = 480, height = 480, units = 'px', bg = "transparent")
  plot(time, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", bg = "transparent" )
  lines(time, data$Sub_metering_2, col = "red")
  lines(time, data$Sub_metering_3, col = "blue")
  legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
  dev.off()
  
}
