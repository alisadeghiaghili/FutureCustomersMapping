createFutureConnection <- function(user, pass) {
  odbcConnect(dsn = "DWFutureDM", uid = user, pwd = pass, DBMSencoding = '1256') %>% 
    return()
}