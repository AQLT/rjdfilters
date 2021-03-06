% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_properties_function.R
\name{diagnostic_matrix}
\alias{diagnostic_matrix}
\title{Compute quality criteria for asymmetric filters}
\usage{
diagnostic_matrix(x, lags, passband = pi/6, sweights, ...)
}
\arguments{
\item{x}{Weights of the asymmetric filter (from -lags to m).}

\item{lags}{Lags of the filter (should be positive).}

\item{passband}{passband threshold.}

\item{sweights}{Weights of the symmetric filter (from 0 to lags or -lags to lags).
If missing, the criteria from the functions \code{\link{mse}} are not computed.}

\item{...}{optional arguments to \code{\link{mse}}.}
}
\description{
Function du compute a diagnostic matrix of quality criteria for asymmetric filters
}
\details{
For a moving average of coefficients \eqn{\theta=(\theta_i)_{-p\le i\le q}}
\code{diagnostic_matrix} returns a \code{list} with the following ten criteria:
\itemize{
\item{\code{b_c} } Constant bias (if \eqn{b_c=0}, \eqn{\theta} preserve constant trends)
\deqn{\sum_{i=-p}^q\theta_i - 1}
\item{\code{b_l} } Linear bias  (if \eqn{b_c=b_l=0}, \eqn{\theta} preserve constant trends)
\deqn{\sum_{i=-p}^q i \theta_i}
\item{\code{b_q} } Quadratic bias  (if \eqn{b_c=b_l=b_q=0}, \eqn{\theta} preserve quadratic trends)
\deqn{\sum_{i=-p}^q i^2 \theta_i}
\item{\code{F_g} } Fidelity criterium of Grun-Rehomme et al (2018)
\deqn{}
\item{\code{S_g} } Smoothness criterium of Grun-Rehomme et al (2018)
\item{\code{T_g} } Timeliness criterium of Grun-Rehomme et al (2018)
\item{\code{A_w} } Accuracy criterium of Wildi and McElroy (2019)
\item{\code{S_w} } Smoothness criterium of Wildi and McElroy (2019)
\item{\code{T_w} } Timeliness criterium of Wildi and McElroy (2019)
\item{\code{R_w} } Residual criterium of Wildi and McElroy (2019)
}
}
\references{
Grun-Rehomme, Michel, Fabien Guggemos, and Dominique Ladiray (2018). “Asymmetric Moving Averages Minimizing Phase Shift”. In: Handbook on Seasonal Adjustment.

Wildi, Marc and McElroy, Tucker (2019). “The trilemma between accuracy, timeliness and smoothness in real-time signal extraction”. In: International Journal of Forecasting 35.3, pp. 1072–1084.
}
