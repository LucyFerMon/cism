% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_time_at_risk.R
\name{create_time_at_risk}
\alias{create_time_at_risk}
\title{Create time at risk}
\usage{
create_time_at_risk(residency, individual, location)
}
\arguments{
\item{residency}{A residency table of identical format to the \code{residency} table in the \code{openhds} database}

\item{individual}{A individual table of identical format to the \code{individual} table in the \code{openhds} database}

\item{location}{A location table of identical format to the \code{location} table in the \code{openhds} database}
}
\value{
A \code{data.frame} with one row for each person's 
uninterrupted period of residency
}
\description{
Using census migration data, create a dataframe of "time at risk", ie the 
time during which someone lived in Manhiça.
}
\examples{
residency <- get_data(tab = 'residency', dbname = 'openhds')
individual <- get_data(tab = 'individual', dbname = 'openhds')
location <- get_data(tab = 'location', dbname = 'openhds')
time_at_risk <- create_time_at_risk(residency = residency, individual = individual, location = location)
}

