#after the second plotting, electric is an available variable 
#in the working directory 

with(electric, plot(datetime, Sub_metering_1, xlab="",
ylab="Energy sub metering", type = "n"))

with(electric, lines(datetime, Sub_metering_1, col ="black"))
with(electric, lines(datetime, Sub_metering_2, col ="red"))
with(electric, lines(datetime, Sub_metering_3, col ="blue"))

legend("topright", lwd =1, col = c("black", "red", "blue"), 
legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png")
dev.off()