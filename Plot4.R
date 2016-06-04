setwd("D:/AppliedStatistics/Cousera/4_EXDATA/Project1")

#load power Data to R environment
power <- read.table('power.data')

## Open png device; create 'plot4.png' in current working directory

png(filename='plot4.png')

# subset data
power$dt <-  strptime(paste(power$Date, power$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

# partition the plot area to four quadrants
par(mfrow=c(2,2))

# 1st Plot
plot( power$dt, 
      power$Global_active_power,
      ylab='Global Active Power (kilowatts)', xlab='', type='l')

# 2nd Plot
plot( power$dt, 
      power$Voltage,
      ylab='Voltage', xlab='datetime', type='l')

#3rd Plot
plot( power$dt,
      power$Sub_metering_1, type='l',
      xlab='', 
      ylab='Energy sub metering')
lines(power$dt, power$Sub_metering_2, col='red')
lines(power$dt, power$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid',
       bty='n') 

#Plot 4
plot(power$dt, 
     power$Global_reactive_power,
     ylab='Global_reactive_power', xlab='datetime', type='l')


dev.off()