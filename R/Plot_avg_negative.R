#' Plot the IC50 data with the negative control as avarege
#'
#' @param file name of file / or path to file to be changed
#' @param col_neg the column name with the negative control
#' @param name_neg the specific name of the negative control inside the column
#' @param RawData column name with rawdata to be plot on the y-axis
#' @param conc column name with the concentration of the samples to plot on the x-axis
#' @param colour column of the sample groups to be specified
#'
#' @return A plot with the newly calculated data
#' @export
#'
#' @examples
#' \dontrun{Plot_avg_negative(data_2, expType, "controlNegative", RawData, comp, compName)}
Plot_avg_negative <- function(file , col_neg  , name_neg, RawData, conc, colour){

  file["RawData"] <- file["RawData"]/colMeans(dplyr::filter(file, {{col_neg}} == name_neg)["RawData"] , na.rm =TRUE)

  ggplot2::ggplot(file, ggplot2::aes(x = log10({{conc}}) , y = {{RawData}} , colour = {{colour}} , shape = {{col_neg}} )) + ggplot2::geom_jitter(width = 0.1) + ggplot2::labs(x = "component concentration on log10 scale (nM)" , y = "number of offspring" ) + ggplot2::xlim(-4.5 , 2)
}
