df <- read.table("ExData_Plotting1/household_power_consumption_201702.txt", header = TRUE, sep = ";", colClasses = c("character","character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

df$Date <- as.Date(df$Date, "%d/%m/%Y")

hist(df$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

dev.copy(png, file="ExData_Plotting1/plot1.png")
dev.off()