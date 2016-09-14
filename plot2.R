#set working directory
setwd("//admin-fs1/Users/rwaiters/My Documents/R/RProgamming/EAD/Week4ExpData")

#read in data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
#Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

balti <-subset(NEI, fips =="24510")

q2 <-aggregate(Emissions ~ year, balti, FUN = sum)


png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE)

plot(q2$year, q2$Emissions,  xlab = "Years", ylab = "Emissions", height = q2$Emissions, main = "Total Emissions by Year - Baltimore")

dev.off()