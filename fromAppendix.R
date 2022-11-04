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

head(dataset)

dataset <- janitor::clean_names(dataset)

#Summary of the numerical variables in the dataset:
datasummary_skim(dataset, output = 'kableExtra', booktabs = TRUE,
                 title = "Overview of the numerical variables in data set") %>%
  kable_styling(latex_options = c("striped", "HOLD_position"))

#Correlations of numerical variables in dataset:
datasummary_correlation(dataset, output = 'kableExtra',
                        booktabs = TRUE, 
                        title = "Correlations of numerical variables in data set")


datasummary_crosstab(groceries_index ~ country,
                     data = dataset, booktabs = TRUE,
                     title = "Cross tabulations for year and type of drive") %>%
  kable_styling(latex_options = c("striped", "HOLD_position"))
