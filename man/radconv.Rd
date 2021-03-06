% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/land8tools.R
\name{radconv}
\alias{radconv}
\title{Conversion to TOA Radiance}
\usage{
radconv(x, Ml, Al)
}
\arguments{
\item{x}{Image to be converted, in matrix, data frame, or SpatialGridDataFrame format.}

\item{Ml}{band specific multiplicative rescaling factor from the metadata (MTL file) (RADIANCE_MULT_BAND_x, where x is the band number).}

\item{Al}{Mp band specific additive rescaling factor from the metadata (MTL file) (RADIANCE_ADD_BAND_x, where x is the band number).}
}
\value{
TOA spectral radiance (Watts/(m2*srad*micro-m)).
}
\description{
Conversion to TOA radiance of satellite data.
}
\examples{
data(band5)
band5.dn<- as(band5, 'SpatialGridDataFrame')
band5.rad<-radconv(band5.dn,5.9150E-03,-29.57525)
}
\author{
Alexandre dos Santos
}
\references{
U.S. Geological Survey. 2015.
            Landsat 8 (L8) data users handbook. Version 1.0. 97p.
}

