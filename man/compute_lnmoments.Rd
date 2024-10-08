% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{compute_lnmoments}
\alias{compute_lnmoments}
\title{Compute moments of the log-normal distribution}
\usage{
compute_lnmoments(mu, variance, power = 1)
}
\arguments{
\item{mu}{The mean (linear predictor) on the log scale.}

\item{variance}{The variance (random effect variance) on the log scale.}

\item{power}{The power for higher-order moments (e.g., for Tweedie models).}
}
\value{
A list containing the first moment (\code{Ex}), the second moment
(\code{Ex2}), and, if applicable, the power-th moment (\code{Ex_p}).
}
\description{
This function computes the moments (e.g., first, second, power-th moments)
of a log-normal distribution
based on the mean (\code{mu}) and variance (\code{sigma^2}) of the corresponding
normal distribution.
}
