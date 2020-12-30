lof <- function(points, neighbor_number, tolerance) {
  points_copy = points
  for (i in 1:length(points_copy)) {
    point = points_copy[[i]]
    points = calculate_dissimilatity_for_points(point, points_copy)
    points = sort_list_by_dissimilatity(points)
    neighborhood = get_neighborhood(points[2:length(points)], neighbor_number)
    local_reachability_density = local_reachability_density(neighborhood, points)
    LOF = calculate_lof(neighborhood, points, local_reachability_density)
    if (LOF > 1+tolerance) {
      points_copy[[i]]@prediction = TRUE
    }
    else {
      points_copy[[i]]@prediction = FALSE
    }
    print(i)
    print(points_copy[[i]]@outlier)
    print(points_copy[[i]]@prediction)
    print(points_copy[[i]]@dissimilatity)
  }
  return(points_copy)
}