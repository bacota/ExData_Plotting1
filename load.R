classes <- c(rep("character",2), rep("numeric",7))
df <- read.table("household_power_consumption.txt", head=TRUE, na.strings="?", colClasses=classes, sep=";")
dates <- strptime(df$Date, "%d/%m/%Y")
newdf <- df[dates == as.POSIXlt("2007-02-01") | dates == as.POSIXlt("2007-02-02"),]
