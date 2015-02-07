plot1 <- function() {
  data <- read.csv("household_power_consumption.txt",
                   colClasses=c(rep("character",2),rep("numeric",7)),
                   sep=";",
                   na.strings=c("?"))
  data <-  subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
  png("plot1.png")
  hist(rd$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
  dev.off()
}