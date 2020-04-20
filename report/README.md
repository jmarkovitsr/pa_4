Programming assignment 4
================

**Author**: Your name here  
**Date**: Last update: 2020-04-20 15:04:14

# Overview

<!-- 
  The present report test the hypothesys that Spanish-English bilinguals produce lower F1  than English native speakers after the release of voiceless stop consonant.
. 
-->

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
occaecat cupidatat non proident, sunt in culpa qui officia deserunt
mollit anim id est laborum.

# Prep

## Libraries

cargar base de datos

``` r
library(tidyverse)
library(knitr)
```

## Load data

``` r
df1 = read_csv("../data/bi01.csv")
df2 = read_csv("../data/bi02.csv")
df3 = read_csv("../data/bi03.csv")
df4 = read_csv("../data/ne01.csv")
df5 = read_csv("../data/ne02.csv")
df6 = read_csv("../data/ne03.csv")
```

## Tidy data

``` r
df1 = read_csv("../data/bi01.csv")
```

    ## Parsed with column specification:
    ## cols(
    ##   fileID = col_character(),
    ##   f1 = col_double(),
    ##   f2 = col_double(),
    ##   vot = col_double(),
    ##   notes = col_character()
    ## )

``` r
df2 = read_csv("../data/bi02.csv")
```

    ## Parsed with column specification:
    ## cols(
    ##   fileID = col_character(),
    ##   f1 = col_double(),
    ##   f2 = col_double(),
    ##   vot = col_double(),
    ##   notes = col_logical()
    ## )

``` r
df = bind_rows(df1,df2)
df3 = read_csv("../data/bi03.csv")
```

    ## Parsed with column specification:
    ## cols(
    ##   fileID = col_character(),
    ##   f1 = col_double(),
    ##   f2 = col_double(),
    ##   vot = col_double(),
    ##   notes = col_logical()
    ## )

``` r
df = bind_rows(df, df3)
df4 = read_csv("../data/ne01.csv")
```

    ## Parsed with column specification:
    ## cols(
    ##   fileID = col_character(),
    ##   f1 = col_double(),
    ##   f2 = col_double(),
    ##   vot = col_double(),
    ##   notes = col_logical()
    ## )

``` r
df = bind_rows(df, df4)
df5 = read_csv("../data/ne02.csv")
```

    ## Parsed with column specification:
    ## cols(
    ##   fileID = col_character(),
    ##   f1 = col_double(),
    ##   f2 = col_double(),
    ##   vot = col_double(),
    ##   notes = col_logical()
    ## )

``` r
df = bind_rows(df, df5)
df6 = read_csv("../data/ne03.csv")
```

    ## Parsed with column specification:
    ## cols(
    ##   fileID = col_character(),
    ##   f1 = col_double(),
    ##   f2 = col_double(),
    ##   vot = col_double(),
    ##   notes = col_logical()
    ## )

``` r
df = bind_rows(df, df6)

# separate 
df = df %>%
  separate(fileID, c('language', 'item'), sep =  '_' )
```

# Analysis

## Descriptives

``` r
table = df %>%   
  group_by(language) %>%  
  summarise(mean_vot = mean(vot),  sd_vot = sd(vot))
  
kable(table, caption = "table")
```

| language | mean\_vot |   sd\_vot |
| :------- | --------: | --------: |
| bi01     |  26.19733 | 23.572779 |
| bi02     |  21.94378 |  8.247008 |
| bi03     |  18.40311 |  6.649617 |
| ne01     |  12.71444 |  7.846749 |
| ne02     |  30.58800 | 15.824477 |
| ne03     |  28.69200 | 15.017324 |

table

## Visualization

``` r
knitr::include_graphics('../figures/bilingual_f1.jpg')
```

![](../figures/bilingual_f1.jpg)<!-- -->

<!-- 
Include a professional looking figure illustrating an example of the acoustics 
of the production data.
You decide what is relevant (something related to your hypothesis). 
Think about where this file should be located in your project. 
What location makes most sense in terms of organization? 
How will you access the file (path) from this .Rmd file?
If you need help consider the following sources: 
  - Search 'Rmarkdown image' on google, stackoverflow, etc.
  - Search the 'knitr' package help files in RStudio
  - Search the internet for HTML code (not recommended, but it works)
  - Check the code from my class presentations (may or may not be helpful)
-->

## Hypothesis test

``` r
# Conduct a simple statistical analysis here (optional)
```

# Conclusion

<!-- 
Revisit your hypotheses (refer to plots, figures, tables, statistical tests, 
etc.)

Reflect on the entire process. 
What did you enjoy? What did you hate? What did you learn? 
What would you do differently?
-->

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
occaecat cupidatat non proident, sunt in culpa qui officia deserunt
mollit anim id est laborum.

</br></br>
