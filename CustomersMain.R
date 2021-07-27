setwd("E:\\Customers")

Sys.setlocale(category = "LC_ALL", locale = "Persian")

source("LoadLibs.R")
source("LoadFuncs.R")
source("SystemConfigs.R")


SadeghiConnection <- createSadeghiConnection(user = user, pass = pass)

AllCustomersList <- loadData()


CouldJoinByNationalID <- semi_join(x = AllCustomersList$FDCustomers, y = AllCustomersList$Customers, by = c("NationalID" = "NationalCode"), na_matches = "never") %>% 
  pull(NationalID)