setwd("C:/Users/Feng/Downloads/data science/exploratory data analysis/ExData_Plotting1")

data <- read.table("household_power_consumption.txt",  
                   sep=";", header=TRUE, na.strings="?", stringsAsFactors=FALSE)

#format date and time variable to POSIXlt
data$time <- strptime(with(data, paste(Date, Time)), "%d/%m/%Y %H:%M:%S")

#subset data
mydata <- subset(data, as.Date(data$time)==as.Date("2007-02-01") 
                 | as.Date(data$time)==as.Date("2007-02-02")) 
save(mydata, file="mydata.Rda")




### plot 1
png("plot1.png", width=480, height=480)

hist(mydata$Global_active_power, main="", xlab="", col="red", ylim=c(0,1200))

title(main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()

