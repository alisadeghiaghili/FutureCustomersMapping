loadDataAllCustomersData <- function() {
  
  source("Queries.R")
  source("ConnectionConfig.R")
  source("createFutureConnection.R")
  source("correctFDCustomerNulls.R")
  source("splitCommentsColumn.R")
  source("renameCols.R")
  source("correctCommentsSplittedNulls.R")
  source("correctAllCustomersNull.R")
  source("closeFutureConnection.R")
  
  FuterConnection <- createFutureConnection(user = user, pass = pass)
  FDCustomers <- sqlQuery(channel = FuterConnection, query = FutureDimCustomersQuery) %>% 
    correctFDCustomerNulls()
  
  CommentsSplitted <- splitCommentsColumn(FDCustomers) %>% 
    renameCols() %>% 
    data.frame() %>% 
    correctCommentsSplittedNulls()
  
  FDCustomers <- cbind(FDCustomers, CommentsSplitted)
  
  LegalCustomers <- sqlQuery(channel = FuterConnection, query = CustomersManagementLegalCustomersQuery) %>% 
    mutate(Table = "VI_Legal") %>% 
    rename(Address = ADDRESS)
  
  NaturalCustomers <- sqlQuery(channel = FuterConnection, query = CustomersManagementNaturalCustomersQuery) %>% 
    mutate(Table = "VI_Natural")
  
  PublicCustomers <- sqlQuery(channel = FuterConnection, query = CustomersManagementPublicCustomersQuery) %>% 
    mutate(Table = "VI_Public")
  
  customers <- rbind(LegalCustomers, NaturalCustomers, PublicCustomers) %>% 
    correctAllCustomersNull()   
  
  closeFutureConnection(FutureConnection = FuterConnection)
  
  return(list(FDCustomers = FDCustomers, 
              customers = customers))
}