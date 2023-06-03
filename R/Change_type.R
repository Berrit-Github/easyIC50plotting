#' change column data type
#'
#' @param file the file / path to file, that needs to be changed
#' @param file_col_1  the name of the column to change
#' @param type_1  the type of data it should be changed to ("dbl" , "factor" , "character")
#' @param file_col_2 the name of the column to change
#' @param type_2 the type of data it should be changed to ("dbl" , "factor" , "character")
#' @param file_col_3 the name of the column to change
#' @param type_3 the type of data it should be changed to ("dbl" , "factor" , "character")
#'
#' @return the new data file with the correct data types
#' @export
#'
#' @examples
#' \dontrun{data_2 <- Change_type(data, "comp", "dbl", "RawData", "dbl", "compName", "factor")}

Change_type <- function(file, file_col_1 , type_1 , file_col_2 , type_2 , file_col_3 , type_3 ){

  file <- as.data.frame.data.frame(file, row.names = NULL, optional = FALSE)
  if (type_1 == "dbl"){file[[file_col_1]] <-  as.numeric(gsub(",", "." ,file[[file_col_1]] ) ,  na.rm = TRUE)
  } else if (type_1 == "factor") {file[[file_col_1]] <- as.factor((file[[file_col_1]]) )
  } else if (type_1 == "character") {file[[file_col_1]] <- as.character((file[[file_col_1]]) )
  } else {return("data is already correct type")}

  if (type_2 == "dbl"){file[[file_col_2]] <-  as.numeric(gsub(",", "." ,file[[file_col_2]] ),   na.rm = TRUE)
  } else if (type_2 == "factor") {file[[file_col_2]] <- as.factor((file[[file_col_2]]) )
  } else if (type_2 == "character") {file[[file_col_2]] <- as.character((file[[file_col_2]]) )
  } else {return("data is already correct type")}


  if (type_3 == "dbl"){file[[file_col_3]] <-  as.numeric( gsub(",", "." ,file[[file_col_3]] ) , na.rm = TRUE)
  } else if (type_3 == "factor") {file[[file_col_3]] <- as.factor((file[[file_col_3]]) )
  } else if (type_3 == "character") {file[[file_col_3]] <- as.character((file[[file_col_3]]))
  } else {return("data is already correct type")}
  return(file)
}
