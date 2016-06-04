setwd("D:/AppliedStatistics/Cousera/4_EXDATA/Project1")

#load power Data to R environment

power <- read.table('power.data')
## Open png device; create 'plot2.png' in current working directory

png(filename='plot3.png')

power$dt <-  strptime(paste(power$Date, power$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

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

dev.off()
