% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/01-idata_metadata.r
\name{get_dimension_names}
\alias{get_dimension_names}
\title{Get dimension names from a DSD or IMF dataflow string}
\usage{
get_dimension_names(dataset_or_db)
}
\arguments{
\item{dataset_or_db}{Character(1). Either an IMF dataset identifier
(e.g. "DSD_BOP_SI") or a dataflow string (e.g. "IMF.STA:CPI").}
}
\value{
A data.frame with a single column \code{Dimension} listing dimension names.
}
\description{
Get dimension names from a DSD or IMF dataflow string
}
