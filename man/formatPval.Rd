% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formatPval.R
\name{formatPval}
\alias{formatPval}
\title{Format p-Values}
\usage{
formatPval(x, break.eps = 1e-04, break.middle = 0.01, na.form = "NA", ...)
}
\arguments{
\item{x}{Numeric vector of p-values.}

\item{break.eps}{Numeric vector of length 1.}

\item{break.middle}{Numeric vector of length 1.}

\item{na.form}{Character representation of \code{NA}s.}

\item{...}{Additional arguments passed to \code{\link{format}}.}
}
\value{
A vector of \code{length(x)} with formatted p-values.
}
\description{
Formats p-values according to:
\itemize{
\item p-values \code{< break.eps} are written as \code{"< break.eps"}.
\item p-values \code{>= break.eps} but \code{< break.middle} have 1 digit.
\item p-values \code{>= break.middle} have 2 digits.
}
}
\examples{

x <- c(1e-8, 0.00568, 0.0345, 0.885)
biostatUZH::formatPval(x)  # "< 0.0001" "0.006" "0.035" "0.89"

## compare to formatting of other packages
if (requireNamespace("reporttools")) {
    reporttools::formatPval(x) # "< 0.0001" "0.0057" "0.03" "0.88"
}
if (requireNamespace("Hmisc")) {
    Hmisc::format.pval(x)  # "0" "0.00568" "0.03450" "0.88500"
}
if (requireNamespace("surveillance")) {
    surveillance::formatPval(x)  # "<0.0001" "0.0057" "0.035" "0.89"
}

## adapt break.middle
biostatUZH::formatPval(x, break.middle = 0.001)

}
\seealso{
the \pkg{base} function \code{\link{format.pval}},
\code{\link[Hmisc]{format.pval}} in package \pkg{Hmisc},
\code{\link[reporttools]{formatPval}} in package \pkg{reporttools},
\code{\link[surveillance]{formatPval}} in package \pkg{surveillance}
}
\author{
Sina Rueeger and Sebastian Meyer
}
