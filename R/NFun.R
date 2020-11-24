
#' Summary Statistics
#' @description This function will grab the summary statistics from a dataframe including the number of observations, if the variable/column has any missing values, as well as the minimum and maximum for numeric data.
#' @param .data The name of the dataset to summarize.
#'
#' @return A data frame
#' @export
#'
#' @import dplyr
#' @examples
#' NFun(iris)
#'
NFun <- function(.data)
{
  n <- sapply(.data, length)
  missing <-sapply(.data, function(var) sum(length(which(is.na(var)))))
  df1 <- data.frame(names(.data), n, missing)
  numvar <- .data %>% select(where(is.numeric))
  minmax <- data.frame(names(numvar), sapply(numvar, min), sapply(numvar, median), sapply(numvar, max), sapply(numvar, mean))
  sumdf <- left_join(df1,minmax, by = c("names..data." = "names.numvar."))
  names(sumdf)[1]="variable"
  names(sumdf)[4]="min"
  names(sumdf)[5]="median"
  names(sumdf)[6]="max"
  names(sumdf)[7]="mean"
  return(sumdf)
}
