% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extractAttachmentContent.R
\name{extractAttachmentContent}
\alias{extractAttachmentContent}
\title{Extract the content of a PDF document attachment}
\usage{
extractAttachmentContent(filename)
}
\arguments{
\item{filename}{The name of the PDF file}
}
\value{
The XML data read
}
\description{
Extract the content of a PDF document attachment
}
\examples{
# Basic extraction from a file
extractAttachmentContent("pdfdocwithattach.pdf")
}
