sort_list_by_dissimilatity <- function(points) {
  for(i in 1:length(points)) {
    if ((length(points)-1-i) > 0 ) {
      for(j in 1:(length(points)-1-i)) {
        if (points[[j]]@dissimilatity > points[[j+1]]@dissimilatity) {
          temp = points[[j]]
          points[[j]] = points[[j+1]]
          points[[j+1]] = temp
        }
      }
    }
  } 
  return(points)
}