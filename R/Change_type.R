Change_type <- function(file , file_col_1 , type_1 , file_col_2 , type_2 , file_col_3 , type_3 ) {
  file <- as.data.frame(file)
  if (type_1 == "dbl"){file[[file_col_1]] <-  gsub(",", "." ,file[[file_col_1]] ) %>%  as.numeric( na.rm = TRUE)
  } else if (type_1 == "factor") {file[[file_col_1]] <- (file[[file_col_1]]) %>% as.factor()
  } else if (type_1 == "character") {file[[file_col_1]] <- (file[[file_col_1]]) %>% as.character()
  } else {return(NO)}

  if (type_2 == "dbl"){file[[file_col_2]] <-  gsub(",", "." ,file[[file_col_2]] ) %>%  as.numeric( na.rm = TRUE)
  } else if (type_2 == "factor") {file[[file_col_2]] <- (file[[file_col_2]]) %>% as.factor()
  } else if (type_2 == "character") {file[[file_col_2]] <- (file[[file_col_2]]) %>% as.character()
  } else {return(NO)}


  if (type_3 == "dbl"){file[[file_col_3]] <-  gsub(",", "." ,file[[file_col_3]] ) %>%  as.numeric( na.rm = TRUE)
  } else if (type_3 == "factor") {file[[file_col_3]] <- (file[[file_col_3]]) %>% as.factor()
  } else if (type_3 == "character") {file[[file_col_3]] <- (file[[file_col_3]]) %>% as.character()
  } else {return(NO)}
  return(file)
}
