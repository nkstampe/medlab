# Load sequence ------------------------------------------------------------------------------
### Clean global envroment
clean_global <- function(){
  rm(list=ls()) + cat("\014")                                     # Removes all variables
  if(!is.null(dev.list())){dev.off(dev.list()["RStudioGD"])}      # Clean plots
}

### Load libraries
landscape_setup <- function(load.libraries){
  install.lib <- load.libraries[!load.libraries %in% installed.packages()]
  for(libs in install.lib) install.packages(libs, dependencies = TRUE)
  sapply(load.libraries, require, character = TRUE)
  rm(load.libraries, install.lib, libs)
}
