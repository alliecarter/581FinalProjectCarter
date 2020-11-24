#Fifth Function: Take table/codebook and read it out to a pdf.


pdfout <- function(.data, pdftitle)
{
  x <- data.frame(Ncomb(.data))
  pdf_name = paste0(pdftitle,".pdf")
  pdf(pdf_name)
  grid.table(x)
  dev.off()
}
