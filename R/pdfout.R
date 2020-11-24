#' Read Table/Codebook out to PDF File
#' @description This function outputs a PDF containing a table of the variable names, types and summary statistics.
#' @param .data The name of the dataset to summarize.
#' @param pdftitle The pdf file name that will be saved.
#'
#' @return
#' @export
#' @import gridExtra grid qpdf
#'
#' @examples
#' pdfout(iris, "IrisCodebook2020")
pdfout <- function(.data, pdftitle)
{
  x <- data.frame(Ncomb(.data))
  pdf_name = paste0(pdftitle,".pdf")
  pdf(pdf_name)
  grid.table(x)
  dev.off()
}
