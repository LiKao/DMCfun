% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dmcFit.R
\name{dmcFitSubjectDE}
\alias{dmcFitSubjectDE}
\title{dmcFitSubjectDE: Fit DMC to aggregated data using R-package DEoptim.}
\usage{
dmcFitSubjectDE(
  resOb,
  nTrl = 1e+05,
  minVals = list(),
  maxVals = list(),
  fixedFit = list(),
  nCAF = 5,
  nDelta = 19,
  pDelta = vector(),
  subjects = c(),
  control = list()
)
}
\arguments{
\item{resOb}{Observed data (see flankerData, simonData for data format)}

\item{nTrl}{Number of trials to use within dmcSim}

\item{minVals}{Minimum values for the to-be estimated parameters}

\item{maxVals}{Maximum values for the to-be estimated parameters}

\item{fixedFit}{Fix parameter to starting value}

\item{nCAF}{Number of CAF bins.}

\item{nDelta}{Number of delta bins.}

\item{pDelta}{Alternative to nDelta by directly specifying required percentile values}

\item{subjects}{NULL (aggregated data across all subjects) or integer for subject number}

\item{control}{Additional control parameters passes to DEoptim}
}
\value{
dmcfit_subject List of dmcfit per subject fitted (see dmcFitDM)
}
\description{
Fit theoretical data generated from dmcSim to observed data by
minimizing the root-mean-square error (RMSE) between a weighted combination
of the CAF and CDF functions.
}
\examples{
\donttest{
# Example 1: Flanker data from Ulrich et al. (2015)
fit <- dmcFitSubjectDE(flankerData, nTrl = 1000, subjects = c(1, 2))
plot(fit, flankerData, subject = 1)
plot(fit, flankerData, subject = 2)
summary(fit)

# Example 2: Simon data from Ulrich et al. (2015)
fit <- dmcFitSubjectDE(simonData, nTrl = 1000, subject = c(1, 2))
plot(fit, simonData, subject = 1)
plot(fit, simonData, subject = 2)
summary(fit)
}

}
