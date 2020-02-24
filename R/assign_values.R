#'Assign objects from a function to a list
#'@description Function to extract objects from a function environment and append them as slots in a list
#'@param X the object you want to get from the function environment
#'@param function_env the environment of the function you are taking the object from
#'@param return_list the name of the list you are appending the object to
#'@return the new list with the objects assigned to slots
assign_values <- function(X, function_env, return_list){
  return_list$X <- get(X,                                                function_env)
  return(return_list)
}
