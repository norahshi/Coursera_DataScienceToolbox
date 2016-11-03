NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

bmore.emissions <- NEI[NEI$fips=="24510",]

# Group data by year and type of the source
bmore.emissions.aggr <- aggregate(Emissions ~ year + type,
                                  data=bmore.emissions,
                                  FUN=sum)

library(ggplot2)
png(filename = "plot3.png", width = 480, height = 480, units = "px")
ggplot(bmore.emissions.aggr, aes(x=factor(year), y=Emissions, fill=type)) +
  geom_bar(stat="identity") +
  facet_grid(. ~ type) +
  xlab("year") +
  ylab(expression("total PM2.5 emission")) +
  ggtitle(expression("PM"[2.5]*paste(" emissions in Baltimore ",
                                     "City by various source types", sep="")))
dev.off()