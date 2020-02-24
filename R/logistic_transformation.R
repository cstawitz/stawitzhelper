#'Get logistic transformation of a parameter
#'@description Logistically transforms a parameter to bound it between a low and a high value
#'@param par the parameter value
#'@param lo the low bound
#'@param hi the high bound
#'@return the transformed parameter value
get_logistic_transform <- function(par, lo, hi){
  par <- lo + (hi - lo)/(1+exp(-par))
  return(par)
}

#'Return logistically transformed variable to normal space
#'@description Un-logistically transform a parameter value
#'@param par the parameter value
#'@param lo the low bound
#'@param hi the high bound
#'@return the transformed parameter value
inv_logistic <- function(par, lo, hi){
  par <- -log(hi-par)+log(par-lo)
  return(par)
}