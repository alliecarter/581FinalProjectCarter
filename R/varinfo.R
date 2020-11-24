#' Variable Names/Types
#' @description This function will grab the variables names from the chosen input data set and list them in a dataframe alongside their class.
#' @param .data The name of the dataset to summarize.
#'
#' @return A dataframe
#' @export
#'
#' @examples
#' varinfo(iris)
#'
varinfo <- function(.data)
{
  variable <- names(.data)
  v <- data.frame(variable)
  typ <- sapply(.data, class)
  vardf <- data.frame(v, typ)
  return(vardf)
}

