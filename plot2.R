data <- read.csv("household_power_consumption.txt",
                 colClasses=c(rep("character",2),rep("numeric",7)),
                 sep=";",
                 na.strings=c("?"))
data <-  subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
dateTime  <- as.POSIXlt(paste(as.Date(data$Date,format="%d/%m/%Y"), data$Time, sep=" "))
png("plot2.png")
plot(dateTime,data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
