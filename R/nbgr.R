#' This function is allows you to calculate the number of species per genra in a floristic data table
#'
#' @param x data matrix of floristic inventory, the name of each colum is as follow : 'genera', 'epit.spec', 'specie', 'family', 'life.form', 'chorology'.
#' @keywords family
#' @author Evans Ehouman
#' @return to a data.frame of number of species in each genera
#' @import dplyr
#' @examples
#' @export
#'
nbgr= function(x) {
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("R package 'dplyr' needed for this function to work. Please install it.\n",
         "install.packages('dplyr')", call. = FALSE)
  }
  #Calcualte Number of species by genera
  outputgenr1 <- as.data.frame(table(x[,1]))
  Var1 <- Freq <- NULL # Setting the variables to NULL first
  #Pass the result to a dataframe and change the name of the colums
  outputgenr<-outputgenr1 %>%
    dplyr::rename(
      Genera= Var1,
      Number.of.species =  Freq
    )
# utils::suppressForeignCheck(c("Var1", "Freq"))
  return(outputgenr)
}
