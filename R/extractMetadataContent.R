#' Extract the content of a XML element from the PDF document XMP
#'
#' @param filename The name of the PDF file
#' @param tag The element's name where the data is stored
#'
#' @return The XML data read
#' @export
#'
#' @examples
#' # Basic extraction from a file
#' extractMetadataContent("pdfdoc.pdf", "breakfast_menu")

extractMetadataContent <- function(filename, tag) {
  require(XML)
  require(xml2)
  require(magrittr)

  doc <- pdftools::pdf_info(filename)

  file <- read_xml(doc$metadata)

  full_tag <- paste(".//", tag, sep = "")

  data <- xml_find_first(file, full_tag)

  clean_data <- xml_text(data) %>% trimws()

  xml_db <- read_xml(clean_data)

  xml <- xmlParse(xml_db)

  print(xml)

  return(xml_db)
}
