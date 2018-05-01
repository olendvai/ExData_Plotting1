if(!file.exists("./household_power_consumption.txt")){
dir.create("./electric")
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = "./electric/electric.zip")
unzip("./electric/electric.zip")
unlink("./electric", recursive = TRUE)
}

library(dplyr)

electric <- read.csv.sql("./household_power_consumption.txt", sep =";",
sql = 'select * from file where Date = "1/2/2007" or Date = "2/2/2007"')

hist(electric$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)" )

dev.copy(png, file = "plot1.png")
dev.off()