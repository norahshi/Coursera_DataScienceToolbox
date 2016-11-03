NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

NEI.24510 <- NEI[which(NEI$fips == "24510"), ]
aggBalt <- with(NEI.24510, aggregate(Emissions, by = list(year),sum))

colnames(aggBalt) <- c("year", "Emissions")
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(aggBalt$year, aggBalt$Emissions, type = "b", 
     pch = 18, col = "green", xlab="Year",ylab="PM2.5 Emissions",main="Total PM2.5 Emissions From Baltimore")

dev.off()