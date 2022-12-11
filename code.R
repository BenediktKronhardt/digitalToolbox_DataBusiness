#Introduction R-code:

library(tidyverse)
library(dplyr)
library(stringr)
library(ggplot2)
library(maps)
library(janitor)
library(modelsummary)
library(car)
library(carData)
library(gpairs)
library(GGally)

costOfLiving <- read_delim("02-data/cost-of-living-2017.csv", 
                           delim = "\t", escape_double = FALSE, 
                           trim_ws = TRUE)
costOfLiving <- janitor::clean_names(costOfLiving)

continents <- read_csv("02-data/continents2.csv")
continents <- janitor::clean_names(continents)

continents <- rename(continents, country = name)
costOfLivingAndContinents <- left_join(costOfLiving, select(continents, country, region), by="country")

costOfLivingAndContinents[486, 12] <- "Europe"

dd <- read_delim("02-data/developed_and_developing_countries.csv",
                 delim = ";", escape_double = FALSE,
                 trim_ws = TRUE)
dd <- janitor::clean_names(dd)

dd$category[dd$category == "developed"] <- 1.0
dd$category[dd$category == "developing"] <- 0.0
dd$category <- as.double(dd$category)

dd$country[dd$country == "italy"] <- "Italy"
dd$country[dd$country == "Hong Kong SAR"] <- "Hong Kong"
dd$country[dd$country == "Taiwan Province of China"] <- "Taiwan"
dd$country[dd$country == "Russian Federation"] <- "Russia"
dd$country[dd$country == "Viet Nam"] <- "Vietnam"
dd$country[dd$country == "Bosnia and Herzegovina"] <- "Bosnia And Herzegovina"
dd$country[dd$country == "Kosovo"] <- "Kosovo (Disputed Territory)"
colnames(dd)[2] <- "development"

dataFinished <- left_join(costOfLivingAndContinents,dd, by="country")

#02 Methods R-code:

countCountries <- dataFinished[,3:3] %>% group_by(country)
countCountries <- countCountries[!duplicated(countCountries),] 
countCountries <- countCountries[order(countCountries$country),]

MapData <- dataFinished
#selecting attributes (country, development)
MapData <- MapData %>% select(3,13)
colnames(MapData)[1] <- "region"
MapData <- distinct(MapData)
#merge data
world <- map_data("world")
MapData$region[MapData$region == "United States"] <- "USA"
MapData$region[MapData$region == "United Kingdom"] <- "UK"
MapData <- left_join(MapData, world, by="region")

plain <- theme(
  axis.text = element_blank(),
  axis.line = element_blank(),
  axis.ticks = element_blank(),
  panel.border = element_blank(),
  panel.grid = element_blank(),
  axis.title = element_blank(),
  panel.background = element_rect(fill = "white"),
  plot.title = element_text(hjust = 0.5)
)
worldDD <- ggplot(data = MapData, mapping = aes(x = long, y = lat, group = group)) +
  borders("world", fill="grey90",colour="grey") + 
  coord_fixed(1.3) +
  geom_polygon(aes(fill = development)) +
  scale_fill_distiller(palette ="RdBu", direction = 1) +
  guides(fill = FALSE) +
  plain

worldDD

dataBoxplot <- dataFinished %>%
  mutate(across(where(is.factor), as.numeric))

col = c('cost_of_living_plus_rent_index','cli','rent_index','groceries_index','restaurant_price_index','local_purchasing_power_index')
boxplot(dataBoxplot[,c('cost_of_living_plus_rent_index','cli','rent_index','groceries_index','restaurant_price_index','local_purchasing_power_index')])


boxplot(dataFinished[,
                     c('cost_of_living_plus_rent_index','cli','rent_index'
                       ,'groceries_index','restaurant_price_index'
                       ,'local_purchasing_power_index')],
        names = c("First","Second","Third"))


# reproducible example data (borrowed from KevinBlighe's answer)
x <- dataBoxplot
# colnames(x) <- paste0('cost_of_living_plus_rent_index','cli','rent_index','groceries_index','restaurant_price_index','local_purchasing_power_index'))
df1 <-data.frame(x)

# convert wide to long
plotDat <- gather(df1, "x", "y")

# then plot, and rotate labels 90 degrees.
ggplot(plotDat, aes(x, y)) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5))


ggplot(data = dataBoxplot, aes(x)) +
  geom_boxplot()+
  ggtitle("Boxplot")+
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))

ggplot(data = dataFinished, aes(x = region)) +
  geom_bar() +
  ggtitle("Region - Count data") +
  xlab("Regions") +
  ylab("Number of Data") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))


#Summary of the numerical variables in the dataset: (von appendix)
datasummary_skim(dataFinished, allign="center")


dataBoxplot <- dataFinished %>%
  mutate(across(where(is.factor), as.numeric))

col = c("Cli Plus Rent" = "cost_of_living_plus_rent_index",
        "Cli" = "cli",
        "Rent" = "rent_index",
        "Groceries" = "groceries_index",
        "Restaurant Price" = "restaurant_price_index",
        "Local Purchasing Power" = "local_purchasing_power_index")
        
boxplot(dataBoxplot[,c("Cli Plus Rent" = "cost_of_living_plus_rent_index",
                       "Cli" = "cli",
                       "Rent" = "rent_index",
                       "Groceries" = "groceries_index",
                       "Restaurant Price" = "restaurant_price_index",
                       "Local Purchasing Power" = "local_purchasing_power_index")],
          names = c("Cli Plus Rent", "Cli", "Rent", "Groceries", "Restaurant Price", "Purchasing Power"))

boxplot(dataBoxplot[,col("Cli Plus Rent" = "cost_of_living_plus_rent_index",
                       "Cli" = "cli",
                       "Rent" = "rent_index",
                       "Groceries" = "groceries_index",
                       "Restaurant Price" = "restaurant_price_index",
                       "Local Purchasing Power" = "local_purchasing_power_index")])

CliPlusRent = dataBoxplot$cost_of_living_plus_rent_index

boxplot(CliPlusRent)
#c('cost_of_living_plus_rent_index','cli','rent_index','groceries_index','restaurant_price_index','local_purchasing_power_index')



dataBoxplot <- dataFinished %>%
  mutate(across(where(is.factor), as.numeric))

boxplot(dataBoxplot[,c('cli','rent_index','groceries_index','restaurant_price_index','local_purchasing_power_index')],names = c("Cli", "Rent", "Groceries", "Restaurant Price", "Purchasing Power"))

