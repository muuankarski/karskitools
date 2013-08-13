\name{knitpandoc}
\alias{knitpandoc}
\title{Convert R Markdown file into .html format}
\usage{
  knitpandoc(filename, ending = "empty")
}
\arguments{
  \item{filename}{R Markdown file without filename
  extension .Rmd}

  \item{ending}{Options for resulting document \itemize{
  \item \code{toc} for table of content \item \code{nr} for
  numbered sections \item \code{tocnr} for both table of
  content and numbered sections }}
}
\value{
  A html-format document
}
\description{
  Convert R Markdown file into .html format
}
\examples{
# see http://markuskainu.fi/karskitools
}
\author{
  Markus Kainu <markuskainu(at)gmail.com>
}

