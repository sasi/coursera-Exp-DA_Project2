#Reading the files from the desktop

NEI <- readRDS("C://users//sasimsb//Desktop//exdata-data-NEI_data//summarySCC_PM25.rds")
SCC <- readRDS("C://users//sasimsb//Desktop//exdata-data-NEI_data//Source_Classification_Code.rds")

subsetNEI  <- NEI[NEI$fips=="24510", ]

aggregatedTotalByYear <- aggregate(Emissions ~ year, subsetNEI, sum)

png('plot2.png')
barplot(height=aggregatedTotalByYear$Emissions, 
        names.arg=aggregatedTotalByYear$year, 
        xlab="years", ylab=expression('total PM'[2.5]*' emission'),
        main=expression('Total PM'[2.5]*' in the Baltimore City, MD emissions at various years'))
