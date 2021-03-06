% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/heights.R
\docType{data}
\name{heights}
\alias{heights}
\title{Serial heights measured in 12 girls}
\format{A data frame with 124 observations on the following 4 variables:
\describe{
\item{id}{factor of subject ids (levels 1:12).}
\item{age}{vector of ages (years).}
\item{height}{vector of heights (cm).}
\item{men}{vector of ages at menarche (years), where negative values
are right censored.} }}
\usage{
heights
}
\description{
Heights of 12 girls from the Chard Growth Study measured twice a year
between 8 and 16 years of age.
}
\examples{
  require(graphics)
  data(heights)
  coplot(height ~ age | id, data = heights, panel=panel.smooth,
    show.given=FALSE, xlab='age (years)', ylab='height (cm)', pch=19)
}
\keyword{datasets}
