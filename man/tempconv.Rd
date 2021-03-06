% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/land8tools.R
\name{tempconv}
\alias{tempconv}
\title{Conversion to At Satellite Brightness Temperature}
\usage{
tempconv(x, Ml, Al, K1, K2)
}
\arguments{
\item{x}{Image to be converted, in matrix, data frame, or SpatialGridDataFrame format.}

\item{Ml}{band specific multiplicative rescaling factor from the metadata (MTL file) (RADIANCE_MULT_BAND_x, where x is the band number).}

\item{Al}{Mp band specific additive rescaling factor from the metadata (MTL file) (RADIANCE_ADD_BAND_x, where x is the band number).}

\item{K1}{band specific thermal conversion constant from the metadata (MTL file) (K1_CONSTANT_BAND_x, where x is the band number, 10 or 11).}

\item{K2}{band specific thermal conversion constant from the metadata (MTL file) (K2_CONSTANT_BAND_x, where x is the band number, 10 or 11).}
}
\value{
At satellite brightness temperature in Kelvin (K).
}
\description{
Conversion to At satellite brightness temperature of satellite data.
}
\examples{
data(band11)
band11.dn<- as(band11, 'SpatialGridDataFrame')
band11.tempK<-tempconv(band11.dn,3.3420E-04,0.10000, 480.89, 1201.14)
}
\author{
Alexandre dos Santos
}
\references{
U.S. Geological Survey. 2015.
            Landsat 8 (L8) data users handbook. Version 1.0. 97p.
}

