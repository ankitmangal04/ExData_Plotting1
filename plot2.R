dataset <- read.table("C:\\Users\\amanga1\\Downloads\\Exploratory data analysis\\working_dir\\household_power_consumption.txt", header = TRUE, sep = ";",stringsAsFactors = FALSE)
subset_sm  <- dataset[ dataset$Date %in% c("1/2/2007","2/2/2007"),]

date_time <- strptime(paste(subset_sm$Date, subset_sm$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(date_time, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()

