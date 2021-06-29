#' Transpose a dataframe and name the columns
#'
#' @param dataframe The dataframe to be transposed
#' @param colnames A vector with the column names (it has to be the equal to the number of the dataframe columns)
#'
#' @return A transposed dataframe built with the parameters
#' @export
#'
#' @examples
#' Basic transposition of a dataframe
#' cols <- c("Sales", "Development", "Human resources")
#' transposeDataFrame(convertToDataFrame(extractAttachmentContent("pdfdocwithattach.pdf"))), cols)

transposeDataFrame <- function(dataframe, colnames) {
  require(data.table)

  if(missing(colnames)) {
    df <- transpose(dataframe)
  }else{
    df <- transpose(dataframe)
    colnames(df) <- colnames
  }

  return(df)
}
