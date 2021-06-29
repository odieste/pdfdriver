#' Validate a XML against the PDFDriver XSD
#'
#' @param xml The XML data read
#'
#' @return A boolean value indicating whether XML is validated
#' @export
#'
#' @examples
#' Basic validation
#' validateXSD(extractMetadataContent("pdfdoc.pdf", "breakfast_menu"))

validateXSD <- function(xml) {
  require(xml2)

  temp <- tempfile()

  download.file("http://grise.upm.es/dataframe.xsd", temp)

  schema <- read_xml(temp)

  xml_validate(xml, schema)
}
