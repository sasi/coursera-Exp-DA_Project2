

NEI <- readRDS("C://users//sasimsb//Desktop//exdata-data-NEI_data//summarySCC_PM25.rds")
SCC <- readRDS("C://users//sasimsb//Desktop//exdata-data-NEI_data//Source_Classification_Code.rds")


aggregatedTotalByYear <- aggregate(Emissions ~ year, NEI, sum)
png('plot1.png')
plot <- barplot(height=aggregatedTotalByYear$Emissions, 
        names.arg=aggregatedTotalByYear$year, 
        xlab="years", 
        ylab=expression('total PM'[2.5]*' emission'),
        main=expression('Total PM'[2.5]*' emissions at various years'))
View(plot)

