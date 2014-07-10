setwd("C:/Users/Feng/Downloads/data science/exploratory data analysis/ExData_Plotting1")

load("mydata.Rda")

png("plot2.png", width=480, height=480)

with(mydata, plot(time, Global_active_power, type="l",
                  ylab="Global Active Power (kilowatts)", xlab=""))

dev.off()