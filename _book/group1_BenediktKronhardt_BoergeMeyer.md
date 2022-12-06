--- 
title: |
  Digital Tool Box Data Business -- Project Report
subtitle: | 
  Project work as part of the Bachelor of Science (B.Sc.) in Business Informatics
author: 
  - Benedikt Kronhardt (5089)
  - Börge Meyer (5076)
# If you don't need the abstract, just comment it out here completely. If you want to 
# use it, just overwrite it:
# abstract: |
#  The present specialized bookdown project template you are using now is intended as the basis for a report or thesis at the Hamburg School of Business Administration (HSBA). Compared to the original project template coming with the bookdown package, it generates PDF output only, using a slightly customized LaTeX template based on the original Pandoc-template, which is adapted to the requirements of the HSBA for theses and reports. The main notable differences are an appropriate title page, an automatic word count function, a list of acronyms, an adapted page numbering, the use of the appropriate Chicago Manual of Style citation style (17th edition, CSL-based) and an additional chapter with a basic declaration of honor at the end. In addition, several additional folders are used to demonstrate a basic project structure, as well as a slightly modified file organization to show the use of other R packages in addition to the bookdown basics. The contents of the original bookdown template can be found in the following chapters, the additional code examples in the appendix. For more information about this template, please refer to the file 'README.md'.
# Here you can use standard LaTeX-classes, i.e., article, book, report or letter, or you 
# can choose from the KOMA-script-classes, i.e., scrartcl, scrbook, scrreprt or scrlttr2:
documentclass: scrbook
# Add other options for the documentclass, but NOT fontsize or papersize, which are
# already listed below as extra options. Suitable options can be one of "oneside" / "twoside"
# or one of "openleft" / "openright" / "openany":
classoption: 
  - twoside
# Main language of the report: "en" / "de". The naming scheme of chapters or the 
# abstract should change correctly to the designated language, e.g., "Kapitel", 
# "Zusammenfassung" etc. The only headings that needs manual adjustment, are the 
# the name of the references section in file "07-references.Rmd" (e.g., 
# "Literaturverzeichnis") and the variable "acronyms" (e.g.,"Abkürzungsverzeichnis") 
# below. The reference heading only changes automatically if biblatex is used as
# the citation engine, not the default CSL-engine (see README.md).
lang: "en"
# Either comment out this option or use "singlespacing", "onehalfspacing" or "doublespacing".
# This option only works well for fontsizes 10pt, 11pt or 12pt.
linespacing: "doublespacing"
# Change the overall fontsize of the document if necessary (10pt, 11pt or 12pt):
fontsize: 11pt
# For the fontfamily, use either "mathptmx" for a serif font, "cmbright" for sans serif, 
# or comment it out for the LaTeX-default:
fontfamily: cmbright
# Here, only the font for code blocks (i.e., a chunk with option 'echo=TRUE') is set:
monofont: "Source Code Pro"
monofontoptions: "Scale=0.9"
# You can change this to the wanted format, e.g., "A4", "letter", or "A5":
papersize: "A4"
# What should be the margin of the page? Either a single value like "margin=1in" or 
# repeat for multiple options:
# geometry: margin=1in
geometry:
  - top=30mm
  - bottom=30mm
  - left=25mm
  - right=25mm
# Should a titlepage be included in the document?
titlepage: true
# Textcolour of title and subtitle etc. (as a hex-color, i.e., "000000" = black,
# "002668" = blue from the HSBA logo):
titlepage-text-color: |
  000000
