--- 
title: |
  Digital Tool Box -- Project Report
subtitle: | 
  Project work as part of the Bachelor of Science (B.Sc.) in  
  Media Management & Communication and Business Informatics
author: 
  - Tania Testperson (XXXX)
  - Max Mustermann (XXXX)
# If you don't need the abstract, just comment it out here completely. If you want to 
# use it, just overwrite it:
abstract: |
  The present specialized bookdown project template you are using now is intended as the basis for a report or thesis at the Hamburg School of Business Administration (HSBA). Compared to the original project template coming with the bookdown package, it generates PDF output only, using a slightly customized LaTeX template based on the original Pandoc-template, which is adapted to the requirements of the HSBA for theses and reports. The main notable differences are an appropriate title page, an automatic word count function, a list of acronyms, an adapted page numbering, the use of the appropriate Chicago Manual of Style citation style (17th edition, CSL-based) and an additional chapter with a basic declaration of honor at the end. In addition, several additional folders are used to demonstrate a basic project structure, as well as a slightly modified file organization to show the use of other R packages in addition to the bookdown basics. The contents of the original bookdown template can be found in the following chapters, the additional code examples in the appendix. For more information about this template, please refer to the file 'README.md'.
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

# If you don't need the abstract, just comment it out here completely. If you want to 

Placeholder



<!--chapter:end:index.Rmd-->


# About

Placeholder


## Usage
## Render book
## Preview book

<!--chapter:end:00-index-intro.Rmd-->


# Hello bookdown 

All chapters start with a first-level heading followed by your chapter title, like the line above. There should be only one first-level heading (`#`) per .Rmd file.

## A section

All chapter sections start with a second-level (`##`) or higher heading followed by your section title, like the sections above and below here. You can have as many as you want within a chapter.

### An unnumbered section {-}

Chapters and sections are numbered by default. To un-number a heading, add a `{.unnumbered}` or the shorter `{-}` at the end of the heading, like in this section.

<!--chapter:end:01-intro.Rmd-->


# Cross-references {#cross}

Placeholder


## Chapters and sub-chapters
## Captioned figures and tables

<!--chapter:end:02-cross-refs.Rmd-->


# Parts

You can add parts to organize one or more book chapters together. Parts can be inserted at the top of an .Rmd file, before the first-level chapter heading in that same file. 

Add a numbered part: `# (PART) Act one {-}` (followed by `# A chapter`)

Add an unnumbered part: `# (PART\*) Act one {-}` (followed by `# A chapter`)

Add an appendix as a special kind of un-numbered part: `# (APPENDIX) Other stuff {-}` (followed by `# A chapter`). Chapters in an appendix are prepended with letters instead of numbers.




<!--chapter:end:03-parts.Rmd-->


# Footnotes and citations 

## Footnotes

Footnotes are put inside the square brackets after a caret `^[]`. Like this one ^[This is a footnote.]. 

## Citations

Reference items in your bibliography file(s) using `@key`.

For example, we are using the **bookdown** package [@R-bookdown] (check out the last code chunk in index.Rmd to see how this citation key was added) in this sample book, which was built on top of R Markdown and **knitr** [@xie2015] (this citation was added manually in an external file book.bib). 
Note that the `.bib` files need to be listed in the index.Rmd with the YAML `bibliography` key.


The RStudio Visual Markdown Editor can also make it easier to insert citations: <https://rstudio.github.io/visual-markdown-editing/#/citations>

<!--chapter:end:04-citations.Rmd-->


# Blocks

Placeholder


## Equations
## Theorems and proofs
## Callout blocks

<!--chapter:end:05-blocks.Rmd-->


# Sharing your book

Placeholder


## Publishing
## 404 pages
## Metadata for sharing

<!--chapter:end:06-share.Rmd-->


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


<!--chapter:end:07-references.Rmd-->


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

<!--chapter:end:08-declaration.Rmd-->


# (APPENDIX) Appendix {-} 

Placeholder


## Use of acronyms
## Load packages and read data into R {#read-data}
## Displaying different types of tables from modelsummary
## Reporting statistical models
### $t$-test
### $\chi^2$-test
### Linear regression models {#reg-models}
### Generalized linear regression models
### Automated report generation
## Plotting statistical models

<!--chapter:end:09-appendix.Rmd-->


# Data-set

## Boxplot wie viele Städte liegen über/unter dem Durchschnittlichen CLI


```r
library(tidyverse) # This includes readr!
#> -- Attaching packages ------------------- tidyverse 1.3.2 --
#> v ggplot2 3.3.6      v purrr   0.3.5 
#> v tibble  3.1.8      v dplyr   1.0.10
#> v tidyr   1.2.1      v stringr 1.4.1 
#> v readr   2.1.3      v forcats 0.5.2 
#> -- Conflicts ---------------------- tidyverse_conflicts() --
#> x dplyr::filter() masks stats::filter()
#> x dplyr::lag()    masks stats::lag()
library(xtable) # For displaying LaTeX tables
library(modelsummary) # For displaying regression models in tables
library(stargazer) # For displaying regression models in tables
#> 
#> Please cite as: 
#> 
#>  Hlavac, Marek (2022). stargazer: Well-Formatted Regression and Summary Statistics Tables.
#>  R package version 5.2.3. https://CRAN.R-project.org/package=stargazer
library(jtools) # For displaying regression models in tables
library(kableExtra) # For displaying or changing tables
#> 
#> Attache Paket: 'kableExtra'
#> 
#> Das folgende Objekt ist maskiert 'package:dplyr':
#> 
#>     group_rows
library(gt) # For displaying tables
#> 
#> Attache Paket: 'gt'
#> 
#> Das folgende Objekt ist maskiert 'package:modelsummary':
#> 
#>     escape_latex
library(gtsummary) # For model reporting inline and in tables
library(broom) # For working with statistical models
library(car) # For type-III anova tests
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
library(report) # For automated text-based model reporting
library(effects) # For working with statistical models / visualize effects
#> lattice theme set by effectsTheme()
#> See ?effectsTheme for details.
library(ggeffects) # For working with statistical models / visualize effects
library(patchwork) # For putting different visualizations in one figure
```



```r
dataset <- read_csv("02-data/cost-of-living-2017.csv", lazy= FALSE)
#> Rows: 511 Columns: 1
#> -- Column specification ------------------------------------
#> Delimiter: ","
#> chr (1): City	State	Country	Cost of Living Plus Rent Ind...
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

<!--chapter:end:10-dataSet.Rmd-->

