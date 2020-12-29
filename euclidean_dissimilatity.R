euclidean_dissimilatity <- function(p1, p2) {
  if (length(p1) != length(p2))
  {
    return(0)
  }
  sum = 0 
  for(i in 1:length(p1))
  {
    sum = sum + (p1[[i]]-p2[[i]])*(p1[[i]]-p2[[i]])
  }
  result = sqrt(sum)
  return(result)
}