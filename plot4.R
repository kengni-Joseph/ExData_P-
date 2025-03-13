png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2)) # Set up a 2x2 plotting area

# Top-left: Global Active Power
plot(filtered_data$Datetime, filtered_data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power")

# Top-right: Voltage over time
plot(filtered_data$Datetime, filtered_data$Voltage, type = "l", 
     xlab = "datetime", ylab = "Voltage")

# Bottom-left: Energy sub metering
plot(filtered_data$Datetime, filtered_data$Sub_metering_1, type = "l", 
     xlab = "", ylab = "Energy sub metering", col = "black")
lines(filtered_data$Datetime, filtered_data$Sub_metering_2, col = "red")
lines(filtered_data$Datetime, filtered_data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1, bty = "n")

# Bottom-right: Global Reactive Power
plot(filtered_data$Datetime, filtered_data$Global_reactive_power, type = "l", 
     xlab = "datetime", ylab = "Global Reactive Power")

dev.off()