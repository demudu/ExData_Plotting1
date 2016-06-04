setwd("D:/AppliedStatistics/Cousera/4_EXDATA/Project1")
setwd("../")

# load data in R environment
myData <- read.csv("household_power_consumption.txt",
                  header=TRUE,
                  sep=';', 
                  na.strings='?',
                  colClasses=c(rep('character', 2), rep('numeric', 7))
)
# subset data with dates 2007-02-01 and 2007-02-02

myData <- myData[grep('^[12]/2/2007', myData$Date), ]

# set working directory to Project1 sub dir
setwd("D:/AppliedStatistics/Cousera/4_EXDATA/Project1")

# write subsetted data to power.data
write.table(myData, "power.data")