# Open this file and add information as needed:
title-page-infos: "./00-template/title-page-infos.tex"
# Value in cm to be added as space above the logo:
titlepage-top-space: 5
# Relative path to the chosen logo:
titlepage-logo: "./01-images/HSBA-Logo-quadratic-version-1.jpg"
# logo-width between 0 and 1 (the ratio of available textwidth on the titlepage):
logo-width: 0.6
# How much cm between logo and title on the titlepage?
logo-space-after: 1.5
# Should the table of contents be on its own page?
toc-own-page: true
# How many header levels should be printed in the table of contents?
toc-depth: 3
# Should a list of figures be included in the document?
lof: true
# Page break after the list of figures? Has no effect if documentclass is "book" and book is set to true:
lof-own-page: false
# Should a list of tables be included in the document?
lot: false
# Page break after the list of tables? Has no effect if documentclass is "book" and book is set to true:
lot-own-page: true
# Should the automatic word count be added to the titlepage information?
add-wordcount: true
site: bookdown::bookdown_site
graphics: true
# Here, linestrech is only used to make the custom "single-spacing" code-chunk option
# work, so that you can use "linestrech=1" in a code-chunk to save space (which is also
# set as thze default). See code-chunk "enable-single-line-spacing-code-chunks" below.
# If you want to change the line spacing for the text itself, use option "linespacing" above!
linestretch: "1.5" 
# List every bib-file in here where you want to manage your citations. 
# These files must be present in the current working directory.
# The packages.bib file is automatically generate in the code chunk named
# "generate-packages-bib" below.
bibliography: [book.bib, packages.bib]
# If you want some extra space between the different bib entries, specify it here,
# otherwise comment this option out so that the CSL-style will take care of the
# spacing:
csl-bib-entries-extra-vertical-space: 5pt
description: |
  This is a minimal example of using the bookdown package to write a book.
  The HTML output format for this example is bookdown::gitbook,
  set in the _output.yml file.
link-citations: yes
# For a page break after the list of references in case of documentclass "article"
# look into "06-references.Rmd" and the command pagebreak.
#
# List here every citation that is not directly included 
# in the text but should be listed in the references:
no-cite: |
  @R-base, @R-rmarkdown
# Here, one can define the name of the list of acronyms used in the frontmatter. 
# If this variable is used, then you can define the needed acronyms in the file 
# 'abbreviations.tex'. A short description of how to do this is included in the 
# comment in this file, and a short example of the use of acronyms in the text is
# included in the appendix.
# Important: If you change the language of the document (see variable "lang" above),
# you must also change the variable "acronyms" to the appropriate value, e.g.,
# "Abkürzungsverzeichnis".
# If you don't want to use acronyms, comment this variable out.
# acronyms: "Acronyms"
---











<!--chapter:end:index.Rmd-->


# Introduction
The standard of living became more and more important for the world population. But every standard of living comes at a price. How high the standard of living is in a country can be analyzed and compared between countries with the help of the cost of living index.

## Task description
Our task was to analyze a data set and write a report about it using R, RStudio, RMarkdown and the procedures of literate programming to put together a PDF-manuscript.
In our team we have received the "cost of living" data set and analyzed it with the research question "Does the classification of a country as a developing or industrialized country have a significant impact on the cost of living index?"

## Structure
Our document is divided into five chapters. This chapter is the introduction, where we describe the task and how we imported our dataset, respectively added other datasets. 
In the chapter "Theoretical Background" the theoretical background of the dataset and the data collection is briefly discussed, before in the methods section the dataset is statistically described, including information on the variables’ distribution, missing values,
categories and the relationships between the variables.
The results section comprise all necessary calculations, which are then discussed in connection with the research question in the following section ("Discussion").

## Setup
After the required libraries, which will be worked with in the following, were installed, the libraries still had to be imported in order to be able to use them.

\linespread{1}

```r
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
```



\linespread{1}

Subsequently, the data had to be read in. This could be initialized with the following command, after the data set was added as a csv file in the folder "02-data".
To be able to work better with the names of the columns and the dataset in general, the command "janitor::clean_names" was executed.  With this, for example, the spaces were removed and the names were all written in small letters.

\linespread{1}

```r
costOfLiving <- read_delim("02-data/cost-of-living-2017.csv", 
                      delim = "\t", escape_double = FALSE, 
                      trim_ws = TRUE)
costOfLiving <- janitor::clean_names(costOfLiving)
```



