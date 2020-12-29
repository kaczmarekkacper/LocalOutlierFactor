get_neighborhood <- function(points, neighbor_number) {
  number_of_elements = neighbor_number
  while (points[[number_of_elements]]@dissimilatity == points[[number_of_elements+1]]@dissimilatity) {
    number_of_elements = number_of_elements + 1
  }
  return(points[1:number_of_elements])
}