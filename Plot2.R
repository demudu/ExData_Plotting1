setwd("D:/AppliedStatistics/Cousera/4_EXDATA/Project1")

#load power Data to R environment
power <- read.table('power.data')

## Open png device; create 'plot2.png' in current working directory
png(filename='plot2.png')

power$dt <- strptime(paste(power$Date, power$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
plot( power$dt, 
      power$Global_active_power,
      ylab='Global Active Power (kilowatts)', xlab='', type='l')

dev.off()
