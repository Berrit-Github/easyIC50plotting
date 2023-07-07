## code to prepare `C_Elegans_raw_data` dataset goes here

usethis::use_data(C_Elegans_raw_data, overwrite = TRUE)

C_Elegans_raw_data <- data.frame(vialcode = c("A1", "A2" ,"B1", "B2" ,"C1" ,"C2" ,"D1", "D2"), name_comp = c("ethanol"  ,   "ethanol"   ,  "sodium" ,     "sodium"  ,    "penicilline", "penicilline" ,"soap" ,       "soap" ),
                                 comptype = c("neg_con"    ,"neg_con" ,   "vehichal"  , "vehical" ,   "pos_con"   , "pos_con"   , "experiment" ,"experiment"),
                                 comp_concentration = c(100 ,100  ,50 , 50  ,10 , 10,  10,  10),
                                 unit = c( "nM" ,"nM" ,"nM", "nM", "nM" ,"nM" ,"nM", "nM"),
                                 offspring = c(20, 25, 20, 19,  3 , 2 , 7 , 9),
                                 responsiveness = c("active" , "äctive" , "active", "active", "slow", "no respons" , "slow", "slow")
)
