
## The household_power_consumption is saved in dataFile and read by read.table command, then the time frame is defined by data command:
## More details are descibed in plot1.R.
dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## str is introduced as day-month-year and hour-minute-second:
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

## A numeric file of data of Global_active_power is created by as.numeric command:
globalActivePower <- as.numeric(subSetData$Global_active_power)

## A png file is created by command with 480 x 480 pixels:
png("plot2.png", width=480, height=480)

## Using plot command a plot of data for household_power_consumption during 1/2/2007 to 2/2/2007 is created with desirable labels:
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

## dev set off:
dev.off()
