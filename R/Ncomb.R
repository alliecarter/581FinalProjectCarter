#Third Function: Combine Variable Name, Type, and Summary Statistics

#<i>This function takes the variable name and type from the first function and combines
#into a singular dataframe with the summary statistics from the second defined function. </i>


Ncomb <- function(.data)
{
  #alldf <- data.frame(varinfo(.data),NFun(.data))
  alldf <- left_join(varinfo(.data),NFun(.data), by="variable")
  return(as.data.frame(alldf))
}
