#' Convert a XML into a dataframe and name the columns
#'
#' @param data The XML data read
#' @param colnames A vector with the column names (it has to be the equal to the number of the dataframe columns)
#'
#' @return A dataframe built with the parameters
#' @export
#'
#' @examples
#' Basic conversion to a dataframe
#' cols <- c("Sales", "Development", "Human resources")
#' convertToDataFrame(extractAttachmentContent("pdfdocwithattach.pdf")), cols)

convertToDataFrame <- function(data, colnames) {
  require(XML)

  parsed <- xmlParse(data)

  if(missing(colnames)) {
    df <- xmlToDataFrame(parsed)
  }else{
    df <- xmlToDataFrame(parsed)
    colnames(df) <- colnames
  }

  return(df)
}
