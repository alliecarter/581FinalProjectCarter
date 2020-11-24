#' Formatted Table of Codebook Information
#' @description This function takes the combined dataframe containing the information about the dataset and uses flextable to make it into a clean, formatted table that can be used as a codebook within the R markdown file or output to a PDF to share with collaborators.
#' @param .data The name of the dataset to summarize.
#' @param headcolor The background color of the header of the table.
#' @param bodycolor The background color of the body of the table.
#' @param bodftcolor The font color of the header of the table.
#' @param topftcolor The font color of the body of the table.
#'
#' @return
#' @export
#'
#' @import flextable dplyr
#' @examples
#' tablfun(iris, "pink", "yellow", "black", "blue")
tablfun <- function(.data, headcolor="white", bodycolor="white", bodftcolor="black", topftcolor="black")
{
  flextable(Ncomb(.data)) %>%
    set_header_labels(variable="Variable", typ="Type",  n="N", missing="Missing", min="Minimum", median="Median", max="Maximum", mean="Mean") %>%
    bg(bg=headcolor, part="header") %>%
    bg(bg=bodycolor, part="body") %>%
    color(color = bodftcolor, part="body") %>%
    color(color = topftcolor, part="header")
}



