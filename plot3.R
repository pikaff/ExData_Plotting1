setwd("C:/Users/Feng/Downloads/data science/exploratory data analysis/ExData_Plotting1")

load("mydata.Rda")

png("plot3.png", width=480, height=480)

with(mydata, plot(time, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))

with(mydata, lines(time, Sub_metering_2, col="red"))

with(mydata, lines(time, Sub_metering_3, col="blue"))

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black","red","blue"), lty=1)

dev.off()