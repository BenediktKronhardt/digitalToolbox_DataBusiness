library(tidyverse) # This includes readr!
library(xtable) # For displaying LaTeX tables
library(modelsummary) # For displaying regression models in tables
library(stargazer) # For displaying regression models in tables
library(jtools) # For displaying regression models in tables
library(kableExtra) # For displaying or changing tables
library(gt) # For displaying tables
library(gtsummary) # For model reporting inline and in tables
library(broom) # For working with statistical models
library(car) # For type-III anova tests
library(report) # For automated text-based model reporting
library(effects) # For working with statistical models / visualize effects
library(ggeffects) # For working with statistical models / visualize effects
library(patchwork) # For putting different visualizations in one figure
library(janitor)

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

#Summary of the numerical variables in the dataset: (von appendix)
datasummary_skim(dataset, output = 'kableExtra', booktabs = TRUE,
                 title = "Overview of the numerical variables in data set df1") %>%
  kable_styling(latex_options = c("striped", "HOLD_position"))

#Output nach Regionen und Anzahl an Datensätzen anzeigen
ggplot(data = manipulated_data, aes(x = region)) +
  geom_bar() +
  ggtitle("Region - Count data") +
  xlab("Regions") +
  ylab("Number of Data") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))


# 'Ordered scatterplots' for all variables:
dataset %>%
  mutate(across(where(is.character), as.factor)) %>%
  mutate(across(where(is.factor), as.numeric)) %>%
  # select() %>% # De-select variables here if necessary
  pivot_longer(cols = where(is.numeric), # Same as everything() in this case!
               names_to = "variable", values_to = "num") %>%
  group_by(variable) %>%
  arrange(num) %>%
  mutate(observation = 1:n()) %>%
  ungroup() %>%
  ggplot(aes(x = num, y = observation)) + theme_bw() +
  geom_point(shape = 1, alpha = 0.5) +
  facet_wrap(~ variable, scales = "free_x") +
  ylab("") + xlab("")


# Histogram of the numerical variables:
dataset %>%
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


#Country gruppieren
#Kontinente:
#Nordamerika, Südamerika, Europa, Afrika, Asien, Australien (auch: Australien-Ozeanien), Antarktika (auch: Antarktis)
#northamerica <- 
 # southamerica <-
  #europe <-
#  asia <-
 # afrika <-
  #australia <-
#  antarctica <- 
  
  
  
  ggplot(dataset, aes(x = country, y = cost_of_living_plus_rent_index)) +
  geom_boxplot() + coord_flip() 
  

  
  ggplot(dataset, aes(x = country)) +
  geom_bar()
  