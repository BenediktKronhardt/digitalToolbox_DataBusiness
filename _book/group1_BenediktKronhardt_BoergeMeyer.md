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
lot: true
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
acronyms: "Acronyms"
---











<!--chapter:end:index.Rmd-->


# Introduction

kurze Einleitung über die Aufgabenstellung (ggf. die Rollen und Aufgabenverteilung im Team)


<!--chapter:end:00-introduction.Rmd-->


# Theoretical background

2. Theoretical background concluding with the research question

Inhalt/Aufbau:

  1:Description of the topic, the data set is     focused

  2:What information is critical to know for a    reader of the report to understand the          theoretical background of the data set

  3:research question (describe the question and     the part, developing it)
  

Das ist ein Zitat von '@Konus1939'
  

<!--chapter:end:01-theoretical-background.Rmd-->


# Methods

3. Methods, for example:
- Descriptive statistics
- Variable distributions
- Statements about variances and co-variance and missing values
- Chosen analytical procedures to answer the research question


Inhalt/Aufbau:
  1:EDA (Exploratory Data Analysis) auf Datenset    anwenden
    1.1: including information on the variables’ distribution, missing values,
categories / grouping factors (if applicable) and the relationships between the variables, especially
regarding the variable in focus, for example, the dependent variable of a applied statistical method (if
applicable)
  2:Methoden/statistische Modelle aufstellen

<!--chapter:end:02-methods.Rmd-->


# Results

4. Results

Inhalt:

should comprise all necessary calculations, including checking of assumptions (if
applicable)

<!--chapter:end:03-results.Rmd-->


# Discussion

5. Diskussion
Muss noch überarbeitet werden!

Inhalt:
Die vorher dargestellten Results diskutieren in Verbindung mit der Forschungsfrage!

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
\newpage


<!--chapter:end:05-references.Rmd-->


# Declaration of Honor {-}



We hereby declare that 

1. we wrote this project report without the assistance of others;
2. we have marked direct quotes used from the literature and the use of ideas of other authors at the corresponding locations in the thesis;
3. we have not presented this thesis for any other exam. We acknowledge that a false declaration will have legal consequences.

Hamburg, dd.mm.yyyy

aaaaa, bbbbbb

\vspace{2.5cm}

We accept that the HSBA may check the originality of our work using a range of manual and computer based techniques, including transferring and storing our submission in a database for the purpose of data-matching to help detect plagiarism.

Hamburg, dd.mm.yyyy 

aaaaa, bbbbbb

<!--chapter:end:06-declaration.Rmd-->



# Data-set



\linespread{1}

```r
library(tidyverse) # This includes readr!
```



\linespread{1}

```
#> -- Attaching packages --- tidyverse 1.3.2 --
#> v ggplot2 3.3.6      v purrr   0.3.5 
#> v tibble  3.1.8      v dplyr   1.0.10
#> v tidyr   1.2.1      v stringr 1.4.1 
#> v readr   2.1.3      v forcats 0.5.2 
#> -- Conflicts ------ tidyverse_conflicts() --
#> x dplyr::filter() masks stats::filter()
#> x dplyr::lag()    masks stats::lag()
```

\linespread{1}

```r
library(xtable) # For displaying LaTeX tables
library(modelsummary) # For displaying regression models in tables
library(stargazer) # For displaying regression models in tables
```



\linespread{1}

```
#> 
#> Please cite as: 
#> 
#>  Hlavac, Marek (2022). stargazer: Well-Formatted Regression and Summary Statistics Tables.
#>  R package version 5.2.3. https://CRAN.R-project.org/package=stargazer
```

\linespread{1}

```r
library(jtools) # For displaying regression models in tables
library(kableExtra) # For displaying or changing tables
```



\linespread{1}

```
#> 
#> Attache Paket: 'kableExtra'
#> 
#> Das folgende Objekt ist maskiert 'package:dplyr':
#> 
#>     group_rows
```

\linespread{1}

```r
library(gt) # For displaying tables
```



\linespread{1}

```
#> 
#> Attache Paket: 'gt'
#> 
#> Das folgende Objekt ist maskiert 'package:modelsummary':
#> 
#>     escape_latex
```

\linespread{1}

```r
library(gtsummary) # For model reporting inline and in tables
```



\linespread{1}

```
#> #StandWithUkraine
```

\linespread{1}

```r
library(broom) # For working with statistical models
library(car) # For type-III anova tests
```



\linespread{1}

```
#> Lade nötiges Paket: carData
#> 
#> Attache Paket: 'car'
#> 
#> Das folgende Objekt ist maskiert 'package:dplyr':
#> 
#>     recode
#> 
#> Das folgende Objekt ist maskiert 'package:purrr':
#> 
#>     some
```

\linespread{1}

```r
library(report) # For automated text-based model reporting
library(effects) # For working with statistical models / visualize effects
```



\linespread{1}

```
#> lattice theme set by effectsTheme()
#> See ?effectsTheme for details.
```

\linespread{1}

```r
library(ggeffects) # For working with statistical models / visualize effects
library(patchwork) # For putting different visualizations in one figure
library(janitor)
```



\linespread{1}

```
#> 
#> Attache Paket: 'janitor'
#> 
#> Die folgenden Objekte sind maskiert von 'package:stats':
#> 
#>     chisq.test, fisher.test
```

\linespread{1}

```r

dataset <- read_delim("02-data/cost-of-living-2017.csv", 
                      delim = "\t", escape_double = FALSE, 
                      trim_ws = TRUE)
```



\linespread{1}

```
#> Rows: 511 Columns: 11
#> -- Column specification --------------------
#> Delimiter: "\t"
#> chr (3): City, State, Country
#> dbl (8): Cost of Living Plus Rent Index, CLI, Rent Index...
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

\linespread{1}

```r
continents <- read_csv("02-data/continents2.csv")
```



\linespread{1}

```
#> Rows: 249 Columns: 11
#> -- Column specification --------------------
#> Delimiter: ","
#> chr (7): name, alpha-2, alpha-3, iso_3166-2, region, sub...
#> dbl (4): country-code, region-code, sub-region-code, int...
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

\linespread{1}

```r

head(dataset)
```



\linespread{1}

```
#> # A tibble: 6 x 11
#>   City   State Country Cost ~1   CLI Rent ~2 Groce~3 Resta~4
#>   <chr>  <chr> <chr>     <dbl> <dbl>   <dbl>   <dbl>   <dbl>
#> 1 Zurich <NA>  Switze~   109.   150.    66.8    164.    141.
#> 2 Hamil~ <NA>  Bermuda   133.   148.   118.     145.    153.
#> 3 Zug    <NA>  Switze~   106.   143.    67.4    148.    143.
#> 4 Geneva <NA>  Switze~   107.   142.    70.2    147.    139.
#> 5 Basel  <NA>  Switze~    97.5  142.    51.5    150.    132.
#> 6 Bern   <NA>  Switze~    91.1  136.    45.3    146.    122.
#> # ... with 3 more variables:
#> #   `Local Purchasing Power Index` <dbl>,
#> #   `Leverage Model 1` <dbl>, `Leverage Model 2` <dbl>, and
#> #   abbreviated variable names
#> #   1: `Cost of Living Plus Rent Index`, 2: `Rent Index`,
#> #   3: `Groceries Index`, 4: `Restaurant Price Index`
```

\linespread{1}

```r

dataset <- janitor::clean_names(dataset)

#Die Spalte region bei Dataset hinzufügen; Kosovo muss separat hinzugefügt werden, ist nicht vorhanden bei continents
manipulated_continents <- rename(continents, country=name)

manipulated_data <- left_join(dataset, select(manipulated_continents, country, region), by="country")

#Prüfen, ob eine Region na ist -> Ergebnis: Kosovo ist na
filter(manipulated_data, is.na(region))
```



\linespread{1}

```
#> # A tibble: 1 x 12
#>   city   state country cost_~1   cli rent_~2 groce~3 resta~4
#>   <chr>  <chr> <chr>     <dbl> <dbl>   <dbl>   <dbl>   <dbl>
#> 1 Prist~ <NA>  Kosovo~    19.3  29.4     8.9    26.6    22.3
#> # ... with 4 more variables:
#> #   local_purchasing_power_index <dbl>,
#> #   leverage_model_1 <dbl>, leverage_model_2 <dbl>,
#> #   region <chr>, and abbreviated variable names
#> #   1: cost_of_living_plus_rent_index, 2: rent_index,
#> #   3: groceries_index, 4: restaurant_price_index
```

\linespread{1}

```r
#Da Kosovo na ist, die Zelle in "Europe" ändern
manipulated_data[486, 12] <- "Europe"

dd <- read_delim("02-data/developed_and_developing_countries.csv",
                 delim = ";", escape_double = FALSE,
                 trim_ws = TRUE)
```



\linespread{1}

```
#> Rows: 172 Columns: 2
#> -- Column specification --------------------
#> Delimiter: ";"
#> chr (2): country, category
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

\linespread{1}

```r
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

#Prüfen, ob irgendwo ein 'NA' ist
dataToCorrectCity <- filter(dataWithCategory, is.na(city))
dataToCorrectCountry <- filter(dataWithCategory, is.na(country))
dataToCorrectCliPlusRentIndex <- filter(dataWithCategory, is.na(cost_of_living_plus_rent_index))
dataToCorrectCli <- filter(dataWithCategory, is.na(cli))
dataToCorrectRentIndex <- filter(dataWithCategory, is.na(rent_index))
dataToCorrectGroceriesIndex <- filter(dataWithCategory, is.na(groceries_index))
dataToCorrectRestaurantPriceIndex <- filter(dataWithCategory, is.na(restaurant_price_index))
dataToCorrectLocalPurchasingPowerIndex <- filter(dataWithCategory, is.na(local_purchasing_power_index))
dataToCorrectRegion <- filter(dataWithCategory, is.na(region))
dataToCorrectDevelopment <- filter(dataWithCategory, is.na(development))

#source for data-hange: https://www.laenderdaten.info/entwicklungslaender.php



#Output nach Regionen und Anzahl an Datensätzen anzeigen
ggplot(data = manipulated_data, aes(x = region)) +
  geom_bar() +
  ggtitle("Region - Count data") +
  xlab("Regions") +
  ylab("Number of Data") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))
```



\linespread{1}![](group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/unnamed-chunk-13-1.pdf)<!-- --> \linespread{1}

```r

#Als Tabelle mit Werten:
manipulated_data %>% count(region)
```



\linespread{1}

```
#> # A tibble: 5 x 2
#>   region       n
#>   <chr>    <int>
#> 1 Africa      18
#> 2 Americas   195
#> 3 Asia       105
#> 4 Europe     178
#> 5 Oceania     15
```

\linespread{1}

```r


