createSadeghiConnection <- function(user, pass) {
  odbcConnect(dsn = "DWSadeghiTest", uid = user, pwd = pass, DBMSencoding = '1256') %>% 
    return()
}