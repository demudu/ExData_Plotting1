setwd("D:/AppliedStatistics/Cousera/4_EXDATA/Project1")

#load power Data to R environment
power <- read.table('power.data')


## Open png device; create 'plot1.png' in current working directory
png(filename='plot1.png')

# plot histogram
hist(power$Global_active_power, 
     main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', 
     col='red')

dev.off()
