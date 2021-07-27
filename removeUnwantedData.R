removeUnwantedData <- function(...) {
  rm(list = c(...), envir = .GlobalEnv)
}