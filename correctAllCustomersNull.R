correctAllCustomersNull <- function(Customers) {
  Customers %>% 
      mutate(Address = ifelse(Address == "" | is.na(Address), NA, Address),
           PublicCode = ifelse(PublicCode == "" | is.na(PublicCode), NA, PublicCode),
           NationalCode = ifelse(NationalCode == "" | is.na(NationalCode), NA, NationalCode),
           CustomerName = ifelse(CustomerName == "" | is.na(CustomerName), NA, CustomerName),
           CustomerTypeDes = ifelse(CustomerTypeDes == "" | is.na(CustomerTypeDes), NA, CustomerTypeDes),
           IsActive = ifelse(IsActive == "" | is.na(IsActive), NA, IsActive),
           CustomerType = ifelse(CustomerType == "" | is.na(CustomerType), NA, CustomerType),
           OldCustomerID = ifelse(OldCustomerID == "" | is.na(OldCustomerID), NA, OldCustomerID),
           EconomyActivityCode = ifelse(EconomyActivityCode == "" | is.na(EconomyActivityCode), NA, EconomyActivityCode),
           PostalCode = ifelse(PostalCode == "" | is.na(PostalCode), NA, PostalCode),
           CityName = ifelse(CityName == "" | is.na(CityName), NA, CityName),
           StateName = ifelse(StateName == "" | is.na(StateName), NA, StateName),
           RegisterNumber = ifelse(RegisterNumber == "" | is.na(RegisterNumber), NA, RegisterNumber),
           MiddleName = ifelse(MiddleName == "" | is.na(MiddleName), NA, MiddleName),
           RegisterCityName = ifelse(RegisterCityName == "" | is.na(RegisterCityName), NA, RegisterCityName)) %>% 
    return()
}