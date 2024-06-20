## This code is copied from https://rdrr.io/cran/MortalitySmooth/src/inst/doc/examples.R

library(MortalitySmooth)

years <- 1950:2006
death <- selectHMDdata("Japan", "Deaths", "Females",
                       ages = 80, years = years)
exposure <- selectHMDdata("Japan", "Exposures", "Females",
                          ages = 80, years = years)
fitBIC <- Mort1Dsmooth(x=years, y=death,
                          offset=log(exposure))