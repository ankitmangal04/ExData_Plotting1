dataset <- read.table("C:\\Users\\amanga1\\Downloads\\Exploratory data analysis\\working_dir\\household_power_consumption.txt", header = TRUE, sep = ";",stringsAsFactors = FALSE)
subset_sm  <- dataset[ dataset$Date %in% c("1/2/2007","2/2/2007"),]
gap <- as.numeric(subset_sm$Global_active_power)
to_plot <- na.omit(gap)

png("plot1.png", width=480, height=480)
hist(to_plot, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()