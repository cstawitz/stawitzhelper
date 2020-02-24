#'Assign names and items to list
#'@description A function to assign new list slots based on an object and value
#'@param list__ the list to append slots to
#'@param element_type the name of the list item
#'@param element_value the value of the list item
#'@return the list with items 
generic_assignment <- function(list__, element_type, element_value){
  list__[[get(element_type, parent.frame)]] <- element_value
  return(list__)
}
