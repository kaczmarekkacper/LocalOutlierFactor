calculate_dissimilatity_for_points <- function(point, points) {
  for (i in 1:length(points)) {
      points[[i]]@dissimilatity = dissimilatity(point@coordinates, points[[i]]@coordinates)
  }
  return(points)
}