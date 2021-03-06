% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jasym_filter.R
\name{jfilter}
\alias{jfilter}
\title{Linear Filtering on a Time Series}
\usage{
jfilter(y, coefs)
}
\arguments{
\item{y}{a univariate or multivariate time series.}

\item{coefs}{a \code{matrix} or a \code{list} that contains all the coefficients of the asymmetric and symmetric filters.
(from the shortest to the symmetric filter). See details.}
}
\description{
Applies linear filtering to a univariate time series or to each series separately of a multivariate time series using a
symmetric moving average at the center and an asymmetric moving average at the bounds.
}
\details{
The functions \code{jfilter} extends \code{\link[stats]{filter}} allowing to set multiple moving averages
to deal with the boundaries.

At the center, the symmetric moving average is used (last column/element of \code{coefs}).
At the boundaries, the first moving average of \code{coefs} is used for computing the filtered
time series \eqn{y[n]} (no future point known), the second for computes the filtered
time series \eqn{y[n-1]} (one future point known)...
}
\examples{
y <- retailsa$AllOtherGenMerchandiseStores

lpp_ma <- lp_filter(horizon = 6)$filters.coef
trend <- jfilter(y, lpp_ma)
# This is equivalent to:
trend <- localpolynomials(y, horizon = 6)
}
\seealso{
\code{\link{jasym_filter}}
}
