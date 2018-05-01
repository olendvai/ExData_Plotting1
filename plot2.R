#in order to avoid the local weekday names, English local time was 

Sys.setlocale("LC_TIME", "C")

#after making the first plot, variable electric is available 
#in the working directory, therefore just a reference was made 

electric$Date <- as.Date(electric$Date, "%d/%m/%Y")


electric <- mutate(electric, datetime = paste(Date, Time))
electric$datetime <- strptime(electric$datetime, "%Y-%m-%d %T")
plot(electric$datetime, electric$Global_active_power, type = "n", xlab = "", ylab= "Global Active Power (kilowatts)")
lines(electric$datetime, electric$Global_active_power)

dev.copy(png, file = "plot2.png")
dev.off()