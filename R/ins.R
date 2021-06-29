#' Document, build and install a package
#'
#' @return Nothing
#' @export
#'
#' @examples
#' Basic execution
#' ins()
ins <- function(){
  devtools::document()
  devtools::build()
  devtools::install()
}
