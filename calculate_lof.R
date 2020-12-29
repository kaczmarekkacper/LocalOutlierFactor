calculate_lof <- function(neighborhood, points, point_local_reachability_density) {
  neighborhood_copy = neighborhood
  lof = 0
  for(i in 1:length(neighborhood_copy)) {
    point = neighborhood_copy[[i]]
    points = calculate_dissimilatity_for_points(point, points)
    points = sort_list_by_dissimilatity(points)
    neighborhood = get_neighborhood(points[2:length(points)], neighbor_number)
    local_reachability_density = local_reachability_density(neighborhood, points)
    lof = lof + local_reachability_density
  }
  lof = lof / length(neighborhood_copy) / point_local_reachability_density
  return(lof)
}