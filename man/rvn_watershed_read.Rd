% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rvn_watershed_read.R
\name{rvn_watershed_read}
\alias{rvn_watershed_read}
\title{Read in Raven WatershedStorage file}
\usage{
rvn_watershed_read(ff = NA, tzone = NULL)
}
\arguments{
\item{ff}{full file path to the WatershedStorage.csv file}

\item{tzone}{string indicating the timezone of the data in ff}
}
\value{
\item{watershed_storage}{data frame from the file with standardized
names} \item{units}{vector corresponding to units of each column}
}
\description{
rvn_watershed_read is used to read in the WatershedStorage.csv file produced by
Raven.
}
\details{
This function expects a full file path to the WatershedStorage.csv file,
then reads in the file using read.csv. The main advantage of this functon is
renaming the columns to nicer names and extracting the units into something
much easier to read.

This function is also built to support the wshd.animate function, which uses
the object created here for creating an animation of the watershed storage
containers.

ff is the full file path of the WatershedStorage.csv file. If the file is
located in the current working directory, then simply the name of the file
is sufficient.
}
\examples{

# locate in RavenR Watershed storage file
ff <- system.file("extdata","run1_WatershedStorage.csv", package="RavenR")

# create full file path and read in file
mywshd <- rvn_watershed_read(ff)

# check data
head(mywshd$watershed_storage)

}
\seealso{
\code{\link{rvn_hyd_read}} for reading in the Hydrographs.csv file
\code{\link{rvn_watershedmeb_read}} for reading in the
WatershedMassEnergyBalance.csv file
}
