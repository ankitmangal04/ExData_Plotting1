dataset <- read.table("C:\\Users\\amanga1\\Downloads\\Exploratory data analysis\\working_dir\\household_power_consumption.txt", header = TRUE, sep = ";",stringsAsFactors = FALSE)
subset_sm  <- dataset[ dataset$Date %in% c("1/2/2007","2/2/2007"),]

date_time <- strptime(paste(subset_sm$Date, subset_sm$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(subset_sm$Global_active_power)
grp <- as.numeric(subset_sm$Global_reactive_power)
volt <- as.numeric(subset_sm$Voltage)
subMetering_1 <- as.numeric(subset_sm$Sub_metering_1)
subMetering_2 <- as.numeric(subset_sm$Sub_metering_2)
subMetering_3 <- as.numeric(subset_sm$Sub_metering_3)


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(date_time, gap, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(date_time, volt, type="l", xlab="datetime", ylab="Voltage")

plot(date_time, subMetering_1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, subMetering_2, type="l", col="red")
lines(date_time, subMetering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(date_time, grp, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()

