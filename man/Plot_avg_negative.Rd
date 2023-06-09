% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Plot_avg_negative.R
\name{Plot_avg_negative}
\alias{Plot_avg_negative}
\title{Plot the IC50 data with the negative control as avarege}
\usage{
Plot_avg_negative(file, col_neg, name_neg, RawData, conc, colour)
}
\arguments{
\item{file}{name of file / or path to file to be changed}

\item{col_neg}{the column name with the negative control}

\item{name_neg}{the specific name of the negative control inside the column}

\item{RawData}{column name with rawdata to be plot on the y-axis}

\item{conc}{column name with the concentration of the samples to plot on the x-axis}

\item{colour}{column of the sample groups to be specified}
}
\value{
A plot with the newly calculated data
}
\description{
Plot the IC50 data with the negative control as avarege
}
\examples{
\dontrun{Plot_avg_negative(data_2, expType, "controlNegative", RawData, comp, compName)}
}
