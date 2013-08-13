# This file is part of the rustfare program (https://github.com/muuankarski/karskitools)

# Copyright (C) 2012-2013 Markus Kainu <markuskainu@gmail.com>. All rights reserved.

# This program is open source software; you can redistribute it and/or modify
# it under the terms of the FreeBSD License (keep this notice):
# http://en.wikipedia.org/wiki/BSD_licenses

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

#' Convert R Markdown file into .html format
#'
#' @param filename R Markdown file without filename extension .Rmd
#' @param ending Options for resulting document
#' \itemize{
#'   \item \code{toc} for table of content
#'   \item \code{nr} for numbered sections
#'   \item \code{tocnr} for both table of content and 
#'   numbered sections
#' }
#'
#' @return A html-format document
#' 
#' @export
#' @examples # see http://markuskainu.fi/karskitools
#' @author Markus Kainu <markuskainu(at)gmail.com> 




knitpandoc <- function(filename,ending="empty") {
  library(knitr)
  library(markdown)
  
  fileRmd <- paste(filename,".Rmd", sep="")
  knitr::knit2html(fileRmd)
  
  filemd <- paste(filename,".md", sep="")
  filehtml <- paste(filename,".html", sep="")
  filedocx <- paste(filename,".docx", sep="")
  fileodt <- paste(filename,".odt", sep="")
  
  if (ending == "tocnr") {
    pandoccommand_html <- paste("pandoc ","-s ",filemd," -o ",filehtml," --toc"," --number-sections",sep="")
  } 
  if (ending == "toc") {
    pandoccommand_html <- paste("pandoc ","-s ",filemd," -o ",filehtml," --toc",sep="")
  } 
  if (ending == "nr") {
    pandoccommand_html <- paste("pandoc ","-s ",filemd," -o ",filehtml," --number-sections",sep="")
  } 
  if (ending == "empty"){
    pandoccommand_html <- paste("pandoc ","-s ",filemd," -o ",filehtml,sep="")
  }
  
  system(pandoccommand_html)
  
}