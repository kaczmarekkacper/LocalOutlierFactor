calculate_corrected_dissimilatity <- function(point, points) {
  dissimilatity = point@dissimilatity
  points = calculate_dissimilatity_for_points(point, points)
  points = sort_list_by_dissimilatity(points)
  neighborhood = get_neighborhood(points[2:length(points)], neighbor_number)
  max_dissimilatity = neighborhood[[length(neighborhood)]]@dissimilatity
  if( max_dissimilatity > dissimilatity) {
    return(max_dissimilatity)
  }
  else {
    return(dissimilatity)
  }
  
}