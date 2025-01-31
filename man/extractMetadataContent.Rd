% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extractMetadataContent.R
\name{extractMetadataContent}
\alias{extractMetadataContent}
\title{Extract the content of a XML element from the PDF document XMP}
\usage{
extractMetadataContent(filename, tag)
}
\arguments{
\item{filename}{The name of the PDF file}

\item{tag}{The element's name where the data is stored}
}
\value{
The XML data read
}
\description{
Extract the content of a XML element from the PDF document XMP
}
\examples{
# Basic extraction from a file
extractMetadataContent("pdfdoc.pdf", "breakfast_menu")
}
