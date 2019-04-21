#' This function is allows you to calculate the number of species per life form in a floristic data table
#'
#' @param x data matrix of floristic inventory, the name of each colum is as follow : 'genera', 'epit.spec', 'specie', 'family', 'life.form', 'chorology'.
#' @keywords family
#' @author Evans Ehouman
#' @return to a data.frame of number of species for each life form
#' @import dplyr
#' @examples
#' @export
#'
nblfm= function(x) {
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("R package 'dplyr' needed for this function to work. Please install it.\n",
         "install.packages('dplyr')", call. = FALSE)
  }
  #Calcualte Number of species by life form
  outputlfm1<- as.data.frame(table(x[,6]))
  Var1 <- Freq <- NULL # Setting the variables to NULL first
  #Pass the result to a dataframe and change the name of the colums
  outputlfm<-outputlfm1 %>%
    dplyr::rename(
      Life.form= Var1,
      Number.of.species =  Freq
    )

  return(outputlfm)
}
