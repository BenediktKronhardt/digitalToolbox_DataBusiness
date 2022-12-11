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
# can choose from the KOMA-script-classes, i.e., scrartcl, scrbook, scrreprt or scrlttr2.
# For classes book and scrbook, the variable "book" must also be set to true, for all other
# classes to false!
documentclass: scrreprt
book: false
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
# no-cite: |
#   @R-base, @R-rmarkdown
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
The standard of living became more important for the world population. But every standard of living comes at a price. How high the standard of living is in a country can be analyzed and compared between countries with the help of the cost of living index.

## Task description
Our task was to analyze a data set and write a report about it using R, RStudio, RMarkdown and the procedures of literate programming to put together a PDF-manuscript.
For this paper, a "cost of living" data set was received and analyzed in order to determine whether the classification as a developing or industrialized country has a significant impact on the Cost of Living Index.

## Structure
Our document is divided into five chapters. In the following, this chapter explains how the data was processed.The introduction is followed by an explanation of the Cost of Living Index and categorization as developed, emerging and developing countries,before in the methods section the data set is statistically described, including information on the variables’ distribution, missing values,
categories and the relationships between the variables.
The results section comprise all necessary calculations, which are then discussed in connection with the research question in the following section ("Discussion").

## Setup
After the required libraries, which will be worked with in the following, were installed, the libraries still had to be imported in order to be able to use them.



Subsequently, the data had to be read in. This could be initialized with the following command, after the data set was added as a csv file in the folder "02-data".
To be able to work better with the names of the columns and the dataset in general, the command "janitor::clean_names" was executed.  With this, for example, the spaces were removed and the names were all written in small letters.



To make it easier to split the data by region, we imported a csv file that shows the names of the countries in this world and their corresponding regions.

First we had to import the data set, which we named "continents". This data set is from the website "kaggle", named "Country Mapping - ISO, Continent, Region". ^[@continents2]



To be able to do a join with the raw data, we had to rename the column "name" to "country". After that, a left join could be performed on the renamed column. Since we only needed the column "region", a select for this one column was performed within the join.



Now it was possible to check if a country was not assigned to a region. 
Since the country Kosovo could not be assigned to a region, this had to be done manually.



To assign the different countries in our data set to either a developing or an industrialized country, we also imported a new csv file, which we named "dd". 
We created this file ourselves, based on data from @ddcountries.



To format the category as a double value, we executed the following commands.



Once this was done,the data set has been scanned for various capitalization errors and corrected. Also the column Category has been renamed to Development.



As a result, it was possible to perform a left join and add the categorization of the countries to the provided data set.



<!--chapter:end:00-introduction.Rmd-->


# Theoretical background

## Cost of Living Index

To be able to compare the cost of living between different countries, the Cost of Living Index (CLI) is used. The cost of living is the financial resources needed to cover, in a given place and in a given period of time, the basic expenses for a given standard of living, such as a shelter, food, medicines and others. The CLI enables the comparison of expenditures between different places in the world and at different times in history.[@caroline]

In economics, the cost-of-living index describes the ratio of the minimum expenditure required to achieve a given indifference curve between two prices. The calculation not only requires two different price groups, but is also dependent on a preference order of the required living goods and on a basic indifference curve describing the utility of two products. 
Among the two prices needed, e.g., from two different places, one is called the comparison price and the other is called the reference price or the base price. The base price is then used to illustrate on which prices the Cost-Of-Living Index is based and calculated. The calculated index is then dependent on the comparison prices determined. Further, the general logic of the cost-of-living index is best understood when the index is interpreted in the multiple context of temporal and spatial comparisons.[@Pollak1989]

## Industrialized, emerging and developing countries

In general, countries are divided into industrialized, emerging and developing countries. States in which the economic performance is supported by a large part of the resident companies are referred to as industrialized countries. Such countries stand out due to their high per capita income, which results from the available standard of education, high productivity in production, good external trade relations and usually a currency with low inflation.^[@bpd]


A country that is in the process of becoming an industrialized country is called an emerging country. These are nevertheless referred to the category of developing countries. Emerging countries are identifiable by their above-average economic growth. Nevertheless, emerging countries are similar to developing countries in the social structure, such as in the level of education, mortality and access to infrastructure.[@bmz]

