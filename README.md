
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

You can install the released version of acdocudat from github by running
the following code:

``` r
install_github("alliecarter/581FinalProjectCarter")
```

Then, simply library(acdocudat).

## Example

Oftentimes, we are given datasets to clean, summarize, or a number of
other tasks. The following examples are useful to help interpret
variable meanings and communicate them cleanly to an outside user or
collaborator.

``` r
library(acdocudat)
#> Warning: replacing previous import 'dplyr::combine' by 'gridExtra::combine' when
#> loading 'acdocudat'
## See what types of variables are in our dataset
varinfo(mtcars)
#>      variable     typ
#> mpg       mpg numeric
#> cyl       cyl numeric
#> disp     disp numeric
#> hp         hp numeric
#> drat     drat numeric
#> wt         wt numeric
#> qsec     qsec numeric
#> vs         vs numeric
#> am         am numeric
#> gear     gear numeric
#> carb     carb numeric
```

Now we want to get a sense of how much data is missing, how many
variables we have, and the ranges of data for each numeric variable

``` r
NFun(mtcars)
#>    variable  n missing    min  median     max       mean
#> 1       mpg 32       0 10.400  19.200  33.900  20.090625
#> 2       cyl 32       0  4.000   6.000   8.000   6.187500
#> 3      disp 32       0 71.100 196.300 472.000 230.721875
#> 4        hp 32       0 52.000 123.000 335.000 146.687500
#> 5      drat 32       0  2.760   3.695   4.930   3.596563
#> 6        wt 32       0  1.513   3.325   5.424   3.217250
#> 7      qsec 32       0 14.500  17.710  22.900  17.848750
#> 8        vs 32       0  0.000   0.000   1.000   0.437500
#> 9        am 32       0  0.000   0.000   1.000   0.406250
#> 10     gear 32       0  3.000   4.000   5.000   3.687500
#> 11     carb 32       0  1.000   2.000   8.000   2.812500
```

Perhaps we may want to run everything together and get a nice table
summarizing the variables available in this dataset.

``` r
Ncomb(mtcars)
#>    variable     typ  n missing    min  median     max       mean
#> 1       mpg numeric 32       0 10.400  19.200  33.900  20.090625
#> 2       cyl numeric 32       0  4.000   6.000   8.000   6.187500
#> 3      disp numeric 32       0 71.100 196.300 472.000 230.721875
#> 4        hp numeric 32       0 52.000 123.000 335.000 146.687500
#> 5      drat numeric 32       0  2.760   3.695   4.930   3.596563
#> 6        wt numeric 32       0  1.513   3.325   5.424   3.217250
#> 7      qsec numeric 32       0 14.500  17.710  22.900  17.848750
#> 8        vs numeric 32       0  0.000   0.000   1.000   0.437500
#> 9        am numeric 32       0  0.000   0.000   1.000   0.406250
#> 10     gear numeric 32       0  3.000   4.000   5.000   3.687500
#> 11     carb numeric 32       0  1.000   2.000   8.000   2.812500
```

Depending on if we will be presenting/collaborating, we may want to have
a cleaner, formatted output of variable information to share with
others.

If we are sharing, we can output to a pdf with a center tabled of all
available summarized information.

``` r
pdfout(mtcars, "CarsCodebook2020")
#> png 
#>   2
```

Within the R session it is often helpful to be able to isolate variables
one by one.

``` r
ShinyTable(mtcars)
#> Loading required package: shiny
#> Warning: package 'shiny' was built under R version 4.0.3
#> 
#> Listening on http://127.0.0.1:3724
```