\linespread{1}

To make it easier to split the data by region, we imported a csv file that shows the names of the countries in this world and their corresponding regions.

First we had to import the dataset, which we named "continents". This dataset is from the website "kaggle", named "Country Mapping - ISO, Continent, Region". ^[@continents2]

\linespread{1}

```r
#import list of continents and countries
continents <- read_csv("02-data/continents2.csv")
continents <- janitor::clean_names(continents)
```



\linespread{1}

To be able to do a join with the raw data, we had to rename the column "name" to "country". After that, a left join could be performed on the renamed column. Since we only needed the column "region", a select for this one column was performed within the join.

\linespread{1}

```r
#rename attribute 'name' in 'country' to perform a left join.
continents <- rename(continents, country = name)
costOfLivingAndContinents <- left_join(costOfLiving, select(continents, country, region), by="country")
```



\linespread{1}

Now it was possible to check if a country was not assigned to a region. 
Since the country Kosovo could not be assigned to a region, this had to be done manually.

\linespread{1}

```r
costOfLivingAndContinents[486, 12] <- "Europe"
```



\linespread{1}

To assign the different countries in our dataset to either a developing or an industrialized country, we also imported a new csv file, which we named "dd". 
We created this file ourselves, based on data from @ddcountries.

\linespread{1}

```r
#import list of Countries and development status
dd <- read_delim("02-data/developed_and_developing_countries.csv",
                 delim = ";", escape_double = FALSE,
                 trim_ws = TRUE)
dd <- janitor::clean_names(dd)
```



\linespread{1}

To format the category as a double value, we executed the following commands.

\linespread{1}

```r
dd$category[dd$category == "developed"] <- 1.0
dd$category[dd$category == "developing"] <- 0.0
dd$category <- as.double(dd$category)
```



\linespread{1}

Once this was done, we scanned the dataset for various capitalization errors and corrected them. Also we have renamed the column category to development.

\linespread{1}

```r
dd$country[dd$country == "italy"] <- "Italy"
dd$country[dd$country == "Hong Kong SAR"] <- "Hong Kong"
dd$country[dd$country == "Taiwan Province of China"] <- "Taiwan"
dd$country[dd$country == "Russian Federation"] <- "Russia"
dd$country[dd$country == "Viet Nam"] <- "Vietnam"
dd$country[dd$country == "Bosnia and Herzegovina"] <- "Bosnia And Herzegovina"
dd$country[dd$country == "Kosovo"] <- "Kosovo (Disputed Territory)"
colnames(dd)[2] <- "development"
```



\linespread{1}

In the end, we were able to perform a left join and thus add the categorization of development countries to our dataset.

\linespread{1}

```r
dataFinished <- left_join(costOfLivingAndContinents,dd, by="country")
```



\linespread{1}

<!--chapter:end:00-introduction.Rmd-->


# Theoretical background

## Cost of Living Index

Because of different prices, living standards, currencies and other factors, it is not possible to compare the cost of living in different countries properly. 

To be able to compare the cost of living between different countries, the Cost of Living Index is used - also abbreviated as CLI in the following. The cost of living is the financial resources needed to cover, in a given place and in a given period of time, the basic expenses for a given standard of living, such as a shelter, food, medicines and others. The CLI enables the comparison of expenditures between different places in the world and at different times in history.^[@caroline]

In economics, the cost-of-living index describes the ratio of the minimum expenditure required to achieve a given indifference curve between two prices. The calculation not only requires two different price groups, but is also dependent on a preference order of the required living goods and on a basic indifference curve describing the utility of two products. 
Among the two prices needed, e.g., from two different places, one is called the comparison price and the other is called the reference price or the base price. The base price is then used to illustrate on which prices the Cost-Of-Living Index is based and calculated. The calculated index is then dependent on the comparison prices determined. Further, the general logic of the cost-of-living index is best understood when the index is interpreted in the multiple context of temporal and spatial comparisons.^[@Pollak1989]

