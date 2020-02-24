get_logistic_transform <- function(par, lo, hi){
  par <- lo + (hi - lo)/(1+exp(-par))
  return(par)
}

inv_logistic <- function(par, lo, hi){
  par <- -log(hi-par)+log(par-lo)
  return(par)
}