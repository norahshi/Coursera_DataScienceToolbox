NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

bmore.emissions <- NEI[(NEI$fips=="24510") & (NEI$type=="ON-ROAD"),]
bmore.emissions.aggr <- aggregate(Emissions ~ year, data=bmore.emissions, FUN=sum)

la.emissions <- NEI[(NEI$fips=="06037") & (NEI$type=="ON-ROAD"),]
la.emissions.aggr <- aggregate(Emissions ~ year, data=la.emissions, FUN=sum)

bmore.emissions.aggr$County <- "Baltimore"
la.emissions.aggr$County <- "Los Angeles"
both.emissions <- rbind(bmore.emissions.aggr, la.emissions.aggr)


png(filename = "plot6.png", width = 480, height = 480, units = "px")

library(ggplot2)


ggplot(both.emissions, aes(x=factor(year), y=Emissions, fill=County)) +
  geom_bar(stat="identity") + 
  facet_grid(County  ~ ., scales="free") +
  ylab("total emissions") + 
  xlab("year") +
  ggtitle(expression("Motor vehicle emission\nin Baltimore and Los Angeles"))

dev.off()
