plot4 <- function() {
  data <- read.csv("household_power_consumption.txt",
                   colClasses=c(rep("character",2),rep("numeric",7)),
                   sep=";",
                   na.strings=c("?"))
  data <-  subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
  datetime  <- as.POSIXlt(paste(as.Date(data$Date,format="%d/%m/%Y"), data$Time, sep=" "))
  png("plot4.png")
  par(mfrow=c(2,2))
  with(data, {
      plot(datetime,Global_active_power,type="l",xlab="",ylab="Global Active Power")
      plot(datetime,Voltage,type="l",ylab="Voltage")
      plot(datetime,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
      lines(datetime,Sub_metering_2,type="l",col="red")
      lines(datetime,Sub_metering_3,type="l",col="blue")
      legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty=1)
      plot(datetime,Global_reactive_power,type="l")
    })
  dev.off()
}