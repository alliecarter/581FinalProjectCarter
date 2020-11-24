#Second Function: Get Summary Statistics (N, Missing, Min, Max)

#<i>This function will grab the summary statistics from a dataset including the .
#number of observations, if the variable/column has any missing values, as well as the
#minimum and maximum for numeric data. </i>


#change to .data
NFun <- function(.data)
{
  n <- sapply(.data, length)
  missing <-sapply(.data, function(var) sum(length(which(is.na(var)))))
  df1 <- data.frame(names(.data), n, missing)
  numvar <- .data %>% select(where(is.numeric))
  #create new object as numeric only objects
  minmax <- data.frame(names(numvar), sapply(numvar, min), sapply(numvar, max))
  #max <- data.frame(sapply(numvar, max))
  sumdf <- left_join(df1,minmax, by = c("names..data." = "names.numvar."))
  names(sumdf)[1]="variable"
  names(sumdf)[4]="min"
  names(sumdf)[5]="max"
  return(sumdf)
}
