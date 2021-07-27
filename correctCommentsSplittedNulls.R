correctCommentsSplittedNulls <- function(CommentsSplitted) {
  CommentsSplitted %>% 
    mutate(Grade = ifelse(Grade == "" | is.na(Grade), NA, Grade),
           Course = ifelse(Course == "" | is.na(Course), NA, Course),
           Address = ifelse(Address == "" | is.na(Address), NA, Address),
           Phone = ifelse(Phone == "" | is.na(Phone), NA, Phone),
           Mobile = ifelse(Mobile == "" | is.na(Mobile), NA, Mobile),
           MaritalStat = ifelse(MaritalStat == "" | is.na(MaritalStat), NA, MaritalStat),
           Gender = ifelse(Gender == "" | is.na(Gender), NA, Gender)) %>% 
    return()
}