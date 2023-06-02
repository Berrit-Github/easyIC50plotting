Plot_avg_negative <- function(file , col_neg  , name_neg, RawData, conc, colour){
  library(ggplot2)
  library(rlang)

  file["RawData"] <- file["RawData"]/colMeans(filter(file, {{col_neg}} == name_neg)["RawData"] , na.rm =TRUE)


  ggplot(file, aes(x = log10({{conc}}) , y = {{RawData}} , colour = {{colour}} , shape = {{col_neg}} )) + geom_jitter(width = 0.1) + labs(x = "component concentration on log10 scale (nM)" , y = "number of offspring" ) + xlim(-4.5 , 2)
}
