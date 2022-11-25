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
#Initial data
#rawData <- read_delim("02-data/cost-of-living-2017.csv", 
 #                     delim = "\t", escape_double = FALSE, 
  #                    trim_ws = TRUE)
#rawData <- janitor::clean_names(rawData)
#rawData
#
#
#
#exploratoryDataAnalysis
#
#
#

#raw
dataset <- read_delim("02-data/cost-of-living-2017.csv", 
                     delim = "\t", escape_double = FALSE, 
                     trim_ws = TRUE)
continents <- read_csv("02-data/continents2.csv")

head(dataset)

dataset <- janitor::clean_names(dataset)

#Die Spalte region bei Dataset hinzufügen; Kosovo muss separat hinzugefügt werden, ist nicht vorhanden bei continents
manipulated_continents <- rename(continents, country=name)

manipulated_data <- left_join(dataset, select(manipulated_continents, country, region), by="country")

#Prüfen, ob eine Region na ist -> Ergebnis: Kosovo ist na
filter(manipulated_data, is.na(region))
#Da Kosovo na ist, die Zelle in "Europe" ändern
manipulated_data[486, 12] <- "Europe"

dd <- read_delim("02-data/developed_and_developing_countries.csv",
                 delim = ";", escape_double = FALSE,
                 trim_ws = TRUE)
dd <- janitor::clean_names(dd)
dd$category[dd$category == "developed"] <- 1.0
dd$category[dd$category == "developing"] <- 0.0
dd$category <- as.double(dd$category)


dd$category[dd$category == "developing"] <- 0.0
dd$country[dd$country == "italy"] <- "Italy"
dd$country[dd$country == "Hong Kong SAR"] <- "Hong Kong"
dd$country[dd$country == "Taiwan Province of China"] <- "Taiwan"
dd$country[dd$country == "Russian Federation"] <- "Russia"
dd$country[dd$country == "Viet Nam"] <- "Vietnam"
dd$country[dd$country == "Bosnia and Herzegovina"] <- "Bosnia And Herzegovina"
dd$country[dd$country == "Kosovo"] <- "Kosovo (Disputed Territory)"


colnames(dd)[2] <- "development"

dataWithCategory <- left_join(manipulated_data,dd, by="country")

sum(is.na(dataWithCategory))
summary(is.na(dataFinished))

#outliers with boxlpot
dataFinished %>%
  mutate(across(where(is.factor), as.numeric))
  
col = c('cost_of_living_plus_rent_index','cli','rent_index','groceries_index','restaurant_price_index','local_purchasing_power_index')
boxplot(dataFinished[,c('cost_of_living_plus_rent_index','cli','rent_index','groceries_index','restaurant_price_index','local_purchasing_power_index')])


#WARUM HATTEN WIR DAS NOCHMAL GEMACHT?
#boxplot mit cli und groceries für homogenity
ggplot(dataFinished, aes(x = cli, y = groceries_index)) + 
  geom_boxplot() +
  facet_grid(~development)

#BRAUCHEN WIR DAS IM BERICHT?
#übersicht der Dichte zwischen allen Variablen
dataFinished %>%     
  select(where(is.numeric)) %>%     
  pivot_longer(everything(), names_to = "variable", values_to = "num") %>%     
  group_by(variable) %>%     
  arrange(num) %>%     
  mutate(observation = 1:n()) %>%     
  ungroup() %>%     
  ggplot(aes(x = num)) + theme_bw() +        
  geom_histogram(bins = 100) +         
  facet_wrap(~ variable, scales = "free") +         
  ylab("") + xlab("")


#BRAUCHEN WIR DAS IM BERICHT?
#normality
#aufspaltung nach industrie und schwellenländer
#conditional histogram
ggplot(dataFinished, aes(x = cost_of_living_plus_rent_index)) +
  geom_density() + 
  facet_grid(~development)





#zero trouble Y -> funzt nicht "zu viele Daten" -> Egal für Bericht
plot(table(dataWithCategory$cost_of_living_plus_rent_index), type = "h", xlab = "", ylab = "")
range(dataWithCategory$cost_of_living_plus_rent_index)

#uninteressant für uns, nur für count Variablen!



#correlation
datasummary_correlation(dataFinished)

#BRAUCHEN WIR DAS IN UNSEREM BERICHT?
#relationship x&y
dataFinished %>%     
  mutate(across(where(is.character), as.factor)) %>%     
  mutate(across(where(is.factor), as.numeric)) %>% # select() %>% # De-select variables here if necessary    
  pivot_longer(-cost_of_living_plus_rent_index, names_to = "variable", values_to = "num") %>%     
  group_by(variable) %>%     
  arrange(num) %>%     
  mutate(observation = 1:n()) %>%     
  ungroup() %>%     
  ggplot(aes(x = num, y = cost_of_living_plus_rent_index)) + theme_bw() +        
  geom_point(shape = 1, alpha = 0.8,                    
             position = "jitter") +         
  geom_smooth(se = FALSE, colour = "blue", method = "loess", formula = 'y ~ x') +
  facet_wrap(~ variable, scales = "free_x") +ylab("Dependent variable") + xlab("")


#BRAUCHEN WIR DAS IN UNSEREM BERICHT?
#collenarity xy -> eins von beiden
dataFinished %>%
  select(where(is.numeric)) %>% as.data.frame() %>%
  gpairs::gpairs(lower.pars = list(scatter = 'stats'),
                 upper.pars = list(conditional ='boxplot',
                                   scatter = 'loess'),
                 scatter.pars = list(pch = 20))

dataFinished %>% select(where(is.numeric)) %>%
  as.data.frame() %>%
  GGally::ggpairs(diag = list(continuous = "barDiag"))

#BRAUCHEN WIR DAS IN UNSEREM BERICHT?
#interactions
dataChanged <- dataFinished
dataChanged$development[dataChanged$development == 1.0] <- "developed"
dataChanged$development[dataChanged$development == 0.0] <- "developing"
coplot(cost_of_living_plus_rent_index ~ groceries_index | region * development ,data = dataChanged,
       ylab = "Groceries",
       xlab = "CLI plus Rent",
       panel = function(x, y, ...) {
         tmp <- lm(y ~ x, na.action = na.omit)
         abline(tmp)
         points(x, y) })

#independece Y -> works nicht mit unserem Datensatz

#multiple linear regression:

#model -> ei
model <- lm(cli ~ rent_index + groceries_index + restaurant_price_index + local_purchasing_power_index + development, data = dataFinished)
summary(model)

#groceries und restaurant price hat einen hohen Einfluss
#groceries index steigt auf 1Punkt, dann würde der CLI um 0,4876 steigen (para zu restaurant)
summary(model)$coefficient