#Split into two datasets with developing countries and industrial countries
developingCountries <- filter(dataWithCategory, development==0)

industrialCountries <- filter(dataWithCategory, development==1)


# t-Test for difference between developing and industrial countries:
test1 <- t.test(cost_of_living_plus_rent_index ~ development, data=dataWithCategory, var.equal=TRUE)
test1_glance <- glance(test1)
test1
```



\linespread{1}

```
#> 
#> 	Two Sample t-test
#> 
#> data:  cost_of_living_plus_rent_index by development
#> t = -17.319, df = 509, p-value < 2.2e-16
#> alternative hypothesis: true difference in means between group 0 and group 1 is not equal to 0
#> 95 percent confidence interval:
#>  -26.99355 -21.49325
#> sample estimates:
#> mean in group 0 mean in group 1 
#>        30.41876        54.66216
```

\linespread{1}

```r
test1_glance
```



\linespread{1}

```
#> # A tibble: 1 x 10
#>   estimate estima~1 estim~2 stati~3  p.value param~4 conf.~5
#>      <dbl>    <dbl>   <dbl>   <dbl>    <dbl>   <dbl>   <dbl>
#> 1    -24.2     30.4    54.7   -17.3 3.61e-53     509   -27.0
#> # ... with 3 more variables: conf.high <dbl>, method <chr>,
#> #   alternative <chr>, and abbreviated variable names
#> #   1: estimate1, 2: estimate2, 3: statistic, 4: parameter,
#> #   5: conf.low
```

\linespread{1}

```r

#TODO: interpret these results
```



\linespread{1}

<!--chapter:end:07-dataSet.Rmd-->

---
output: html_document
editor_options: 
  chunk_output_type: console
---

# (APPENDIX) Appendix {-} 

# Useful code examples

## Use of acronyms

To begin, let's see how the list of acronyms is working. The acronyms are defined in the file `abbreviations.tex`, see an explanation of how to do that in the file itself. Regarding the use of these acronyms inside of the text: In the source code, one writes something as follows, using standard \LaTeX\ commands:

```
First use: \Ac{cran}. Second use: \ac{cran}. First use of another abbreviation: 
\ac{ide}, then the plural use: \acp{ide}. And here you see that \acs{H2O} 
is actually \ac{H2O}.
```

This displays as follows:

> First use: \Ac{cran}. Second use: \ac{cran}. 
> First use of another abbreviation: \ac{ide}, then the plural use: \acp{ide}. 
> And here you see that \acs{H2O} is actually \ac{H2O}.

## Load packages and read data into R {#read-data}

At the beginning of your book, you should put all necessary packages in one chunk, then loading the data in the next chunk so that these steps are properly organized:


\linespread{1}

```r
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
```



\linespread{1}

One of the most common ways to get your data into R is to place them into your project directory as a CSV-file and read them into the current session, that is, the session of the produced book, using [readr](https://cran.r-project.org/web/packages/readr/) (https://cran.r-project.org/web/packages/readr/). 


\linespread{1}

```r
df1 <- read_csv("02-data/mpg_data_as_csv.csv", lazy = FALSE)
```



\linespread{1}

```
#> Rows: 234 Columns: 11
#> -- Column specification --------------------
#> Delimiter: ","
#> chr (6): manufacturer, model, trans, drv, fl, class
#> dbl (5): displ, year, cyl, cty, hwy
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

You can then use the function arguments to change necessary things like the delimiter (also switching to `readr::read_delim()` instead of `readr::read_csv()` to do this), or see the specifics of the column types using `read::spec()` and change them accordingly if needed.


\linespread{1}

```r
spec(df1)
```



\linespread{1}

```
#> cols(
#>   manufacturer = col_character(),
#>   model = col_character(),
#>   displ = col_double(),
#>   year = col_double(),
#>   cyl = col_double(),
#>   trans = col_character(),
#>   drv = col_character(),
#>   cty = col_double(),
#>   hwy = col_double(),
#>   fl = col_character(),
#>   class = col_character()
#> )
```

\linespread{1}

```r

df1 <- read_delim("02-data/mpg_data_as_csv.csv",
                  delim = ",",
                  col_types = cols(
                      manufacturer = col_character(),
                      model = col_character(),
                      displ = col_double(),
                      year = col_double(),
                      cyl = col_double(),
                      trans = col_character(),
                      drv = col_character(),
                      cty = col_double(),
                      hwy = col_double(),
                      fl = col_character(),
                      class = col_character()
                      ), lazy = FALSE
                  )
```



\linespread{1}


## Displaying different types of tables from modelsummary

