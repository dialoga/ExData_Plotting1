df <- read.table("ExData_Plotting1/household_power_consumption_201702.txt", header = TRUE, sep = ";", colClasses = c("character","character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

df$Date <- as.Date(df$Date, "%d/%m/%Y")
df$Datetime <- strptime(paste(df$Date,df$Time),"%Y-%m-%d %H:%M:%S")

png("ExData_Plotting1/plot3.png", width = 480, height = 480)
plot(df$Datetime, df$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="")
lines(df$Datetime, df$Sub_metering_2, type="l",col="red")
lines(df$Datetime, df$Sub_metering_3, type="l",col="blue")
legend("topright", legend=colnames(df[7:9]),
       col=c("black", "red", "blue"), lty=1)

dev.off()