The third category is developing countries, which are associated with poor food supply, high poverty, poor health care and educational opportunities. In association with the characteristics, such countries have an overall low standard of living and a preponderance of labor in agriculture and external economic difficulties.[@bmzentwicklung]

To analyze the available data, developing countries were combined with emerging economies and contrasted with developed countries.

\clearpage


<!--chapter:end:01-theoretical-background.Rmd-->


# Methods

## Data Description



The provided data consists of $511$ different data sets from $110$ different states. The data was set up into City, State, Country, Cost of Living Plus Rent Index, CLI, Rent Index, Groceries Index, Restaurant Index, Local Purchasing Power Index, Leverage Model 1 and Leverage Model 2 attributes.

In Figure \@ref(fig:continentCountdata) can be seen how many data sets are available per region.

\begin{figure}[H]

{\centering \includegraphics[width=0.8\linewidth]{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/continentCountdata-1} 

}

\caption{Count of Data from different regions}(\#fig:continentCountdata)
\end{figure}

In addition to the overview of data sets by region in figure \@ref(fig:continentCountdata), a world map in figure \@ref(fig:worldMap) has been created to illustrate the countries from which the data sets originate. The data sets from the industrialized countries were marked in blue and those from the emerging and developing countries in red.

\begin{figure}[H]

{\centering \includegraphics[width=0.8\linewidth]{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/worldMap-1} 

}

\caption{Industrialized and developing countries}(\#fig:worldMap)
\end{figure}

## Exploratory Data Analysis

First it had to be checked whether there are missing values inside of the data set.

There were $383$ missing values inside the column "state". 
However, since the column has no bearing on the research question, it was decided to disregard this column. With the city column there are a more meaningful basis to answer the question.
To disregard this column, it was cut off.



Also the leverage_model_1 and leverage_model_2 columns were cut off, since it was not work with these columns any further.




To determine if outliers exist within the data set, a boxplot was drawn.

\begin{figure}[H]

{\centering \includegraphics[width=1\linewidth]{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/boxplot-1} 

}

\caption{Boxplot of Data to identify outliers}(\#fig:boxplot)
\end{figure}

As can be seen from the figure \@ref(fig:boxplot), there are several outliers within the data set. In order not to distort the result, it was decided to keep these outliers and to continue working with them.

\clearpage

<!--chapter:end:02-methods.Rmd-->


# Results - Multiple linear regression {#results}

To determine if there was a significant difference between developing and developed countries, multiple linear regression was performed. The purpose is to determine whether or not classification as a developing country has a significant impact on the cost of living index.

Within multiple linear regression, the dependent variable (y) is the cost of living index. The independent variables (x) are the rent index, the groceries index, the restaurant price index, the local purchasing power index as well as the development status.


In order to perform a multiple linear regression, some conditions have to be fulfilled, which we will check in the following.

First, there must be a linear relationship between the x variables and the y variable. Also, the y variable must be metrically scaled, which is given.

Third, the residuals should be approximately normally distributed. We proved this graphically with the help of a histogram.

First, we need to set up our model as in equation \@ref(eq:lm1).

```{=tex}
\begin{align} 
  CLI_{\text{\,i}} &= \upalpha + \upbeta_{1} \times Rent~Index_{\text{\,i}} + \upbeta_{2} \times Groceries~Index_{\text{\,i}} + \upbeta_{3} \times Restaurant~Price~Index_{\text{\,i}} + &&\notag\\
  \phantom{CLI_{\text{\,i}}} & \phantom{{} =  ^l} \upbeta_{4} \times Local~Purchasing~Power~Index_{\text{\,i}} +  \upbeta_{5} \times Development_{\text{\,i}} + \upepsilon_{\text{\,i}} &&\notag\\
\upepsilon_{i} &\sim N(0, \upsigma^{2})
  (\#eq:lm1)
\end{align}
```


After that, we can create a histogram from our model, see figure \@ref(fig:histogramModel).

\begin{figure}[H]

{\centering \includegraphics[width=0.8\linewidth]{group1_BenediktKronhardt_BoergeMeyer_files/figure-latex/histogramModel-1} 

}

\caption{Histogram of the multiple linear regression model}(\#fig:histogramModel)
\end{figure}

The histogram visualizes a distribution can be considered normally distributed, therefore this condition is also fulfilled. Scaling is also given, since the cost of living index is on a scale.

The last checked condition is that there is no multicollinearity within the independent variables. To verify this, we created a correlation matrix. First, a subset from the data was generated in which the variables to be tested are stored. Then we created the correlation matrix from this subset and worked with the pearson method.


\singlespacing


\begin{tabu} to \linewidth {>{\raggedright}X>{\raggedright}X>{\raggedright}X>{\raggedright}X>{\raggedright}X>{\raggedright}X}
\toprule
 & RI & GI & RPI & LPPI & Dev\\
\midrule
RI &  &  &  &  & \\
GI & .77 &  &  &  & \\
RPI & .75 & .85 &  &  & \\
LPPI & .60 & .65 & .64 &  & \\
Dev & .47 & .60 & .68 & .64 & \\
\bottomrule
\end{tabu}

\doublespacing

Since the correlation between restaurant price index and groceries index is $0.85$ \> 0.8, this may indicate that there is multicollinearity. To confirm this, an another method was utilized to test for multicollinearity, the method of Variance Inflation Factor values.


```
#>                   rent_index              groceries_index 
#>                     2.821033                     4.346802 
#>       restaurant_price_index local_purchasing_power_index 
#>                     4.863177                     2.187319 
#>                  development 
#>                     2.241055
```

Since according to this method none of the values is \>10 the theory of multicollinearity is therefore rejected.

Now that all assumptions can be accepted, the evaluation of the model follows.


```{=latex}
 
  \providecommand{\huxb}[2]{\arrayrulecolor[RGB]{#1}\global\arrayrulewidth=#2pt}
  \providecommand{\huxvb}[2]{\color[RGB]{#1}\vrule width #2pt}
  \providecommand{\huxtpad}[1]{\rule{0pt}{#1}}
  \providecommand{\huxbpad}[1]{\rule[-#1]{0pt}{#1}}

\begin{table}[ht]
\begin{centerbox}
\begin{threeparttable}
\captionsetup{justification=centering,singlelinecheck=off}
\caption{(\#tab:unnamed-chunk-28) Multiple linear regression model for Cli}
 \setlength{\tabcolsep}{0pt}
\begin{tabular}{l l l}


\hhline{>{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}c!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\centering \hspace{6pt}  \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{2}{c!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\centering \hspace{6pt} Dependent variable: Cost of living index \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Intercept \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 10.78543 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [9.86460, 11.70625] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Rent \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.02867 *\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [0.00121, 0.05613] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Groceries \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.47921 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [0.45453, 0.50388] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Restaurant Price \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.42767 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [0.40381, 0.45154] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Local Purchasing Power \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} -0.02873 *** \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [-0.04138, -0.01608] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} Development Country \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.46634\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} [-0.44068, 1.37335] \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{255, 255, 255}{0.4}}->{\huxb{0, 0, 0}{0.4}}->{\huxb{0, 0, 0}{0.4}}-}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} N \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 511\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} \hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}

\multicolumn{1}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt} R2 \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} 0.97823\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} &
\multicolumn{1}{r!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedleft \hspace{6pt} \hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0}\hphantom{0} \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{>{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}->{\huxb{0, 0, 0}{0.8}}-}
\arrayrulecolor{black}

\multicolumn{3}{!{\huxvb{0, 0, 0}{0}}l!{\huxvb{0, 0, 0}{0}}}{\huxtpad{6pt + 1em}\raggedright \hspace{6pt}  *** p $<$ 0.001;  ** p $<$ 0.01;  * p $<$ 0.05. \hspace{6pt}\huxbpad{6pt}} \tabularnewline[-0.5pt]


\hhline{}
\arrayrulecolor{black}
\end{tabular}
\end{threeparttable}\par\end{centerbox}

\end{table}
 
```

The model makes a significant explanatory contribution, as the p-value is well below 0.05, and we can proceed with the interpretation of the further results.

As indicated by the p-values, all variables except development classification have a significant impact on the cost of living index.

\clearpage

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


\clearpage

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
\clearpage


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

\clearpage

<!--chapter:end:06-declaration.Rmd-->

