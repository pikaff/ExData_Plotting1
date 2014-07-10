setwd("C:/Users/Feng/Downloads/data science/exploratory data analysis/ExData_Plotting1")

load("mydata.Rda")

png("plot4.png", width=480, height=480)

par(mfcol=c(2,2))

#top left
with(mydata, plot(time, Global_active_power, type="l",
                  ylab="Global Active Power (kilowatts)", xlab=""))

#bottom left
with(mydata, plot(time, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))

with(mydata, lines(time, Sub_metering_2, col="red"))

with(mydata, lines(time, Sub_metering_3, col="blue"))

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black","red","blue"), lty=1)

#top right
with(mydata, plot(time, Voltage, type="l",  xlab="datetime"))

#bottom right
with(mydata, plot(time, Global_reactive_power, type="l", xlab="datetime"))


dev.off()