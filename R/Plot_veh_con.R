#' Plot the control samples
#'
#' @param file file with sample data
#' @param col_neg column with names control samples
#' @param name_pos name of positive control
#' @param name_veh name of vehicle control
#' @param name_neg name of negative control
#' @param RawData column with data
#'
#' @return plot with with all the averages per control
#' @export
#'
#' @examples
#' \dontrun{Plot_veh_con(data_t2, expType,"control" ,"control", "control",RawData)}
Plot_veh_con <- function(file , col_neg , name_pos , name_veh, name_neg, RawData){
  file <- as.data.frame(file)
  df <- c(neg = colMeans(dplyr::filter(file, {{col_neg}} == name_neg)["RawData"] , na.rm =TRUE) , pos = colMeans(dplyr::filter(file, {{col_neg}} == name_pos)["RawData"] , na.rm =TRUE) , veh =colMeans(dplyr::filter(file, {{col_neg}} == name_veh)["RawData"] , na.rm =TRUE))

  df <- as.data.frame(df)
  colnames(df) <- c("value")

  df <- dplyr::mutate(df , names = c((rownames(df))))

  return(ggplot2::ggplot(df , ggplot2::aes(x = names , y= "value" , group = names, fill = names)) + ggplot2::geom_col()) + ggplot2::labs(x = NULL , y = "mean raw data")
}
