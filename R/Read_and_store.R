Read_and_store <- function(pathname_of_file , file_type){
  library(readxl)
  library(tidyverse)
  if (file_type == ".xlsx"){ onderzoek_data_portfolie_1 <- read_xlsx(pathname_of_file)
  } else if (fille_type == ".csv"){onderzoek_data_portfolie_1 <- read_csv(pathname_of_file)
  } else if (fille_type == ".csv2"){onderzoek_data_portfolie_1 <- read_csv2(pathname_of_file)
  } else {return("file type is not recognized please check if the file type has been typed correct")}

  onderzoek_data_portfolie_1
}
