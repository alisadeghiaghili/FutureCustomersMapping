closeFutureConnection <- function(FutureConnection) {
  odbcClose(channel = FutureConnection)
}