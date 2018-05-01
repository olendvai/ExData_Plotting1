par(mfrow = c(2,2))

#after plot 2-3, variable electric is available in working directory

with(electric, plot(datetime, Global_active_power, type = "n", 
xlab = "", ylab= "Global Active Power"))
lines(electric$datetime, electric$Global_active_power)

with(electric, plot(datetime, Voltage, type = "n",
xlab = "datetime", ylab= "Voltage"))
lines(electric$datetime, electric$Voltage)

with(electric, plot(datetime, Sub_metering_1, type = "n",
xlab="", ylab="Energy sub metering"))

with(electric, lines(datetime, Sub_metering_1, col ="black"))
with(electric, lines(datetime, Sub_metering_2, col ="red"))
with(electric, lines(datetime, Sub_metering_3, col ="blue"))

legend("topright", lwd =1, cex = 0.75, bty = "n", col = c("black", "red", "blue"), 
legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

with(electric, plot(datetime, Global_reactive_power, type = "n",
xlab = "datetime", ylab= "Global_reactive_power"))
lines(electric$datetime, electric$Global_reactive_power)

dev.copy(png, file = "plot4.png")
dev.off()