png("plot1.png", width = 480, height = 480)
hist(filtered_data$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 50)
dev.off()