## Industrialized, emerging and developing countries

In general, countries are divided into industrialized, emerging and developing countries. States in which the economic performance is supported by a large part of the resident companies are referred to as industrialized countries. Such countries stand out due to their high per capita income, which results from the available standard of education, high productivity in production, good external trade relations and usually a currency with low inflation.^[@bpd]


A country that is in the process of becoming an industrialized country is called an emerging country. These are nevertheless referred to the category of developing countries. Emerging countries are identifiable by their above-average economic growth. Nevertheless, emerging countries are similar to developing countries in the social structure, such as in the level of education, mortality and access to infrastructure.^[@bmz]

The third category is developing countries, which are associated with poor food supply, high poverty, poor health care and educational opportunities. In association with the characteristics, such countries have an overall low standard of living and a preponderance of labor in agriculture and external economic difficulties.^[@bmzentwicklung]

To analyze the available data, developing countries were combined with emerging economies and contrasted with developed countries.

<!--chapter:end:01-theoretical-background.Rmd-->

---
output:
  pdf_document: default
  html_document: default
---

# Methods

## Data Description



The provided data consists of $511$ different datasets from $110$ different states. The data was set up into City, State, Country, Cost of Living Plus Rent Index, CLI, Rent Index, Groceries Index, Restaurant Index, Local Purchasing Power Index, Leverage Model 1 and Leverage Model 2 attributes.

In Figure \@ref(fig:continentCountdata) can be seen how many datasets are available per region.

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/continentCountdata-1} 

}

\caption{Count of Data from different regions}(\#fig:continentCountdata)
\end{figure}

In addition to the overview of datasets by region in figure \@ref(fig:continentCountdata), a world map in figure \@ref(fig:worldMap) has been created to illustrate the countries from which the datasets originate. The data sets from the industrialized countries were marked in blue and those from the emerging and developing countries in red.

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/worldMap-1} 

}

\caption{Industrialized and developing countries}(\#fig:worldMap)
\end{figure}

## Exploratory Data Analysis

First of all, we had to check, if there are missing values inside of the data-set. Therefore we used the following code to proof this:


\linespread{1}

```r
summary(is.na(dataFinished))
```



\linespread{1}

```
#>     city           state          country       
#>  Mode :logical   Mode :logical   Mode :logical  
#>  FALSE:511       FALSE:128       FALSE:511      
#>                  TRUE :383                      
#>  cost_of_living_plus_rent_index    cli         
#>  Mode :logical                  Mode :logical  
#>  FALSE:511                      FALSE:511      
#>                                                
#>  rent_index      groceries_index restaurant_price_index
#>  Mode :logical   Mode :logical   Mode :logical         
#>  FALSE:511       FALSE:511       FALSE:511             
#>                                                        
#>  local_purchasing_power_index leverage_model_1
#>  Mode :logical                Mode :logical   
#>  FALSE:511                    FALSE:511       
#>                                               
#>  leverage_model_2   region        development    
#>  Mode :logical    Mode :logical   Mode :logical  
#>  FALSE:511        FALSE:511       FALSE:511      
#> 
```


As it can be seen, there were $383$ missing values inside the column "state". 
However, since the column has no bearing on our research question, we decided to disregard this column. With the city column we have a more meaningful basis to answer our question.
To disregard this column, we cut it off. To do this, we used to following R code chunk. Because it is the second column, we can just delete this column.


\linespread{1}

```r
dataFinished <- dataFinished[-2]
```



\linespread{1}


We also truncated the leverage_model_1 and leverage_model_2 columns, since we did not work with these columns any further.


\linespread{1}

```r
dataFinished <- dataFinished[-9]
dataFinished <- dataFinished[-9]
```



\linespread{1}


To determine if outliers exist within the data set, we chose to draw a boxplot.


\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/boxplot-1} 

}

