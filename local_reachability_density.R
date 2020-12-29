local_reachability_density <- function(neighborhood, points) {
  density = 0
  for(i in 1:length(neighborhood)) {
    point = neighborhood[[i]]
    density = density + calculate_corrected_dissimilatity(point, points)
  }
  density = density/length(neighborhood)
  density = 1/density
  return(density)
}