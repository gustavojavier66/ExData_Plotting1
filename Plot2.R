dataFileLoc <- "household_power_consumption.txt"
data_All <- read.table(dataFileLoc, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_Sub <- data_All[data_All$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(data_Sub$Date, data_Sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data_Sub$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
#dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()