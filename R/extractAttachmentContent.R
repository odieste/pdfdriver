#' Extract the content of a PDF document attachment
#'
#' @param filename The name of the PDF file
#'
#' @return The XML data read
#' @export
#'
#' @examples
#' # Basic extraction from a file
#' extractAttachmentContent("pdfdocwithattach.pdf")

extractAttachmentContent <- function(filename) {
  require(XML)
  require(xml2)

  attach <- pdftools::pdf_attachments(filename)

  content <- attach[[1]]$data

  raw <- rawToChar(content)

  xml_db <- read_xml(raw)

  xml <- xmlParse(xml_db)

  print(xml)

  return(xml_db)
}
