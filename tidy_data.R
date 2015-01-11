household_power_consumption<-read.table("./Data/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

household<-household_power_consumption[household_power_consumption$Date == "1/2/2007" | household_power_consumption$Date == "2/2/2007", ]

household$Date<-as.Date(household$Date, "%d/%m/%Y")
class(household$Date)

global_active_power<-as.numeric(household$Global_active_power)
datetime<-strptime(paste(household$Date,household$Time),"%Y-%m-%d %H:%M:%S")