\caption{Boxplot of Data to identify outliers}(\#fig:boxplot)
\end{figure}

As can be seen from the figure \@ref(fig:boxplot), there are several outliers within the data set. In order not to distort the result, we decided to keep these outliers and to continue working with them.

<!--chapter:end:02-methods.Rmd-->


# Results {#results}
To determine whether there is a significant difference between developing and developed countries, we decided to run a multiple linear regression. This is to determine whether the classification into a developing country has a significant influence on the cost of living index or not.

## Multiple linear regression
Within multiple linear regression, our dependent variable (y) is the cost of living index. Our independent variables (x) are the rent index, the groceries index, the restaurant price index, the local purchasing power index and the development status.

In order to perform a multiple linear regression, some conditions have to be fulfilled, which we will check in the following.

First, there must be a linear relationship between the x variables and the y variable. Also, the y variable must be metrically scaled, which is given.

Third, the residuals should be approximately normally distributed. We proved this graphically with the help of a histogram.

First, we need to set up our model.

\linespread{1}

```r
model <- lm(cli ~ rent_index + groceries_index + restaurant_price_index 
            + local_purchasing_power_index + development, data = dataFinished)
```



\linespread{1}

After that, we can create a histogram from our model.

\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/histogramModel-1} 

}

\caption{Histogram of the multiple linear regression model}(\#fig:histogramModel)
\end{figure}

From the histogram we can see that the distribution can be considered normally distributed, therefore this condition is also fulfilled.
Scaling is also given, since the cost of living index is on a scale.

The last condition we checked is that there must be no multicollinearity within the independent variables.
To check this, we created a correlation matrix. First, we generated a subset from the data in which the variables to be tested are stored. Then we created the correlation matrix from this subset and worked with the pearson method.


```
#>                              rent_index groceries_index
#> rent_index                    1.0000000       0.7674361
#> groceries_index               0.7674361       1.0000000
#> restaurant_price_index        0.7523090       0.8518550
#> local_purchasing_power_index  0.6000432       0.6458339
#> development                   0.4730879       0.5998356
#>                              restaurant_price_index
#> rent_index                                0.7523090
#> groceries_index                           0.8518550
#> restaurant_price_index                    1.0000000
#> local_purchasing_power_index              0.6436926
#> development                               0.6838520
#>                              local_purchasing_power_index
#> rent_index                                      0.6000432
#> groceries_index                                 0.6458339
#> restaurant_price_index                          0.6436926
#> local_purchasing_power_index                    1.0000000
#> development                                     0.6425433
#>                              development
#> rent_index                     0.4730879
#> groceries_index                0.5998356
#> restaurant_price_index         0.6838520
#> local_purchasing_power_index   0.6425433
#> development                    1.0000000
```

Since the correlation between restaurant price index and groceries index is
 $0.851855$ > 0.8, this may indicate that there is multicollinearity. To confirm this, we used another method to check for multicollinearity, the method of Variance Inflation Factor values.


```
#>                   rent_index              groceries_index 
#>                     2.821033                     4.346802 
#>       restaurant_price_index local_purchasing_power_index 
#>                     4.863177                     2.187319 
#>                  development 
#>                     2.241055
```

Since according to this method none of the values is >10 we have rejected the theory of multicollinearity.

Now that all the assumptions can be accepted, we come to the actual evaluation of the model.


```
#> 
#> Call:
#> lm(formula = cli ~ rent_index + groceries_index + restaurant_price_index + 
#>     local_purchasing_power_index + development, data = dataFinished)
#> 
#> Residuals:
#>     Min      1Q  Median      3Q     Max 
#> -8.4054 -2.4098 -0.2694  1.8302 12.6586 
#> 
#> Coefficients:
#>                               Estimate Std. Error t value
#> (Intercept)                  10.785427   0.468691  23.012
#> rent_index                    0.028668   0.013976   2.051
#> groceries_index               0.479207   0.012561  38.152
#> restaurant_price_index        0.427674   0.012145  35.213
#> local_purchasing_power_index -0.028731   0.006438  -4.463
#> development                   0.466335   0.461661   1.010
#>                              Pr(>|t|)    
#> (Intercept)                   < 2e-16 ***
#> rent_index                     0.0408 *  
#> groceries_index               < 2e-16 ***
#> restaurant_price_index        < 2e-16 ***
#> local_purchasing_power_index 9.98e-06 ***
#> development                    0.3129    
#> ---
#> Signif. codes:  
#> 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
#> 
#> Residual standard error: 3.317 on 505 degrees of freedom
#> Multiple R-squared:  0.9782,	Adjusted R-squared:  0.978 
#> F-statistic:  4539 on 5 and 505 DF,  p-value: < 2.2e-16
```

The model makes a significant explanatory contribution, as the p-value is well below 0.05, and we can proceed with the interpretation of the further results.

As we can see, according to the p-values, all variables except the classification of development have a significant impact on the cost of living index.

<!--chapter:end:03-results.Rmd-->


# Discussion

## Critical assessment of the data {#critical-assessment}

The objective of this study was to determine to what degree the status as an industrialized or developing country has an influence on the Cost of Living Index.

The critical review allows first of all to scrutinize the available data. Most of the data sets that were used as a basis for this work did not include all existing countries. In addition, it must be mentioned that a large number of African countries in particular are not included in the initial data. This could have biased the results of the work (see figure \@ref(fig:worldMap)).

Furthermore, data were added that resulted in additional analysis possibilities, such as the representation of industrialized and developing countries. Data from the United Nations is considered to be trusted because the United Nations is an official and recognized organization.

Data produced by third parties are classified as less trustworthy, as this can lead to falsification. Since this was based on the regional allocation of the data provided for the different countries, the usage does not have a high weighting in the result.

## Expressiveness of the model used

Furthermore, it must be critically questioned whether the multiple linear regression model used was really suitable to be applied to the research question. A multiple linear regression model was used with all numerical variables within the data set to determine which variables have a significant influence on the cli. Alternatively, the model could have been set up with only the variable developed and one other variable such as the rent index. However, we decided to use all variables in order to obtain the highest possible R². A simple linear regression between the cli and the developed variable was not possible because the linear relationship does not exist. In order to answer the research question more comprehensively, an additional t-test could have been implemented. However, we decided against this, as it would have exceeded the scope of our work.

## Answer to the research question

Within the report, we conclude that the classification of a country as a developing or industrialized country does not have a significant impact on cli (see chapter \@ref(results)). This is true for our data set. However, some countries are missing from our data set, so we cannot make this statement universally (see chapter \@ref(critical-assessment)).

<!--chapter:end:04-discussion.Rmd-->


<!-- For documentclass "article": Remove this pagebreak -->
<!-- command if you don't want the list of references to -->
<!-- start on a new page! -->
<!-- For documentclass "book" it should have no effect! -->
<!-- Change title of this "chapter" according to the language you are using! -->

\pagebreak

<!-- Use the appropriate language for the reference heading: -->
# References {-}
<!-- # Literaturverzeichnis {-} -->

<div id="refs"></div>
<!-- \newpage -->


<!--chapter:end:05-references.Rmd-->


# Declaration of Honor {-}



We hereby declare that 

1. we wrote this project report without the assistance of others;
2. we have marked direct quotes used from the literature and the use of ideas of other authors at the corresponding locations in the thesis;
3. we have not presented this thesis for any other exam. We acknowledge that a false declaration will have legal consequences.

Hamburg, \today

Börge Meyer, Benedikt Kronhardt

\vspace{2.5cm}

We accept that the HSBA may check the originality of our work using a range of manual and computer based techniques, including transferring and storing our submission in a database for the purpose of data-matching to help detect plagiarism.

Hamburg, \today

Börge Meyer, Benedikt Kronhardt

<!--chapter:end:06-declaration.Rmd-->

