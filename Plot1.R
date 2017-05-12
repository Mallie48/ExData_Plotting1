## The Plot1 is created from the data exists in “Individual household electric power consumption Data Set” available from the "UC Irvine Machine Learning Repository".
## Using histogram the "frequency" of "Global Active Power consumption (kilowatts)" was created for the dates February 1 and 2, 2007.

## getwd() gives the current working directory of the R process;
## setwd(dir) set the working directory to directory:
setwd("C:/Users/name/DataPlotting")
 
 ## Storing the text file in "dataFile":
dataFile<- "./household_power_consumption.txt"

## Reading the text file using "read.table" command:
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

## Subsetting the data$Date for the duration of 2007/02/01 to 2007/02/02:
 subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## The Global_active_power col is reformatted as a numeric vector:
globalActivePower <- as.numeric(subSetData$Global_active_power)

## File is saved as plot1.png with 480 width and 480 height:
png("plot1.png", width=480, height=480)

## By hist command the plot is created with detail information of color and labels as below:
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

## dev is closed:
dev.off()
