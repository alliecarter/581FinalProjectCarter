
<!-- README.md is generated from README.Rmd. Please edit that file -->

# acdocudat

<!-- badges: start -->

<!-- badges: end -->

The goal of acdocudat is to help the user create a data
dictionary/codebook for a user selected R dataset along with some
summary statistics to help to get an initial sense of data completeness,
possible outliers, and more. The package will provide functions that can
be used to form different sections of the codebook, put a codebook table
together, and be output to a PDF. The package will work with all
different types of datasets in order to be useful within a data
management setting.

## Installation

You can install the released version of acdocudat from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("acdocudat")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(acdocudat)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
