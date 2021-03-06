% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sitarlib.R
\name{xaxsd}
\alias{xaxsd}
\alias{yaxsd}
\title{Par args xaxs and yaxs option d}
\usage{
xaxsd(usr = par()$usr[1:2])

yaxsd(usr = par()$usr[3:4])
}
\arguments{
\item{usr}{a length-2 vector defining the length of the x-axis or y-axis.}
}
\value{
By default returns xlim/ylim args to match current setting of
par()$usr, i.e. previous plot scales.  Specifying \code{usr} gives scales
with the usr args at the extremes. If par('xlog') or par('ylog') are set the
returned limits are antilogged (to base 10).
}
\description{
Implements par('xaxs') and par('yaxs') option 'd'.
}
\details{
Implements par('xaxs') and par('yaxs') option 'd', i.e. uses previous axis
scales in a new plot.
}
\examples{

## generate and plot 100 data points
x <- rnorm(100)
y <- rnorm(100)
plot(x, y, pch=19)

## generate and plot 10 more
## constraining axis scales to be as before
x <- rnorm(10)
y <- rnorm(10)
plot(x, y, pch=19, xlim=xaxsd(), ylim=yaxsd())

## force axis extremes to be -3 and 3
plot(x, y, pch=19, xlim=xaxsd(c(-3,3)), ylim=yaxsd(c(-3,3)))

}
\author{
Tim Cole \email{tim.cole@ucl.ac.uk}
}
