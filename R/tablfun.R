#Fourth Function: Make flextable of codebook information

#<i>This function takes dataframe containing the information about the dataset and uses flextable to make it into a clean, goodlooking table that can be used as a codebook within the R markdown file or output to a PDF to share with collaborators. Some additional development of this function will include further formatting and perhaps adding formatting options as additional arguments.</i>
#Need library flextable and dplyr


tablfun <- function(.data, headcolor="white", bodycolor="white", bodftcolor="black", topftcolor="black")
{
  flextable(Ncomb(.data)) %>%
    set_header_labels(variable="Variable", typ="Type",  n="N", missing="Missing", min="Minimum", max="Maximum") %>%
    bg(bg=headcolor, part="header") %>%
    bg(bg=bodycolor, part="body") %>%
    color(color = bodftcolor, part="body") %>%
    color(color = topftcolor, part="header")
}