The data set is part of the [ggplot2](https://cran.r-project.org/web/packages/ggplot2/) package (https://cran.r-project.org/web/packages/ggplot2/) and is originally named `mpg`. To display a summary of the data set in your work, you may use, for example, the modelsummary package with its function `modelsummary::datasummary_skim()`, from which the output can be seen in table \@ref(tab:skim-df1). Don't forget to name the chunk and specify the table caption using the argument `title` in the function call! Without these two adjustments, you cannot cross-reference this table and it does not appear in the list of tables in the frontmatter. Another source of error is the naming of the chunks: Never use underscores in these, only letters and minus signs! And always place a blank line in front and after a code chunk.

\linespread{1}

```r
# You can reference this table now with "\@ref(tab:skim-df1)".
# The part with kable_styling is coming from the kableExtra package and 
# changes the position of the table and its appearance
datasummary_skim(df1, output = 'kableExtra', booktabs = TRUE,
        title = "Overview of the numerical variables in data set df1") %>%
    kable_styling(latex_options = c("striped", "HOLD_position"))
```



\linespread{1}\begin{table}[H]

\caption{(\#tab:skim-df1)Overview of the numerical variables in data set df1}
\centering
\begin{tabular}[t]{lrrrrrrr>{}r}
\toprule
  & Unique (\#) & Missing (\%) & Mean & SD & Min & Median & Max &   \\
\midrule
\cellcolor{gray!6}{displ} & \cellcolor{gray!6}{35} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{\num{3.5}} & \cellcolor{gray!6}{\num{1.3}} & \cellcolor{gray!6}{\num{1.6}} & \cellcolor{gray!6}{\num{3.3}} & \cellcolor{gray!6}{\num{7.0}} & \cellcolor{gray!6}{\includegraphics[width=0.67in, height=0.17in]{C:/Users/kronh/OneDrive/Dokumente/R_Projects/group1_BenediktKronhardt_BoergeMeyer/group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/hist_24586303342b.pdf}}\\
year & 2 & 0 & \num{2003.5} & \num{4.5} & \num{1999.0} & \num{2003.5} & \num{2008.0} & \includegraphics[width=0.67in, height=0.17in]{C:/Users/kronh/OneDrive/Dokumente/R_Projects/group1_BenediktKronhardt_BoergeMeyer/group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/hist_24582343b41.pdf}\\
\cellcolor{gray!6}{cyl} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{\num{5.9}} & \cellcolor{gray!6}{\num{1.6}} & \cellcolor{gray!6}{\num{4.0}} & \cellcolor{gray!6}{\num{6.0}} & \cellcolor{gray!6}{\num{8.0}} & \cellcolor{gray!6}{\includegraphics[width=0.67in, height=0.17in]{C:/Users/kronh/OneDrive/Dokumente/R_Projects/group1_BenediktKronhardt_BoergeMeyer/group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/hist_245835a527fd.pdf}}\\
cty & 21 & 0 & \num{16.9} & \num{4.3} & \num{9.0} & \num{17.0} & \num{35.0} & \includegraphics[width=0.67in, height=0.17in]{C:/Users/kronh/OneDrive/Dokumente/R_Projects/group1_BenediktKronhardt_BoergeMeyer/group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/hist_24582b6b6572.pdf}\\
\cellcolor{gray!6}{hwy} & \cellcolor{gray!6}{27} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{\num{23.4}} & \cellcolor{gray!6}{\num{6.0}} & \cellcolor{gray!6}{\num{12.0}} & \cellcolor{gray!6}{\num{24.0}} & \cellcolor{gray!6}{\num{44.0}} & \cellcolor{gray!6}{\includegraphics[width=0.67in, height=0.17in]{C:/Users/kronh/OneDrive/Dokumente/R_Projects/group1_BenediktKronhardt_BoergeMeyer/group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/hist_245859815f13.pdf}}\\
\bottomrule
\end{tabular}
\end{table}


Another useful table can be produced by using the function `datasummary_correlation()` from the same package. Its output can be seen in table \@ref(tab:corr-df1), which in addition is changed to show how to use footnotes using `kableExtra`. The content of the footnote is also true for table \@ref(tab:skim-df1), so be careful and adjust variable types before doing something with them such as in table \@ref(tab:skim-df1-cat).

\linespread{1}

```r
df1_footnote <- df1
names(df1_footnote)[names(df1_footnote) == "year"] <- 
    paste0(names(df1_footnote)[names(df1_footnote) == "year"], 
           footnote_marker_symbol(1, "latex"))

datasummary_correlation(df1_footnote, output = 'kableExtra',
        booktabs = TRUE, escape = FALSE, # 'escape = FALSE' here is important!
        title = "Correlations of numerical variables in data set df1") %>% 
    kable_styling(latex_options = c("striped", "HOLD_position")) %>% 
    footnote(symbol = paste0("Using the categorical variable",
                             " 'year' here in a correlation is :-("),
             threeparttable = TRUE) # This last options enables the line break!
```



\linespread{1}\begin{table}[H]

\caption{(\#tab:corr-df1)Correlations of numerical variables in data set df1}
\centering
\begin{threeparttable}
\begin{tabular}[t]{lrrrrr}
\toprule
  & displ & year\textsuperscript{*} & cyl & cty & hwy\\
\midrule
\cellcolor{gray!6}{displ} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{.} & \cellcolor{gray!6}{.} & \cellcolor{gray!6}{.} & \cellcolor{gray!6}{.}\\
year\textsuperscript{*} & \num{.15} & 1 & . & . & .\\
\cellcolor{gray!6}{cyl} & \cellcolor{gray!6}{\num{.93}} & \cellcolor{gray!6}{\num{.12}} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{.} & \cellcolor{gray!6}{.}\\
cty & \num{-.80} & \num{-.04} & \num{-.81} & 1 & .\\
\cellcolor{gray!6}{hwy} & \cellcolor{gray!6}{\num{-.77}} & \cellcolor{gray!6}{\num{.002}} & \cellcolor{gray!6}{\num{-.76}} & \cellcolor{gray!6}{\num{.96}} & \cellcolor{gray!6}{1}\\
\bottomrule
\end{tabular}
\begin{tablenotes}
\item[*] Using the categorical variable 'year' here in a correlation is :-(
\end{tablenotes}
\end{threeparttable}
\end{table}


Adjusting all categorical variables to the correct type:

\linespread{1}

```r
df1 <- df1 %>% 
    mutate(manufacturer = factor(manufacturer),
           model = factor(model),
           year = factor(year),
           cyl = ordered(cyl, 
                         levels = c(4,5,6,8),
                         labels = c("4 Cylinders",
                                    "5 Cylinders",
                                    "6 Cylinders",
                                    "8 Cylinders")),
           trans = factor(trans),
           drv = factor(drv, 
                        levels = c("f", "r", "4"),
                        labels = c("Front wheel drive",
                                   "Rear wheel drive",
                                   "4 wheel drive")),
           fl = factor(fl),
           class = factor(class)) 
```



\linespread{1}


Now using another kind of table from the `modelsummary` package:

\linespread{1}

```r
datasummary_crosstab(drv ~ year, 
                     data = df1, booktabs = TRUE,
        title = "Cross tabulations for year and type of drive") %>% 
    kable_styling(latex_options = c("striped", "HOLD_position"))
```



\linespread{1}\begin{table}[H]

\caption{(\#tab:skim-df1-cat)Cross tabulations for year and type of drive}
\centering
\begin{tabular}[t]{llrrr}
\toprule
drv &   & 1999 & 2008 & All\\
\midrule
\cellcolor{gray!6}{Front wheel drive} & \cellcolor{gray!6}{N} & \cellcolor{gray!6}{57} & \cellcolor{gray!6}{49} & \cellcolor{gray!6}{106}\\
 & \% row & \num{53.8} & \num{46.2} & \num{100.0}\\
\cellcolor{gray!6}{Rear wheel drive} & \cellcolor{gray!6}{N} & \cellcolor{gray!6}{11} & \cellcolor{gray!6}{14} & \cellcolor{gray!6}{25}\\
 & \% row & \num{44.0} & \num{56.0} & \num{100.0}\\
\cellcolor{gray!6}{4 wheel drive} & \cellcolor{gray!6}{N} & \cellcolor{gray!6}{49} & \cellcolor{gray!6}{54} & \cellcolor{gray!6}{103}\\
 & \% row & \num{47.6} & \num{52.4} & \num{100.0}\\
\cellcolor{gray!6}{All} & \cellcolor{gray!6}{N} & \cellcolor{gray!6}{117} & \cellcolor{gray!6}{117} & \cellcolor{gray!6}{234}\\
 & \% row & \num{50.0} & \num{50.0} & \num{100.0}\\
\bottomrule
\end{tabular}
\end{table}

See the `datasummary` vignettes for more possibilities: 

> https://vincentarelbundock.github.io/modelsummary/articles/datasummary.html


## Reporting statistical models

### $t$-test

In the following paragraphs, I want to give some examples on how to report a statistical model. Let's start with a simple one, an independent two sample $t$-test:

\begin{equation} 
  t = \frac{m_A - m_B}{\sqrt{ \frac{s^2}{n_A} + \frac{s^2}{n_B} }}
  (\#eq:t-test)
\end{equation} 

where $s^2$ is an estimator of the common variance of the two samples. It can be calculated as 

\begin{equation} 
  s^2 = \frac{\sum{(x-m_A)^2}+\sum{(x-m_B)^2}}{n_A+n_B-2}
  (\#eq:t-test-s)
\end{equation} 

Once the $t$-test statistic value is calculated, one uses the critical value of Student’s $t$-distribution corresponding to the significance level alpha of your choice (5%). The degrees of freedom ($df$) used in this test are $df = n_A + n_B - 2$. We can simulate some data according to equation \@ref(eq:t-test) and apply the function `t.test()` from the `stats` package:

\linespread{1}

```r
N <- 100
delta <- 5
same_sd <- 5
df_ttest <- tibble(class = gl(n = 2, k = N/2, labels = c("Class A", "Class B")),
                   exam_score = c(rnorm(N/2, mean = 50, sd = same_sd),
                                  rnorm(N/2, mean = 50 + delta, sd = same_sd)))
test1 <- t.test(exam_score ~ class, data = df_ttest, var.equal = TRUE)
test1_glance <- glance(test1)
test1
```



\linespread{1}

```
#> 
#> 	Two Sample t-test
#> 
#> data:  exam_score by class
#> t = -6.8601, df = 98, p-value = 6.239e-10
#> alternative hypothesis: true difference in means between group Class A and group Class B is not equal to 0
#> 95 percent confidence interval:
#>  -7.390621 -4.074139
#> sample estimates:
#> mean in group Class A mean in group Class B 
#>              49.71902              55.45140
```

This console output is not very pleasant and should not be reported as this. Better to use the package `broom` and its function `broom::glance()` to extract everything you need using inline code chunks, which gives you a significant difference of $\approx~-5.73$ between class A ($M = 49.72$, $SD = 4.29$) and class B ($M = 55.45$, $SD = 4.06$) in this case, $t(98)~=~-6.86,~p~<~.001$. You should read the source code of this paragraph carefully to see how everything in the inline chunks fits together to produce such an output. 


### $\chi^2$-test

The same procedure can be used to report a $\chi^2$-test using the function `chisq.test()` from the `stats` package. This time, let's use the `mpg` data set imported above in section \@ref(read-data):

\linespread{1}

```r
# Build a contingency table for year and cylinders
tbl_df <- table(df1$year, df1$cyl)
chi_test <- chisq.test(tbl_df)
chi_result <- glance(chi_test)
tbl_df
```



\linespread{1}

```
#>       
#>        4 Cylinders 5 Cylinders 6 Cylinders 8 Cylinders
#>   1999          45           0          45          27
#>   2008          36           4          34          43
```

\linespread{1}

```r
chi_test
```



\linespread{1}

```
#> 
#> 	Pearson's Chi-squared test
#> 
#> data:  tbl_df
#> X-squared = 10.189, df = 3, p-value = 0.01703
```

\linespread{1}

```r
chi_result
```



\linespread{1}

```
#> # A tibble: 1 x 4
#>   statistic p.value parameter method                    
#>       <dbl>   <dbl>     <int> <chr>                     
#> 1      10.2  0.0170         3 Pearson's Chi-squared test
```

In this toy example, we can report that the cell means appear to be significantly different from each other, in other words, that they are not independent, $\chi^2(3)~=~10.189,~p~=~0.017$.

Because it is very tedious to use the `ifelse()` command inside an inline code chunk to print the $p$-value correctly, one can define a function for printing the $p$-value that simplifies the source code a little bit like in the following code chunk. 


\linespread{1}

```r
print_p_value <- function(p.num, DIGITS = 3) {
    if (abs(p.num) < 0.001) {
        number <- '<~.001'
    } else if (abs(p.num) > 0.9) {
        number <- '>~.9'
    } else {
        number <- paste0('=~',
                         stringr::str_replace(round(p.num, dig = DIGITS),
                                              '0\\.', '.'))
    }
    return(as.character(number))
}
```



\linespread{1}

This gives you the possibility to write the test as follows, $\chi^2(3)~=~10.189,~p~=~.017$. Please look at the source code where the $\chi^2$-test is reported for the second time to see the difference to the inline code chunk from before.


### Linear regression models {#reg-models}

In this section, we will again use the data set loaded in section \@ref(read-data), where we formulate different linear regression models using the function `lm()` from the `stats` package to predict the outcome `hwy` (highway miles per gallon). The first one will be a more complicated model including a continuous predictor, `displ` (displacement), two categorical predictors, `year` and `cyl` (number of cylinders), and the interaction between the two categorical independent variables. The second one will be a model with all three predictors but without the interaction, and the third one will also omit the continuous predictor variable. Because there are only some cars with five cylinders, these observations are excluded beforehand to simplify the models. After fitting the three models that are all nested (the second is a simpler versions of the first, the third a simpler version of the second model), all three models are compared using the `anova()` function from the `stat` package, see table \@ref(tab:lm-anova), which is produced using the `broom` package and some `tidyverse` and `kableExtra` magic (again).


\linespread{1}

```r
df1_small <- df1 %>% filter(cyl != "5 Cylinders") %>% 
    mutate(cyl = droplevels(cyl))

m1 <- lm(hwy ~ year + cyl + displ + year:cyl, 
         data = df1_small, 
         contrasts = list(year = "contr.treatment",
                          cyl = "contr.treatment"))
m2 <- update(m1, . ~ . - year:cyl)
m3 <- update(m2, . ~ . - displ)

tidy(anova(m1, m2, m3)) %>% 
    mutate(across(where(is.numeric), ~ as.character(round(.x, digits = 3)))) %>% 
    mutate(across(where(is.character), ~ if_else(is.na(.x), "", .x))) %>% 
    rename("Residual $df$" = `df.residual`,
           "RSS" = rss,
           "$df$" = df,
           "Sum of Squares" = sumsq,
           "Statistic" = statistic,
           "$p$-value" = p.value) %>%
    mutate(Model = c(formula(m1)[[3]], formula(m2)[[3]], formula(m3)[[3]])) %>% 
    select(Model, everything(), -term) %>% 
    kbl(caption = "Analysis of variance table for three linear models",
        booktabs = TRUE, escape = FALSE, align = "lcccrrr",
        centering = TRUE) %>% 
    kable_styling(latex_options = c("striped", "HOLD_position",
                                    "scale_down")) %>% 
    add_footnote(label = paste0("cyl = cylinder; ",
                                "displ = displacement; ",
                                "$df$ = degrees of freedom; ", 
                                "RSS = Residual Sum of Squares"),
                 notation = "none", escape = FALSE) 
```



\linespread{1}\begin{table}[H]

\caption{(\#tab:lm-anova)Analysis of variance table for three linear models}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{lcccrrr}
\toprule
Model & Residual $df$ & RSS & $df$ & Sum of Squares & Statistic & $p$-value\\
\midrule
\cellcolor{gray!6}{year + cyl + displ + year:cyl} & \cellcolor{gray!6}{223} & \cellcolor{gray!6}{3117.436} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{}\\
year + cyl + displ & 225 & 3122.895 & -2 & -5.459 & 0.195 & 0.823\\
\cellcolor{gray!6}{year + cyl} & \cellcolor{gray!6}{226} & \cellcolor{gray!6}{3364.355} & \cellcolor{gray!6}{-1} & \cellcolor{gray!6}{-241.46} & \cellcolor{gray!6}{17.272} & \cellcolor{gray!6}{0}\\
\bottomrule
\multicolumn{7}{l}{\textsuperscript{} cyl = cylinder; displ = displacement; $df$ = degrees of freedom; RSS = Residual Sum of Squares}\\
\end{tabular}}
\end{table}

If you want to know more about the underlying logic behind the statistical part, for example the meaning of analysis of variance in this situation, or what the change of the contrasts here is supposed to do, or what the heck contrasts are to begin with, I can only recommend reading! A good starting point would be the chapter about linear models from the manual *An Introduction into R* [@introR2022], the book *An R Companion to Applied Regression* by @fox2019, or the book *Regression Modeling Strategies* by @harrell2019. There are a lot of books about linear models out there and many of them are dealing with them using R, so it's up to you. If you want to know what the above code does, read it carefully and omit steps to see what element does what!

From the output of table \@ref(tab:lm-anova) we can see that in this toy data set case, the smallest model seems to be significantly better fitting the data than the intermediate model with one more predictor, and that there is no significant difference between the second and the most complicated model including the interaction. That means, model three would be better than the others. 

But, let's use different packages to produce a side by side table for all three models. The first example, see table \@ref(tab:m123-modelsummary), is produced using the `modelsummary` package:

\linespread{1}

```r
modelsummary(
    list("Model 1" = m1, "Model 2" = m2, "Model 3" = m3),
    output = "kableExtra", fmt = 2, booktabs = TRUE,
    escape = FALSE, statistic = NULL, stars = TRUE, 
    estimate = "{estimate} ({std.error}){stars}",
    coef_map = c(
        "(Intercept)" = "Constant",
        "year2008" = "Year = 2008",
        "cyl6 Cylinders" = "6 Cylinders",
        "cyl8 Cylinders" = "8 Cylinders",
        "displ" = "Displacement",
        "year2008:cyl6 Cylinders" = "2008 $\\times$ 6 Cylinders",
        "year2008:cyl8 Cylinders" = "2008 $\\times$ 8 Cylinders"
    ),
    gof_map = tribble(
        ~raw, ~clean, ~fmt,
        "nobs", "\\# Observations", 0,
        "adj.r.squared", "$adj.~R^2$", 2,
        "aic", "$AIC$", 2,
        "rmse", "$RMSE$", 2,
        "F", "$F$", 2
    ), 
    notes = paste0("{\\\\small \\\\textsl{Notes:}~", 
                   "$+~p~\\\\leq~.1$; ", 
                   "$*~p~\\\\leq~.05$; ",
                   "$**~p~\\\\leq~.01$; ",
                   "$***~p~\\\\leq~.001$}"),
    title = "Comparison of three linear models using modelsummary") %>%
    kable_styling(latex_options = c("striped", "HOLD_position")) 
```



\linespread{1}\begin{table}[H]

\caption{(\#tab:m123-modelsummary)Comparison of three linear models using modelsummary}
\centering
\begin{tabular}[t]{lccc}
\toprule
  & Model 1 & Model 2 & Model 3\\
\midrule
\cellcolor{gray!6}{Constant} & \cellcolor{gray!6}{\num{33.11} (\num{1.26})***} & \cellcolor{gray!6}{\num{33.03} (\num{1.22})***} & \cellcolor{gray!6}{\num{28.34} (\num{0.49})***}\\
Year = 2008 & \num{1.21} (\num{0.84}) & \num{1.22} (\num{0.50})* & \num{1.04} (\num{0.52})*\\
\cellcolor{gray!6}{6 Cylinders} & \cellcolor{gray!6}{\num{-3.28} (\num{1.03})**} & \cellcolor{gray!6}{\num{-3.15} (\num{0.90})***} & \cellcolor{gray!6}{\num{-5.97} (\num{0.61})***}\\
8 Cylinders & \num{-4.39} (\num{1.89})* & \num{-4.74} (\num{1.70})** & \num{-11.35} (\num{0.64})***\\
\cellcolor{gray!6}{Displacement} & \cellcolor{gray!6}{\num{-2.26} (\num{0.54})***} & \cellcolor{gray!6}{\num{-2.22} (\num{0.53})***} & \cellcolor{gray!6}{}\\
2008 $\times$ 6 Cylinders & \num{0.39} (\num{1.19}) &  & \\
\cellcolor{gray!6}{2008 $\times$ 8 Cylinders} & \cellcolor{gray!6}{\num{-0.40} (\num{1.25})} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{}\\
\midrule
\# Observations & \num{230} & \num{230} & \num{230}\\
\cellcolor{gray!6}{$adj.~R^2$} & \cellcolor{gray!6}{\num{0.61}} & \cellcolor{gray!6}{\num{0.61}} & \cellcolor{gray!6}{\num{0.58}}\\
$AIC$ & \num{1268.25} & \num{1264.65} & \num{1279.78}\\
\cellcolor{gray!6}{$RMSE$} & \cellcolor{gray!6}{\num{3.68}} & \cellcolor{gray!6}{\num{3.68}} & \cellcolor{gray!6}{\num{3.82}}\\
$F$ & \num{59.95} & \num{90.48} & \num{107.07}\\
\bottomrule
\multicolumn{4}{l}{\rule{0pt}{1em}{\small \textsl{Notes:}~$+~p~\leq~.1$; $*~p~\leq~.05$; $**~p~\leq~.01$; $***~p~\leq~.001$}}\\
\end{tabular}
\end{table}


Another variant would be to use the `stargazer` package, but here one has to apply several small extra steps to make this work in the bookdown environment we are working in. Firstly, you need to set the code chunk option `results = "asis"`, then you must set the label option in the stargazer function to the exact label you want to cross-reference to, including the "tab:" part, e.g., `label = "tab:m123-stargazer"`, and lastly you must specify the argument `header = FALSE` in the `stargazer` function call to suppress the message "Table built by...". Everything else is a question of using the correct options to tweak the output in the direction you want. Stargazer does have sensible defaults and useful settings, but one drawback is that it cannot be adjusted using `kableExtra` at the end. Have a look at the result in table \@ref(tab:m123-stargazer) and compare this to the corresponding source code to see how it works.

\enlargethispage*{1cm}

\linespread{1}

```r
stargazer(m1, m2, m3,
          title = "Comparison of three linear models using stargazer",
          label = "tab:m123-stargazer",
          covariate.labels = c("Constant",
                               "Year = 2008",
                               "6 Cylinders",
                               "8 Cylinders",
                               "Displacement",
                               "2008 $\\times$ 6 Cylinders",
                               "2008 $\\times$ 8 Cylinders"),
          ci = TRUE, ci.level = 0.95, header = FALSE, digits = 2,
          intercept.bottom = FALSE, intercept.top = TRUE, 
          table.placement = "H", font.size = "small")
```



\linespread{1}
\begin{table}[H] \centering 
  \caption{Comparison of three linear models using stargazer} 
  \label{tab:m123-stargazer} 
\small 
\begin{tabular}{@{\extracolsep{5pt}}lccc} 
\\[-1.8ex]\hline 
\hline \\[-1.8ex] 
 & \multicolumn{3}{c}{\textit{Dependent variable:}} \\ 
\cline{2-4} 
\\[-1.8ex] & \multicolumn{3}{c}{hwy} \\ 
\\[-1.8ex] & (1) & (2) & (3)\\ 
\hline \\[-1.8ex] 
 Constant & 33.11$^{***}$ & 33.03$^{***}$ & 28.34$^{***}$ \\ 
  & (30.65, 35.58) & (30.64, 35.42) & (27.39, 29.29) \\ 
  & & & \\ 
 Year = 2008 & 1.21 & 1.22$^{**}$ & 1.04$^{**}$ \\ 
  & ($-$0.43, 2.85) & (0.24, 2.20) & (0.03, 2.05) \\ 
  & & & \\ 
 6 Cylinders & $-$3.28$^{***}$ & $-$3.15$^{***}$ & $-$5.97$^{***}$ \\ 
  & ($-$5.30, $-$1.26) & ($-$4.91, $-$1.40) & ($-$7.16, $-$4.77) \\ 
  & & & \\ 
 8 Cylinders & $-$4.39$^{**}$ & $-$4.74$^{***}$ & $-$11.35$^{***}$ \\ 
  & ($-$8.09, $-$0.68) & ($-$8.07, $-$1.41) & ($-$12.60, $-$10.10) \\ 
  & & & \\ 
 Displacement & $-$2.26$^{***}$ & $-$2.22$^{***}$ &  \\ 
  & ($-$3.31, $-$1.20) & ($-$3.27, $-$1.18) &  \\ 
  & & & \\ 
 2008 $\times$ 6 Cylinders & 0.39 &  &  \\ 
  & ($-$1.95, 2.72) &  &  \\ 
  & & & \\ 
 2008 $\times$ 8 Cylinders & $-$0.40 &  &  \\ 
  & ($-$2.84, 2.04) &  &  \\ 
  & & & \\ 
\hline \\[-1.8ex] 
Observations & 230 & 230 & 230 \\ 
R$^{2}$ & 0.62 & 0.62 & 0.59 \\ 
Adjusted R$^{2}$ & 0.61 & 0.61 & 0.58 \\ 
Residual Std. Error & 3.74 (df = 223) & 3.73 (df = 225) & 3.86 (df = 226) \\ 
F Statistic & 59.95$^{***}$ (df = 6; 223) & 90.48$^{***}$ (df = 4; 225) & 107.07$^{***}$ (df = 3; 226) \\ 
\hline 
\hline \\[-1.8ex] 
\textit{Note:}  & \multicolumn{3}{r}{$^{*}$p$<$0.1; $^{**}$p$<$0.05; $^{***}$p$<$0.01} \\ 
\end{tabular} 
\end{table} 


If you want to produce an inline result from a specific model you can do this as before by hand, or you can use the package `gtsummary`, which gives you the possibility of directly reporting statistical results using inline functions like `tbl_summary()` and `inline_text()`. As an example, the coefficient for six cylinders in model 3 is $-6.0~(0.95\%~CI~-7.2,~-4.8;~p<0.001)$. Have a look in the source code to see how this is accomplished, but be aware that the argument `pattern` within the function call to `inline_text()` must be provided in this case because we want to render a PDF-file and `gtsummary` is currently mainly aiming at HTML-output. The difference between the numbers in the inline output and table \@ref(tab:m123-stargazer) are due to rounding. If you want to look into the given capabilities of `gtsummary` regarding inline reporting, check out this [\textcolor{blue}{presentation}](https://www.danieldsjoberg.com/clinical-reporting-gtsummary-rmed/slides/#/introduction) and the [\textcolor{blue}{package documentation}](https://www.danieldsjoberg.com/gtsummary/).


### Generalized linear regression models

\Acp{glm}, first introduced in this comprehensive manner by @nelder1972 are models in which the outcome does not need to belong to a normal distribution, but where the simple linear model is just a special case. For example, the outcome can belong to a $Poisson$ or a $negative-binomial$ distribution (for count data, i.e., only integer values and no value less than zero), to a $Gamma$ distribution (for only positive decimal values, not only integers), to a $binomial$ distribution (for the number of success in a fixed set of trials), or to a $bernoulli$ distribution, which is a simple case of the $binomial$ distribution, where the outcome can only be either one or zero (i.e., yes/no, true/false). There are a lot of possible ways and also user provided packages which make it feasible to model such outcomes using the most appropriate distribution for the data at hand, but the starting point is mainly the function `glm()` from the stats package. 

This document can not introduce you to the statistical concepts behind \acp{glm} in general, but I want to give one example of logistic regression to demonstrate the general workflow and to give examples of plotting marginal means. For this purpose, I will use the famous titanic data set [@dawson1995], which was further greatly updated and improved by Thomas Cason using the Encyclopedia Titanica to create a new dataset called `titanic3`, which can be obtained [\textcolor{blue}{here}](https://hbiostat.org/data/) and which can also be obtained through the `Hmisc` package [@Hmisc2022].

\enlargethispage*{1cm}

\linespread{1}

```r
titanic <- read_csv("02-data/titanic3.csv",
    col_types = cols(
        pclass = col_double(),
        survived = col_double(),
        name = col_character(),
        sex = col_character(),
        age = col_double(),
        sibsp = col_double(),
        parch = col_double(),
        ticket = col_character(),
        fare = col_double(),
        cabin = col_character(),
        embarked = col_character(),
        boat = col_character(),
        body = col_double(),
        home.dest = col_character()
    ), lazy = FALSE)
titanic$pclass <- factor(titanic$pclass, 
                         levels = c(1,2,3), 
                         labels = c("1st", "2nd", "3rd"))
```



\linespread{1}

The original (non-enhanced) dataset based on data originally collected by the British Board of Trade also comes with the `datasets` package in `R`, but provides only the variables `class`, `sex`, `age`, and `survived` for each person on board of the Titanic. The enhanced version additionally includes variables like `age`, the ticket `fare`, the `cabin` or the place where the person `embarked` and some others. Next to that, the variable `age` is changed from a categorical one (child vs. adult) to the actual numeric age in years. The data set comprises $1309$ observations. 

In the next step, we want to predict if someone survived the Titanic based on the variables `pclass`, `sex` and `age` and the interaction between `sex` and `age`. The dependent variable is `survived`, encoded as $0$ or $1$, which means the model predicts the mean probability of surviving the Titanic.

\linespread{1}

```r
mlog1 <- glm(survived ~ pclass + sex + age + sex:age, 
             data = titanic, family = binomial)
summary(mlog1)
```



\linespread{1}

```
#> 
#> Call:
#> glm(formula = survived ~ pclass + sex + age + sex:age, family = binomial, 
#>     data = titanic)
#> 
#> Deviance Residuals: 
#>     Min       1Q   Median       3Q      Max  
#> -2.3844  -0.6721  -0.4063   0.7041   2.5440  
#> 
#> Coefficients:
#>              Estimate Std. Error z value Pr(>|z|)    
#> (Intercept)  2.790834   0.362823   7.692 1.45e-14 ***
#> pclass2nd   -1.424583   0.241513  -5.899 3.67e-09 ***
#> pclass3rd   -2.388177   0.236380 -10.103  < 2e-16 ***
#> sexmale     -1.029755   0.358593  -2.872  0.00408 ** 
#> age         -0.004084   0.009461  -0.432  0.66600    
#> sexmale:age -0.052891   0.012025  -4.398 1.09e-05 ***
#> ---
#> Signif. codes:  
#> 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
#> 
#> (Dispersion parameter for binomial family taken to be 1)
#> 
#>     Null deviance: 1414.62  on 1045  degrees of freedom
#> Residual deviance:  961.92  on 1040  degrees of freedom
#>   (263 Beobachtungen als fehlend gelöscht)
#> AIC: 973.92
#> 
#> Number of Fisher Scoring iterations: 5
```

Again, the default console output is not feasible for a written report, but is printed here to explain some points about the model. The estimated numbers here are on the scale of the linear predictor, that is, they cannot be interpreted as probability values, which is why you see negative numbers. In logistic regression, a linear combination of covariate values (which can take values between $\pm\infty$) is converted to the scale of a probability (between $0$ and $1$) using the logit link function, which is the inverse of the standard logistic function $\sigma(x) = 1 / ( 1 + e^{-x})$, with its definition stated in see equation \@ref(eq:logit).


\begin{equation} 
  logit(\theta_{i}) = ln(\frac{\theta_{i}}{1 - \theta_{i}}) = \beta_{0} + \beta_{1} \times x_{1} + ... + \beta_{p} \times x_{p}
  (\#eq:logit)
\end{equation} 

That means that after exponentiating both sides we have the odds, see equation \@ref(eq:odds), which are easier to interpret.

\begin{equation} 
  odds = \theta_{i} = \frac{\theta_{i}}{1 - \theta_{i}} = e^{\beta_{0} + \beta_{1} \times x_{1} + ... + \beta_{p} \times x_{p}}
  (\#eq:odds)
\end{equation} 

In a logistic regression, the response being modeled is the $log(odds)$ that $Y = 1$. Therefore, the regression coefficients give the change in log(odds) in the response for a unit change in the predictor variable, holding all other predictor variables constant. The odds ratio can then be defined as in equation \@ref(eq:exponential). 

\begin{equation}
  OR ={\frac {\operatorname {odds} (x+1)}{\operatorname {odds} (x)}}={\frac {e^{\beta _{0}+\beta _{1}(x+1)}}{e^{\beta _{0}+\beta _{1}x}}}=e^{\beta _{1}}
  (\#eq:exponential)
\end{equation}

This exponential relationship, see equation \@ref(eq:exponential), provides an interpretation for $\beta_{1}$: The odds multiply by $e^{\beta_{1}}$ for every 1-unit increase in x. So, if we take the coefficient for being male in the above model ($-1.0297546$) and take the exponential of it ($\approx~0.3570946$), we can say that a male passenger has a chance of surviving when compared to a female passenger which is reduced by a factor of 0.3570946. That roughly means that a male passenger only has a $64$% lower chance of survival than a female passenger. The probability value for the female passenger is not directly obvious from the above model output, because it serves as a baseline category in this model and is not explicitly named in the above output but is indicated by the intercept.

Using package `jtools` (which utilizes package `huxtable` for table formatting), one can get another decent model summary table (see table \@ref(tab:jtools-mlog1)), but you can as well use the aforementioned packages like `modelsummary` or `stargazer`.

\linespread{1}

```r
export_summs(mlog1, digits = 2, error_pos = "right", exp = TRUE,
             error_format = "[{conf.low}, {conf.high}]",
             model.names = "Dependent variable: Survived",
             coefs = c("Intercept" = "(Intercept)",
                       "2nd Passenger Class" = "pclass2nd",
                       "3rd Passenger Class" = "pclass3rd",
                       "Male Passenger" = "sexmale",
                       "Age" = "age",
                       "Male Passenger x Age" = "sexmale:age")) %>% 
  huxtable::set_caption('A logistic regression model for the titanic data set using package jtools')
```



\linespread{1}

```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{(\#tab:jtools-mlog1) A logistic regression model for the titanic data set using package jtools}
 \setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l}


\hhline{>{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}c!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\centering \hspace{6pt}  \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{2}{c!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\centering \hspace{6pt} Dependent variable: Survived \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Intercept \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 16.29 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [8.00, 33.18] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} 2nd Passenger Class \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.24 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [0.15, 0.39] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} 3rd Passenger Class \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.09 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [0.06, 0.15] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Male Passenger \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.36 **\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [0.18, 0.72] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Age \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 1.00\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [0.98, 1.01] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Male Passenger x Age \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.95 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [0.93, 0.97] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} N \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 1046\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} \hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} AIC \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 973.92\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} \hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} BIC \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 1003.63\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} \hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Pseudo R2 \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.47\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} \hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}-}
\arrayrulecolor{black}

\multicolumn{3}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt}  *** p $<$ 0.001;  ** p $<$ 0.01;  * p $<$ 0.05. \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```

Another way to produce such a model table is using package `gtsummary` in conjunction with `kableExtra`, see table \@ref(tab:gtsummary-mlog1). The only problem here is that you have to "rewrite" the column names because on the way from `gtsummary` output to `kableExtra`, the superscripts are lost which renders the footnote a little bit without meaning.

\linespread{1}

```r
tbl_regression(mlog1, exponentiate = TRUE,
               pvalue_fun = ~style_pvalue(.x, digits = 2),
               label = list(pclass ~ "Passenger Class",
                            sex ~ "Sex",
                            age ~ "Age"
                            )) %>% 
    add_global_p() %>%  # add global p-value 
    add_nevent() %>%    # add number of events of the outcome
    add_q() %>%         # adjusts global p-values for multiple testing
    bold_p() %>%        # bold p-values under a given threshold (default 0.05)
    bold_p(t = 0.05, q = TRUE) %>% # bold q-values under the threshold of 0.05
    bold_labels() %>% 
    italicize_levels() %>% 
    as_kable_extra(format = "latex", booktabs = TRUE, 
                   linesep = "", escape = FALSE,
      caption = 'A logistic regression model for the titanic data set using package gtsummary',
      col.names = c("Coefficient", "$\\mathrm{Event}~N$", "$OR^{1}$", 
                    "$95~\\mathrm{CI}^{1}$",
                    "$p-\\mathrm{value}$",
                    "$q-\\mathrm{value}^{2}$")) %>% 
    kable_styling(latex_options = c("striped", "HOLD_position")) 
```



\linespread{1}\begin{table}[H]

\caption{(\#tab:gtsummary-mlog1)A logistic regression model for the titanic data set using package gtsummary}
\centering
\begin{tabular}[t]{lccccc}
\toprule
Coefficient & $\mathrm{Event}~N$ & $OR^{1}$ & $95~\mathrm{CI}^{1}$ & $p-\mathrm{value}$ & $q-\mathrm{value}^{2}$\\
\midrule
\cellcolor{gray!6}{\textbf{Passenger Class}} & \cellcolor{gray!6}{427} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{\textbf{<0.001}} & \cellcolor{gray!6}{\textbf{<0.001}}\\
\hspace{1em}\em{1st} &  & — & — &  & \\
\cellcolor{gray!6}{\hspace{1em}\em{2nd}} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{0.24} & \cellcolor{gray!6}{0.15, 0.38} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{}\\
\hspace{1em}\em{3rd} &  & 0.09 & 0.06, 0.14 &  & \\
\cellcolor{gray!6}{\textbf{Sex}} & \cellcolor{gray!6}{427} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{\textbf{0.004}} & \cellcolor{gray!6}{\textbf{0.005}}\\
\hspace{1em}\em{female} &  & — & — &  & \\
\cellcolor{gray!6}{\hspace{1em}\em{male}} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{0.36} & \cellcolor{gray!6}{0.18, 0.72} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{}\\
\textbf{Age} & 427 & 1.00 & 0.98, 1.01 & 0.67 & 0.67\\
\cellcolor{gray!6}{\textbf{Sex * Age}} & \cellcolor{gray!6}{427} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{} & \cellcolor{gray!6}{\textbf{<0.001}} & \cellcolor{gray!6}{\textbf{<0.001}}\\
\hspace{1em}\em{male * Age} &  & 0.95 & 0.93, 0.97 &  & \\
\bottomrule
\multicolumn{6}{l}{\rule{0pt}{1em}\textsuperscript{1} OR = Odds Ratio, CI = Confidence Interval}\\
\multicolumn{6}{l}{\rule{0pt}{1em}\textsuperscript{2} False discovery rate correction for multiple testing}\\
\end{tabular}
\end{table}

As you have seen, there are a lot of possibilities to generate model and summary tables. It depends on what you need to do, what amount of time you are willing to invest into getting what you want and how satisfied you are with the output generated by one of these helper packages. There are lots of possibilities to tweak the output in more than one way and I would guess that in 90% of the cases, a pre-generated model table is doing the job just great. But, in case it does not, you can always resort to writing down a custom \LaTeX\ table on your own and fill in the cells with inline R chunks that give you exactly the number you want. In this way you can completely decide how your table should look like. 


### Automated report generation

Another automated way to report a model is using the `report` package [@Makowski2021], for example:

\linespread{1}

```r
report(mlog1)
```



\linespread{1}We fitted a logistic model (estimated using ML) to predict
survived with pclass (formula: survived ~ pclass + sex +
age + sex:age). The model's explanatory power is
substantial (Tjur's R2 = 0.39). The model's intercept,
corresponding to pclass = 1st, is at 2.79 (95% CI [2.09,
3.51], p < .001). Within this model:

  - The effect of pclass [2nd] is statistically significant
and negative (beta = -1.42, 95% CI [-1.91, -0.96], p <
.001; Std. beta = -1.42, 95% CI [-1.91, -0.96])
  - The effect of pclass [3rd] is statistically significant
and negative (beta = -2.39, 95% CI [-2.86, -1.93], p <
.001; Std. beta = -2.39, 95% CI [-2.86, -1.93])
  - The effect of sex [male] is statistically significant and
negative (beta = -1.03, 95% CI [-1.74, -0.33], p = 0.004;
Std. beta = -2.61, 95% CI [-2.96, -2.28])
  - The effect of age is statistically non-significant and
negative (beta = -4.08e-03, 95% CI [-0.02, 0.01], p =
0.666; Std. beta = -0.06, 95% CI [-0.32, 0.21])
  - The interaction effect of age on sex [male] is
statistically significant and negative (beta = -0.05, 95%
CI [-0.08, -0.03], p < .001; Std. beta = -0.76, 95% CI
[-1.11, -0.43])

Standardized parameters were obtained by fitting the model
on a standardized version of the dataset. 95% Confidence
Intervals (CIs) and p-values were computed using a Wald
z-distribution approximation., We fitted a logistic model
(estimated using ML) to predict survived with sex (formula:
survived ~ pclass + sex + age + sex:age). The model's
explanatory power is substantial (Tjur's R2 = 0.39). The
model's intercept, corresponding to sex = female, is at
2.79 (95% CI [2.09, 3.51], p < .001). Within this model:

  - The effect of pclass [2nd] is statistically significant
and negative (beta = -1.42, 95% CI [-1.91, -0.96], p <
.001; Std. beta = -1.42, 95% CI [-1.91, -0.96])
  - The effect of pclass [3rd] is statistically significant
and negative (beta = -2.39, 95% CI [-2.86, -1.93], p <
.001; Std. beta = -2.39, 95% CI [-2.86, -1.93])
  - The effect of sex [male] is statistically significant and
negative (beta = -1.03, 95% CI [-1.74, -0.33], p = 0.004;
Std. beta = -2.61, 95% CI [-2.96, -2.28])
  - The effect of age is statistically non-significant and
negative (beta = -4.08e-03, 95% CI [-0.02, 0.01], p =
0.666; Std. beta = -0.06, 95% CI [-0.32, 0.21])
  - The interaction effect of age on sex [male] is
statistically significant and negative (beta = -0.05, 95%
CI [-0.08, -0.03], p < .001; Std. beta = -0.76, 95% CI
[-1.11, -0.43])

Standardized parameters were obtained by fitting the model
on a standardized version of the dataset. 95% Confidence
Intervals (CIs) and p-values were computed using a Wald
z-distribution approximation. and We fitted a logistic
model (estimated using ML) to predict survived with age
(formula: survived ~ pclass + sex + age + sex:age). The
model's explanatory power is substantial (Tjur's R2 =
0.39). The model's intercept, corresponding to age = 0, is
at 2.79 (95% CI [2.09, 3.51], p < .001). Within this model:

  - The effect of pclass [2nd] is statistically significant
and negative (beta = -1.42, 95% CI [-1.91, -0.96], p <
.001; Std. beta = -1.42, 95% CI [-1.91, -0.96])
  - The effect of pclass [3rd] is statistically significant
and negative (beta = -2.39, 95% CI [-2.86, -1.93], p <
.001; Std. beta = -2.39, 95% CI [-2.86, -1.93])
  - The effect of sex [male] is statistically significant and
negative (beta = -1.03, 95% CI [-1.74, -0.33], p = 0.004;
Std. beta = -2.61, 95% CI [-2.96, -2.28])
  - The effect of age is statistically non-significant and
negative (beta = -4.08e-03, 95% CI [-0.02, 0.01], p =
0.666; Std. beta = -0.06, 95% CI [-0.32, 0.21])
  - The interaction effect of age on sex [male] is
statistically significant and negative (beta = -0.05, 95%
CI [-0.08, -0.03], p < .001; Std. beta = -0.76, 95% CI
[-1.11, -0.43])

Standardized parameters were obtained by fitting the model
on a standardized version of the dataset. 95% Confidence
Intervals (CIs) and p-values were computed using a Wald
z-distribution approximation.

All the text since the last code chunk was automatically generated by this one function call. have a look at the chunk options to see how this is printed as normal text and not as console output.


## Plotting statistical models

To really understand what a regression model is telling you, you should not just stare at a summary table but you should plot the predictions of a model. There, you can see how the dependent variable is changing when a predictor variable is changing, normally while holding all other predictors constant (e.g., at $0$ or the sample mean). That means that you need to calculate the predicted values from the model given different input values for the predictors, calculate the lower and upper confidence intervals according to some level of confidence (normally 95%) and plot all these together. In the case of a \ac{glm} one should decide if these numbers should be transformed from the scale of the linear predictor to the scale of the response, for example in case of a logistic regression model, if you should plot the probability instead of the log odds.

There are several packages available that make this task easier. Some of them are `effects` [@fox2003, @fox2019], `ggeffects` [@Luedecke2018], `jtools` [@jtools], `see` [@Luedecke-see2021] or `emmeans` [for estimated marginal means, @Lenth2022]. 

A first example using `ggeffects`:

\linespread{1}

```r
eff1 <- ggpredict(mlog1, terms = "pclass")
plot(eff1) + labs(x = "Passenger Class", y = "Probability of Survival",
                  title = element_blank()) +
    scale_y_continuous(labels = scales::percent, limits = c(0,0.65))
```



\linespread{1}\begin{figure}[H]

{\centering \includegraphics{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/pclass-ggeffects-1} 

}

\caption{Predicted probabilities of survival for each passenger class}(\#fig:pclass-ggeffects)
\end{figure}

Here, you can see another example to visualize the interaction between `sex` and `age`, that is, an interaction between a continuous and a categorical predictor.

\linespread{1}

```r
eff2 <- ggpredict(mlog1, terms = c("age [all]", "sex"))
plot(eff2) + labs(x = "Age", y = "Probability of Survival",
                  title = element_blank()) + 
    theme(legend.position = "bottom") +
    guides(color = guide_legend(title = "Sex"))
```



\linespread{1}\begin{figure}[H]

{\centering \includegraphics{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/sex-age-ggeffects-1} 

}

\caption{Predicted probabilities of survival dependend on sex and age}(\#fig:sex-age-ggeffects)
\end{figure}

Coming back to the multiple regression model from above (see section \@ref(reg-models)), especially model 1 (see table \@ref(tab:m123-modelsummary)), we can generate one visualization for all the main effects and one for the interaction. In a "real" scientific work you would not present the main effects for themselves in presence of an interaction involving these main effects, but for demonstration purposes, we want to generate four visualizations and put them together in one plot using the package `patchwork` [@Pedersen2022]. The code for this is placed on the following page, and the figure it produces comes on the next one. By the way, have a look into the chunk options for the last chunk, where both the arguments `fig.cap` and `fig.scap` are used to produce a caption and a short caption for figure \@ref(fig:patchwork-plot), where the former is printed under the figure itself and the latter is used in the list of figures to have a smaller output in the frontmatter. 

\newpage

\linespread{1}

```r
m1_year <- ggpredict(m1, terms = "year")
m1_cyl <- ggpredict(m1, terms = "cyl")
m1_displ <- ggpredict(m1, terms = "displ [all]")
m1_year_cyl <- ggpredict(m1, terms = c("cyl", "year"))

m1_year_plot <- plot(m1_year) + labs(x = "Year", 
    y = "Highway Miles per Gallon", title = element_blank()) + 
    scale_y_continuous(limits = c(0, NA), 
                       breaks = seq(from = 0, to = 50, by = 5))
m1_cyl_plot <- plot(m1_cyl) + labs(x = "", 
    y = "Highway Miles per Gallon", title = element_blank()) + 
    scale_y_continuous(limits = c(0, NA), 
                       breaks = seq(from = 0, to = 50, by = 5))
m1_displ_plot <- plot(m1_displ) + labs(x = "Displacement", 
    y = "Highway Miles per Gallon", title = element_blank()) + 
    scale_y_continuous(limits = c(0, NA), 
                       breaks = seq(from = 0, to = 50, by = 5))
m1_year_cyl_plot <- plot(m1_year_cyl) + labs(x = "", 
    y = "Highway Miles per Gallon", title = element_blank()) + 
    guides(color = guide_legend(title = "Year")) + 
    scale_y_continuous(limits = c(0, NA), 
                       breaks = seq(from = 0, to = 50, by = 5))

m1_year_plot + m1_cyl_plot + m1_displ_plot + m1_year_cyl_plot +
    plot_annotation(tag_levels = 'A') +
    plot_layout(guides = 'collect') &
    theme(legend.position = 'bottom')
```



\linespread{1}\begin{figure}[H]

{\centering \includegraphics{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/patchwork-plot-1} 

}

\caption[One overall plot with four subplots]{One overall plot with four subplots: (A) predictor Year, (B) predictor Cylinders, (C) predictor Displacement, and (D) the interaction between Year x Cylinders}(\#fig:patchwork-plot)
\end{figure}


> This is the end! Good luck with writing your own report or thesis using this template!


<!--chapter:end:08-appendix.Rmd-->


# Tipps and explanations about RBookdown

## Introduction

### Usage

math equation $a^2 + b^2 = c^2$.

Each **bookdown** chapter is an .Rmd file, and each .Rmd file can contain one (and only one) chapter. A chapter *must* start with a first-level heading: `# A good chapter`, and can contain one (and only one) first-level heading.

Use second-level and higher headings within chapters like: `## A short section` or `### An even shorter section`.

The `index.Rmd` file is required, and is also your first book chapter. It will be the homepage when you render the book.

### Render book

You can render the HTML version of this example book without changing anything:

1. Find the **Build** pane in the RStudio IDE, and

1. Click on **Build Book**, then select your output format, or select "All formats" if you'd like to use multiple formats from the same book source files.

Or build the book from the R console:

\linespread{1}

```r
bookdown::render_book()
```



\linespread{1}

To render this example to PDF as a `bookdown::pdf_book`, you'll need to install XeLaTeX. You are recommended to install TinyTeX (which includes XeLaTeX): <https://yihui.org/tinytex/>.

## Preview book

As you work, you may start a local server to live preview this HTML book. This preview will update as you edit the book when you save individual .Rmd files. You can start the server in a work session by using the RStudio add-in "Preview book", or from the R console:

\linespread{1}

```r
bookdown::serve_book()
```



\linespread{1}

### Hello bookdown 


All chapters start with a first-level heading followed by your chapter title, like the line above. There should be only one first-level heading (`#`) per .Rmd file.

### A section

All chapter sections start with a second-level (`##`) or higher heading followed by your section title, like the sections above and below here. You can have as many as you want within a chapter.

#### An unnumbered section {-}

Chapters and sections are numbered by default. To un-number a heading, add a `{.unnumbered}` or the shorter `{-}` at the end of the heading, like in this section.


## Cross-references {#cross}

Cross-references make it easier for your readers to find and link to elements in your book.

### Chapters and sub-chapters

There are two steps to cross-reference any heading:

1. Label the heading: `# Hello world {#nice-label}`. 
    - Leave the label off if you like the automated heading generated based on your heading title: for example, `# Hello world` = `# Hello world {#hello-world}`.
    - To label an un-numbered heading, use: `# Hello world {-#nice-label}` or `{# Hello world .unnumbered}`.

1. Next, reference the labeled heading anywhere in the text using `\@ref(nice-label)`; for example, please see Chapter \@ref(cross). 
    - If you prefer text as the link instead of a numbered reference use: [any text you want can go here](#cross).

### Captioned figures and tables

Figures and tables *with captions* can also be cross-referenced from elsewhere in your book using `\@ref(fig:chunk-label)` and `\@ref(tab:chunk-label)`, respectively.

See Figure \@ref(fig:nice-fig).

\linespread{1}

```r
par(mar = c(4, 4, .1, .1))
plot(pressure, type = 'b', pch = 19)
```



\linespread{1}\begin{figure}

{\centering \includegraphics[width=0.8\linewidth]{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/nice-fig-1} 

}

\caption{Here is a nice figure!}(\#fig:nice-fig)
\end{figure}

Don't miss Table \@ref(tab:nice-tab).

\linespread{1}

```r
knitr::kable(
  head(pressure, 10), caption = 'Here is a nice table!',
  booktabs = TRUE
)
```



\linespread{1}\begin{table}

\caption{(\#tab:nice-tab)Here is a nice table!}
\centering
\begin{tabular}[t]{rr}
\toprule
temperature & pressure\\
\midrule
0 & 0.0002\\
20 & 0.0012\\
40 & 0.0060\\
60 & 0.0300\\
80 & 0.0900\\
\addlinespace
100 & 0.2700\\
120 & 0.7500\\
140 & 1.8500\\
160 & 4.2000\\
180 & 8.8000\\
\bottomrule
\end{tabular}
\end{table}



## Parts

You can add parts to organize one or more book chapters together. Parts can be inserted at the top of an .Rmd file, before the first-level chapter heading in that same file. 

Add a numbered part: `# (PART) Act one {-}` (followed by `# A chapter`)

Add an unnumbered part: `# (PART\*) Act one {-}` (followed by `# A chapter`)

Add an appendix as a special kind of un-numbered part: `# (APPENDIX) Other stuff {-}` (followed by `# A chapter`). Chapters in an appendix are prepended with letters instead of numbers.

## Footnotes

Footnotes are put inside the square brackets after a caret `^[]`. Like this one ^[This is a footnote.]. 

### Citations

Reference items in your bibliography file(s) using `@key`.

For example, we are using the **bookdown** package [@R-bookdown] (check out the last code chunk in index.Rmd to see how this citation key was added) in this sample book, which was built on top of R Markdown and **knitr** [@xie2015] (this citation was added manually in an external file book.bib). 
Note that the `.bib` files need to be listed in the index.Rmd with the YAML `bibliography` key.


The RStudio Visual Markdown Editor can also make it easier to insert citations: <https://rstudio.github.io/visual-markdown-editing/#/citations>



<!--chapter:end:09-explanations-and-tipps.Rmd-->


# Data-set
\linespread{1}

```r
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

dataset <- read_csv("02-data/cost-of-living-2017.csv", lazy= FALSE)
```



\linespread{1}

```
#> Rows: 511 Columns: 1
#> -- Column specification --------------------
#> Delimiter: ","
#> chr (1): City	State	Country	Cost of Living Plus Rent Ind...
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

<!--chapter:end:10-dataSet.Rmd-->


# Discussion

Mal schauen, ob diese Datei funktioniert

<!--chapter:end:10-test.Rmd-->



\linespread{1}

```r

library(tidyverse)
library(dplyr)
library(stringr)
library(ggplot2)
library(maps)
```



\linespread{1}

```
#> Warning: Paket 'maps' wurde unter R Version 4.2.2 erstellt
#> 
#> Attache Paket: 'maps'
#> Das folgende Objekt ist maskiert 'package:purrr':
#> 
#>     map
```

\linespread{1}

```r
library(janitor)

#Initial data
rawData <- read_delim("02-data/cost-of-living-2017.csv", 
                                  delim = "\t", escape_double = FALSE, 
                                  trim_ws = TRUE)
```



\linespread{1}

```
#> Rows: 511 Columns: 11
#> -- Column specification --------------------
#> Delimiter: "\t"
#> chr (3): City, State, Country
#> dbl (8): Cost of Living Plus Rent Index, CLI, Rent Index...
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

\linespread{1}

```r
rawData <- janitor::clean_names(rawData)
rawData
```



\linespread{1}

```
#> # A tibble: 511 x 11
#>    city  state country cost_~1   cli rent_~2 groce~3 resta~4
#>    <chr> <chr> <chr>     <dbl> <dbl>   <dbl>   <dbl>   <dbl>
#>  1 Zuri~ <NA>  Switze~   109.   150.    66.8    164.    141.
#>  2 Hami~ <NA>  Bermuda   133.   148.   118.     145.    153.
#>  3 Zug   <NA>  Switze~   106.   143.    67.4    148.    143.
#>  4 Gene~ <NA>  Switze~   107.   142.    70.2    147.    139.
#>  5 Basel <NA>  Switze~    97.5  142.    51.5    150.    132.
#>  6 Bern  <NA>  Switze~    91.1  136.    45.3    146.    122.
#>  7 Laus~ <NA>  Switze~    93.6  131.    54.6    137.    128.
#>  8 Reyk~ <NA>  Iceland    93.9  131.    55.9    128.    141.
#>  9 Luga~ <NA>  Switze~    88.6  124.    51.7    121.    128.
#> 10 Stav~ <NA>  Norway     77.8  117.    37.4    108.    143.
#> # ... with 501 more rows, 3 more variables:
#> #   local_purchasing_power_index <dbl>,
#> #   leverage_model_1 <dbl>, leverage_model_2 <dbl>, and
#> #   abbreviated variable names
#> #   1: cost_of_living_plus_rent_index, 2: rent_index,
#> #   3: groceries_index, 4: restaurant_price_index
```

\linespread{1}

```r

#Outliers
sum(is.na(rawData))
```



\linespread{1}

```
#> [1] 383
```

<!--chapter:end:11-exploratory_data_analysis.Rmd-->




\linespread{1}

```r
library(tidyverse)
library(dplyr)
library(stringr)
library(ggplot2)
library(maps)
library(janitor)

#Initial data
rawData <- read_delim("02-data/cost-of-living-2017.csv", 
                                  delim = "\t", escape_double = FALSE, 
                                  trim_ws = TRUE)
```



\linespread{1}

```
#> Rows: 511 Columns: 11
#> -- Column specification --------------------
#> Delimiter: "\t"
#> chr (3): City, State, Country
#> dbl (8): Cost of Living Plus Rent Index, CLI, Rent Index...
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

\linespread{1}

```r
rawData <- janitor::clean_names(rawData)
manipulatedData <- rawData[,3:4] %>% group_by(country) %>% summarise(average = mean(cost_of_living_plus_rent_index))

colnames(manipulatedData)[1] <- "region"

world <- map_data("world")
worldSubset <- left_join(manipulatedData, world, by="region")
worldSubset
```



\linespread{1}

```
#> # A tibble: 66,008 x 7
#>    region  average  long   lat group order subregion
#>    <chr>     <dbl> <dbl> <dbl> <dbl> <int> <chr>    
#>  1 Albania    24.4  20.1  42.5     6   770 <NA>     
#>  2 Albania    24.4  20.1  42.5     6   771 <NA>     
#>  3 Albania    24.4  20.2  42.4     6   772 <NA>     
#>  4 Albania    24.4  20.2  42.3     6   773 <NA>     
#>  5 Albania    24.4  20.3  42.3     6   774 <NA>     
#>  6 Albania    24.4  20.4  42.3     6   775 <NA>     
#>  7 Albania    24.4  20.5  42.2     6   776 <NA>     
#>  8 Albania    24.4  20.5  42.2     6   777 <NA>     
#>  9 Albania    24.4  20.6  42.0     6   778 <NA>     
#> 10 Albania    24.4  20.6  41.9     6   779 <NA>     
#> # ... with 65,998 more rows
```

\linespread{1}

```r

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
worldCLI <- ggplot(data = worldSubset, mapping = aes(x = long, y = lat, group = group)) + 
  coord_fixed(1.3) +
  geom_polygon(aes(fill = average)) +
  scale_fill_distiller(palette ="RdBu", direction = 1) + # or direction=1
  ggtitle("Average Cost of Living + Rent Index") +
  plain
worldCLI
```



\linespread{1}![](group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/unnamed-chunk-47-1.pdf)<!-- --> 


\linespread{1}

```r
library(tidyverse)
library(dplyr)
library(stringr)
library(ggplot2)
library(maps)
library(janitor)

#initial country data
dd <- read_delim("02-data/developed_and_developing_countries.csv", 
                                  delim = ";", escape_double = FALSE,
                                  trim_ws = TRUE)
```



\linespread{1}

```
#> Rows: 172 Columns: 2
#> -- Column specification --------------------
#> Delimiter: ";"
#> chr (2): country, category
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

\linespread{1}

```r
dd <- janitor::clean_names(dd)
dd$category[dd$category == "developed"] <- 1.0
dd$category[dd$category == "developing"] <- 0.0
dd$category <- as.double(dd$category)

dd$category[dd$category == "developing"] <- 0.0
dd$country[dd$country == "italy"] <- "Italy"

colnames(dd)[1] <- "region"
colnames(dd)[2] <- "development"

world <- map_data("world")
worldSubset <- left_join(dd, world, by="region")

worldSubset
```



\linespread{1}

```
#> # A tibble: 71,310 x 7
#>    region  development  long   lat group order subregion
#>    <chr>         <dbl> <dbl> <dbl> <dbl> <int> <chr>    
#>  1 Austria           1  17.0  48.6   181  9108 <NA>     
#>  2 Austria           1  16.9  48.6   181  9109 <NA>     
#>  3 Austria           1  16.9  48.6   181  9110 <NA>     
#>  4 Austria           1  16.9  48.5   181  9111 <NA>     
#>  5 Austria           1  16.9  48.4   181  9112 <NA>     
#>  6 Austria           1  16.9  48.4   181  9113 <NA>     
#>  7 Austria           1  17.0  48.2   181  9114 <NA>     
#>  8 Austria           1  17.1  48.1   181  9115 <NA>     
#>  9 Austria           1  17.1  48.0   181  9116 <NA>     
#> 10 Austria           1  17.1  48.0   181  9117 <NA>     
#> # ... with 71,300 more rows
```

\linespread{1}

```r

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
worldDD <- ggplot(data = worldSubset, mapping = aes(x = long, y = lat, group = group)) +
  borders("world", fill="grey90",colour="grey") + 
  coord_fixed(1.3) +
  geom_polygon(aes(fill = development)) +
  scale_fill_distiller(palette ="RdBu", direction = 1) + # or direction=1
  ggtitle("Industrialized and developing countries") +
  plain
worldDD
```



\linespread{1}![](group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/unnamed-chunk-48-1.pdf)<!-- --> 

\linespread{1}

```r
library(tidyverse)
library(dplyr)
library(stringr)
library(ggplot2)
library(maps)
library(janitor)

#Initial data
rawData <- read_delim("02-data/cost-of-living-2017.csv", 
                                  delim = "\t", escape_double = FALSE, 
                                  trim_ws = TRUE)
```



\linespread{1}

```
#> Rows: 511 Columns: 11
#> -- Column specification --------------------
#> Delimiter: "\t"
#> chr (3): City, State, Country
#> dbl (8): Cost of Living Plus Rent Index, CLI, Rent Index...
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

\linespread{1}

```r
rawData <- janitor::clean_names(rawData)
rawData
```



\linespread{1}

```
#> # A tibble: 511 x 11
#>    city  state country cost_~1   cli rent_~2 groce~3 resta~4
#>    <chr> <chr> <chr>     <dbl> <dbl>   <dbl>   <dbl>   <dbl>
#>  1 Zuri~ <NA>  Switze~   109.   150.    66.8    164.    141.
#>  2 Hami~ <NA>  Bermuda   133.   148.   118.     145.    153.
#>  3 Zug   <NA>  Switze~   106.   143.    67.4    148.    143.
#>  4 Gene~ <NA>  Switze~   107.   142.    70.2    147.    139.
#>  5 Basel <NA>  Switze~    97.5  142.    51.5    150.    132.
#>  6 Bern  <NA>  Switze~    91.1  136.    45.3    146.    122.
#>  7 Laus~ <NA>  Switze~    93.6  131.    54.6    137.    128.
#>  8 Reyk~ <NA>  Iceland    93.9  131.    55.9    128.    141.
#>  9 Luga~ <NA>  Switze~    88.6  124.    51.7    121.    128.
#> 10 Stav~ <NA>  Norway     77.8  117.    37.4    108.    143.
#> # ... with 501 more rows, 3 more variables:
#> #   local_purchasing_power_index <dbl>,
#> #   leverage_model_1 <dbl>, leverage_model_2 <dbl>, and
#> #   abbreviated variable names
#> #   1: cost_of_living_plus_rent_index, 2: rent_index,
#> #   3: groceries_index, 4: restaurant_price_index
```

\linespread{1}

```r

dd <- read_delim("02-data/developed_and_developing_countries.csv", 
                                  delim = ";", escape_double = FALSE,
                                  trim_ws = TRUE)
```



\linespread{1}

```
#> Rows: 172 Columns: 2
#> -- Column specification --------------------
#> Delimiter: ";"
#> chr (2): country, category
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

\linespread{1}

```r
dd <- janitor::clean_names(dd)

colnames(dd)[2] <- "development"
dd$development[dd$development == "developed"] <- 1.0
dd$development[dd$development == "developing"] <- 0.0
dd$development <- as.double(dd$development)

dd$development[dd$development == "developing"] <- 0.0
dd$country[dd$country == "italy"] <- "Italy"
dd
```



\linespread{1}

```
#> # A tibble: 172 x 2
#>    country    development
#>    <chr>            <dbl>
#>  1 Austria              1
#>  2 Belgium              1
#>  3 Denmark              1
#>  4 Finland              1
#>  5 France               1
#>  6 Germany              1
#>  7 Greece               1
#>  8 Ireland              1
#>  9 Italy                1
#> 10 Luxembourg           1
#> # ... with 162 more rows
```

\linespread{1}

```r

data <- left_join(dd, rawData, by="country")
data
```



\linespread{1}

```
#> # A tibble: 566 x 12
#>    country devel~1 city  state cost_~2   cli rent_~3 groce~4
#>    <chr>     <dbl> <chr> <chr>   <dbl> <dbl>   <dbl>   <dbl>
#>  1 Austria       1 Linz  <NA>     58.8  88.4    28.3    86.6
#>  2 Austria       1 Vien~ <NA>     54.2  76.0    31.7    72.4
#>  3 Austria       1 Graz  <NA>     49.4  75.0    23.0    72.6
#>  4 Belgium       1 Antw~ <NA>     56.9  86.2    26.6    79.6
#>  5 Belgium       1 Gent  <NA>     55.8  85.3    25.3    77.1
#>  6 Belgium       1 Leuv~ <NA>     56.5  84.4    27.8    85.5
#>  7 Belgium       1 Brus~ <NA>     58.8  82.7    34.2    74.2
#>  8 Denmark       1 Cope~ <NA>     73.7  97.1    49.6    78.2
#>  9 Denmark       1 Aalb~ <NA>     59.2  92.1    25.3    77.3
#> 10 Denmark       1 Arhus <NA>     59.8  87.1    31.6    67.2
#> # ... with 556 more rows, 4 more variables:
#> #   restaurant_price_index <dbl>,
#> #   local_purchasing_power_index <dbl>,
#> #   leverage_model_1 <dbl>, leverage_model_2 <dbl>, and
#> #   abbreviated variable names 1: development,
#> #   2: cost_of_living_plus_rent_index, 3: rent_index,
#> #   4: groceries_index
```

\linespread{1}

```r

plot(data$cost_of_living_plus_rent_index,data$development
     ,xlab = "Cost of Living plus rent index", ylab = "Development state")
```



\linespread{1}![](group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/unnamed-chunk-49-1.pdf)<!-- --> \linespread{1}

```r

plot(data$groceries_index,data$rent_index
     ,xlab = "Cost of Living plus rent index", ylab = "Rent Index")
```



\linespread{1}![](group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/unnamed-chunk-49-2.pdf)<!-- --> \linespread{1}

```r

data$development[data$development == 1.0] <- "developed"
data$development[data$development == 0.0] <- "developing"
data
```



\linespread{1}

```
#> # A tibble: 566 x 12
#>    country devel~1 city  state cost_~2   cli rent_~3 groce~4
#>    <chr>   <chr>   <chr> <chr>   <dbl> <dbl>   <dbl>   <dbl>
#>  1 Austria develo~ Linz  <NA>     58.8  88.4    28.3    86.6
#>  2 Austria develo~ Vien~ <NA>     54.2  76.0    31.7    72.4
#>  3 Austria develo~ Graz  <NA>     49.4  75.0    23.0    72.6
#>  4 Belgium develo~ Antw~ <NA>     56.9  86.2    26.6    79.6
#>  5 Belgium develo~ Gent  <NA>     55.8  85.3    25.3    77.1
#>  6 Belgium develo~ Leuv~ <NA>     56.5  84.4    27.8    85.5
#>  7 Belgium develo~ Brus~ <NA>     58.8  82.7    34.2    74.2
#>  8 Denmark develo~ Cope~ <NA>     73.7  97.1    49.6    78.2
#>  9 Denmark develo~ Aalb~ <NA>     59.2  92.1    25.3    77.3
#> 10 Denmark develo~ Arhus <NA>     59.8  87.1    31.6    67.2
#> # ... with 556 more rows, 4 more variables:
#> #   restaurant_price_index <dbl>,
#> #   local_purchasing_power_index <dbl>,
#> #   leverage_model_1 <dbl>, leverage_model_2 <dbl>, and
#> #   abbreviated variable names 1: development,
#> #   2: cost_of_living_plus_rent_index, 3: rent_index,
#> #   4: groceries_index
```

\linespread{1}

```r

boxplot(data$cost_of_living_plus_rent_index~data$development)
```



\linespread{1}![](group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/unnamed-chunk-49-3.pdf)<!-- --> 

<!--chapter:end:XX-test_datei_BM.Rmd-->

