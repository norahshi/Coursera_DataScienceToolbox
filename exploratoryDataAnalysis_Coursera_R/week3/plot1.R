NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


aggTotals <- with(NEI, aggregate(Emissions, by = list(year), sum))
png(filename = "plot1.png", width = 480, height = 480, units = "px")
plot(aggTotals,type="b",xlab="Year",ylab="PM2.5 Emissions",main="Total PM2.5 Emissions From All US Sources")

dev.off()
