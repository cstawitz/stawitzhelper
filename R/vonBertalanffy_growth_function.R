#' Predict length given VBGF parameters
#'
#' @description External estimation procedure for von Bertalanffy growth.
#'
#' @param L1 mean length at youngest age which is well sampled in the data (a3)
#' @param L.inf Length at infinity
#' @param k von bertalanffy growth rate parameter
#' @param ages vector of ages in the data for which you want to predict mean
#'   length-at-age
#' @param a3 youngest age which is well sampled in the data
#' @return a vector of lengths predicted which correspond to the input ages
#'   vector.
vbgf_func <- function(L1, L.inf, k, ages, a3){
  predLength <- L.inf + (L1 - L.inf) * exp(-k * (ages - a3))
  predLength
}
