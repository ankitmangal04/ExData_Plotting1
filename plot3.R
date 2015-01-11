dataset <- read.table("C:\\Users\\amanga1\\Downloads\\Exploratory data analysis\\working_dir\\household_power_consumption.txt", header = TRUE, sep = ";",stringsAsFactors = FALSE)
subset_sm  <- dataset[ dataset$Date %in% c("1/2/2007","2/2/2007"),]

date_time <- strptime(paste(subset_sm$Date, subset_sm$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

subMetering_1 <- as.numeric(subset_sm$Sub_metering_1)
subMetering_2 <- as.numeric(subset_sm$Sub_metering_2)
subMetering_3 <- as.numeric(subset_sm$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(date_time, subMetering_1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, subMetering_2, type="l", col="red")
lines(date_time, subMetering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
