% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{get_x}
\alias{get_x}
\title{Extract Predictors (X)}
\usage{
get_x(object)
}
\arguments{
\item{object}{A glmmDataMatrix or batchglmmDataMatrix object.}
}
\value{
A matrix of predictor variables or NULL if no predictors are present.
}
\description{
This function extracts the predictor variables from a glmmDataMatrix or batchglmmDataMatrix object.
If no predictors are found, the function returns NULL.
}
