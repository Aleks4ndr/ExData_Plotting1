library(sqldf)

loaddata <- function (){
  if( !file.exists("household_power_consumption.zip")){
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.zip")
  }
  unzip("household_power_consumption.zip")
#  data <- fread("household_power_consumption.txt", na.strings = c('?') )
  data <- read.csv.sql("household_power_consumption.txt", sep = ";", sql = 'select * from file where Date = "1/2/2007" OR Date = "2/2/2007"')
  
  



}

