calculate_mean_dissimilatity <- function(neighborhood) {
  mean_dissimilatity = 0
  for(i in 1:length(neighborhood)) {
    mean_dissimilatity = mean_dissimilatity + neighborhood[[i]]@dissimilatity
  }
  mean_dissimilatity = mean_dissimilatity / length(neighborhood)
  return(mean_dissimilatity)
}