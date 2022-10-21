## Setup and usage instructions for the HSBA bookdown LaTeX template:

### Acknowledgements

**The present HSBA project template is meant to build a PDF file, the customizations have no real effects on html or epub output or are not tested for these!**

The underlying custom LaTeX-template is build upon the 'default.latex' template from Pandoc:

> <https://github.com/jgm/pandoc/tree/master/data/templates>

Version from: **2022-05-17**

Pandoc version: **2.18.1**

Additionally, some code was borrowed from the Eisvogel Pandoc template by Pascal Wagler:

> <https://github.com/Wandmalfarbe/pandoc-latex-template>

The `lua`-filter that produces the word count is a slightly changed version taken from the CRAN package `rmdfiltr` (written by Frederik Aust):

> <https://cran.r-project.org/web/packages/rmdfiltr>

For the performance of the word count see here:

> <https://cran.r-project.org/web/packages/rmdfiltr/vignettes/wordcount.html#word-count-filter-performance>

All changes have been adopted to create a report / thesis template for HSBA. The version of this project template is **v0.03** dated **01.06.2022**! Feel free to continue using and modifying it!

### Text from the original bookdown `READ.md` file

> Welcome!

> This is a minimal example of a book based on R Markdown and **bookdown** (<https://github.com/rstudio/bookdown>). This template provides a skeleton file structure that you can edit to create your book. The contents inside the .Rmd files provide some pointers to help you get started, but feel free to also delete the content in each file and start fresh.

> Additional resources:

> The **bookdown** book: <https://bookdown.org/yihui/bookdown/> The **bookdown** package reference site: <https://pkgs.rstudio.com/bookdown>

### General information about this project template

-   Compared to the original bookdown project template, three additional folders exist: `00-template`, `01-images` and `02-data`. Their purpose is to demonstrate a basic project structure:

    -   In the `00-template` directory all extra files are placed that are needed for this template to work.

    -   In the directory `01-images` three different HSBA-logos are present, which can then be specified in the yml-header of `index.Rmd` using the variable `titlepage-logo` with the relative path like `./01-images/HSBA-Logo-quadratic-version-1.jpg`. In this directory, you should also place any image which you might need in your own work.

    -   In the `02-data` directory you will find the CSV-files that are used for the additional code examples in the appendix to demonstrate the use of several useful packages that you might want to use for yourself. Place any needed data file of your own in this directory.

-   The files `_output.yml`, `_bookdown.yml`, `index.Rmd`, `_common.R` and `preamble.tex` as well as `README.md` and `07-references.Rmd` are changed to accomodate the use of the adjusted LaTeX template and to expose needed variables and possibilities to the user. Please have a closer look especially into the first five to see all different options, that change the format of the target PDF-File. Also see the comments in `index.Rmd` for more documentation. The file `08-declaration.Rmd` is added to accomodate the legal requirements of the HSBA.

-   There is a new file `abbreviations.tex` contains the definitions of acronyms you can use in the text. You have to change it content to use your own. The name of the list of acronyms is defined in `index.Rmd` via the variable `acronyms`. If you don't want to use such a list or this functionality, you need to comment this variable out.

-   The argument `keep_tex: yes` must be present and listed as `yes` in the file `_output.yml`, otherwise, the word count function does not work!

-   title, subtitle, author(s) and an abstract can be listed directly in the yml-header of the file `index.Rmd`. Examples are given.

-   If you want to specifiy a linebreak in the `title` or `subtitle`, you have to write 2, in words, "two", blank spaces at the end of the line in question! See the example for argument `subtitle` in the yml-header of `index.Rmd`.

-   In the file `title-page-infos.tex` in directory "00-template" you can add necessary information to be printed on the titlepage. These are structured as key-value pairs, one pair in each row, key and value separated with an ampersand and each row ending with a double backslash. This file can be adjusted or appended as needed.

### Best practice: Be explicit in regard which Rmd-files should be included in the book

You should start your own content in newly created Rmd-files. The only Rmd-file that *must* be present is `index.Rmd`, and `07-references.Rmd` as well as `08-declaration.Rmd` are recommended. The Rmd-files to be included in the final PDF can then be specified in the file `_bookdown.yml` using the following syntax (your filenames might be different, this example uses non-existent files that follow loosely the structure of an scientific report):

    rmd_files: ["index.Rmd",
      "01-introduction.Rmd",
      "02-theory.Rmd",
      "03-methods.Rmd",
      "04-results.Rmd",
      "05-discussion.Rmd",
      "06-implications.Rmd",
      "07-references.Rmd",
      "08-declaration.Rmd",
      "09-appendix.Rmd"]

### Change the citation style or the citation engine

-   All options are set to include the correct chicago citation style, the csl files are also present in `00-template`. The default value is using the 17th edition of the english author-date style version. Adjust the csl option in `index.Rmd` if you use the german language accordingly: `chicago-author-date-de.csl`.

-   If you instead want to use biblatex as the citation engine, comment out the following lines in `_output_yml` and remove the comment from the biblatex-specification, then remove the comment from the line specifying the chicago biblatex style in the file `preamble.tex`

##### \_output.yml:

    citation_package: biblatex
    # citation_package: default
    #   pandoc_args: [ "--csl", "./00-template/chicago-author-date.csl" ]

##### preamble.tex

    \usepackage[authordate,backend=biber]{biblatex-chicago}

### Side notes

-   If you need to use any other LaTeX-package in your work, put them into the `preamble.tex`-file. The content of this file are put in the preamble of the LaTeX-document before converting to PDF.

-   If you need to adjust any default `knitr` chunk options, do so in the file `_common.R`.

### Counting words

-   In the first code-chunk of the file `index.Rmd`, the name of the final tex-file (of the same name as the final PDF) is guessed, which at the end is normally located in the `_book` directory and is named after the variable `book_filename` in the file `_bookdown.yml`. Therefore, the name is augmented with the path and the file extension `.tex`, e.g., `_book/NAME_OF_THE_FINAL_BOOK.tex`. If more than one tex-file is found, the build process is stopped with an error, than you'll have to use the option `Clean All` from the Rstudio build pane and rebuild the book. To reiterate: The argument `keep_tex: yes` must be specified in the file `_output.yml`!

-   If you build the book from scratch (e.g., for the first time or after `Clean All`), than the word count cannot be conducted because there is no tex source file available. This information will also be printed on the titlepage instead of the real word count. If so, just build the book again for a second time!

-   You can switch off the word count feature setting the variable `add-wordcount` in den yaml-header of `index.Rmd` to `false`.
