#' Variable Information Dataframe
#' @description This function takes the variable name and type and combines into a singular dataframe with the summary statistics.
#' @param .data The name of the dataset to summarize.
#'
#' @return A dataframe
#' @export
#'
#' @import dplyr
#' @examples
#' Ncomb(iris)
Ncomb <- function(.data)
{
  alldf <- left_join(varinfo(.data),NFun(.data), by="variable")
  return(as.data.frame(alldf))
}
