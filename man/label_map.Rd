% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/label_map.R
\name{label_map}
\alias{label_map}
\title{Extract labels from a dataset and place them into a data frame.}
\usage{
label_map(dta)
}
\arguments{
\item{dta}{A data frame. The label attributes, if they exist, will be extracted into a data frame.}
}
\value{
A data frame with 2 columns, the variable name and its label, if it exists.
 Missing labels are filled with the variable name.
}
\description{
Extract labels from a dataset and place them into a data frame.
}
