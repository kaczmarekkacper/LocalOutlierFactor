maximum_dissimilatity <- function(p1, p2) {
  if (length(p1) != length(p2))
  {
    return(0)
  }
  max = 0 
  for(i in 1:length(p1))
  {
    value = abs(p1[[i]]-p2[[i]])
    if (value > max)
    {
      max = value
    }
  }
  return(max)
}