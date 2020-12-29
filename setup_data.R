setup_data <- function(dataset)
{
  points = list()
  for (i in 1:length(dataset$X[,1])) {
    obj = new("point", coordinates= dataset$X[i,], outlier = as.logical(dataset$y[i,]))
    points[i] = obj
  }
  return(points)
}