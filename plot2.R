df <- read.table("ExData_Plotting1/household_power_consumption_201702.txt", header = TRUE, sep = ";", colClasses = c("character","character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

df$Date <- as.Date(df$Date, "%d/%m/%Y")
df$Datetime <- strptime(paste(df$Date,df$Time),"%Y-%m-%d %H:%M:%S")

plot(df$Datetime, df$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")


dev.copy(png, file="ExData_Plotting1/plot2.png", width=480, height=480)
dev.off()