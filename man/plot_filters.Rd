% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{plot_filters}
\alias{plot_filters}
\alias{plot_coef}
\alias{plot_coef.lp_filter}
\alias{plot_coef.rkhs_filter}
\alias{plot_coef.fst_filter}
\alias{plot_gain}
\alias{plot_gain.lp_filter}
\alias{plot_gain.rkhs_filter}
\alias{plot_gain.fst_filter}
\alias{plot_phase}
\alias{plot_phase.lp_filter}
\alias{plot_phase.rkhs_filter}
\alias{plot_phase.fst_filter}
\title{Plots filters properties}
\usage{
plot_coef(x, nxlab = 7, add = FALSE, zeroAsNa = FALSE, ...)

\method{plot_coef}{lp_filter}(
  x,
  nxlab = 7,
  add = FALSE,
  zeroAsNa = FALSE,
  q = 0,
  legend = FALSE,
  legend.pos = "topright",
  ...
)

\method{plot_coef}{rkhs_filter}(
  x,
  nxlab = 7,
  add = FALSE,
  zeroAsNa = FALSE,
  q = 0,
  legend = FALSE,
  legend.pos = "topright",
  ...
)

\method{plot_coef}{fst_filter}(x, nxlab = 7, add = FALSE, zeroAsNa = FALSE, ...)

plot_gain(x, nxlab = 7, add = FALSE, xlim = c(0, pi), ...)

\method{plot_gain}{lp_filter}(
  x,
  nxlab = 7,
  add = FALSE,
  xlim = c(0, pi),
  q = 0,
  legend = FALSE,
  legend.pos = "topright",
  ...
)

\method{plot_gain}{rkhs_filter}(
  x,
  nxlab = 7,
  add = FALSE,
  xlim = c(0, pi),
  q = 0,
  legend = FALSE,
  legend.pos = "topright",
  ...
)

\method{plot_gain}{fst_filter}(x, nxlab = 7, add = FALSE, xlim = c(0, pi), ...)

plot_phase(x, nxlab = 7, add = FALSE, xlim = c(0, pi), normalized = FALSE, ...)

\method{plot_phase}{lp_filter}(
  x,
  nxlab = 7,
  add = FALSE,
  xlim = c(0, pi),
  normalized = FALSE,
  q = 0,
  legend = FALSE,
  legend.pos = "topright",
  ...
)

\method{plot_phase}{rkhs_filter}(
  x,
  nxlab = 7,
  add = FALSE,
  xlim = c(0, pi),
  normalized = FALSE,
  q = 0,
  legend = FALSE,
  legend.pos = "topright",
  ...
)

\method{plot_phase}{fst_filter}(x, nxlab = 7, add = FALSE, xlim = c(0, pi), normalized = FALSE, ...)
}
\arguments{
\item{x}{coefficients, gain or phase}

\item{nxlab}{number of xlab}

\item{add}{boolean indicating if the new plot is added to the previous one.}

\item{zeroAsNa}{boolean indicating if the trailing zero of the coefficients should be plotted (\code{FALSE}) or removed (\code{TRUE}).}

\item{...}{other arguments to \code{matplot}}

\item{q}{q}

\item{legend}{boolean indicating if the legend is printed.}

\item{legend.pos}{position of the legend.}

\item{xlim}{vector containing x limits.}

\item{normalized}{boolean indicatif if the phase function is normalized by the frequency.}
}
\description{
Functions to plot the coefficients, the gain and the phase functions.
}
\examples{
filter <- lp_filter(6, endpoints = "DAF", kernel = "Henderson")
plot_coef(filter, q = c(0,3), legend = TRUE)
plot_gain(filter, q = c(0,3), legend = TRUE)
plot_phase(filter, q = c(0,3), legend = TRUE)
}
