################
setup_data <- dget("setup_data.R")

euclidean_dissimilatity <- dget("euclidean_dissimilatity.R")

calculate_dissimilatity_for_points <- dget("calculate_dissimilatity_for_points.R")

get_neighborhood <- dget("get_neighborhood.R")

calculate_mean_dissimilatity <- dget("calculate_mean_dissimilatity.R")

calculate_corrected_dissimilatity <- dget("calculate_corrected_dissimilatity.R")

local_reachability_density <- dget("local_reachability_density.R")

calculate_lof <- dget("calculate_lof.R")

lof <- dget("lof.R")
####################

# Wczytanie danych
library(R.matlab)
MuskData = readMat('./Data/musk.mat')
IonosphereData = readMat('./Data/ionosphere.mat')


# Określanie parametrów
neighbor_number = 2
tolerance = 0.1

dissimilatity <- function(p1, p2) {
  result = euclidean_dissimilatity(p1, p2)
  return(result)
}

dataset = IonosphereData

setClass("point", slots=list(coordinates="numeric",dissimilatity="numeric", prediction="logical", outlier="logical"))

# Program
points = setup_data(dataset)
points = lof(points, neighbor_number, tolerance)

counter = 0
for( i in 1:length(points)) {
  point = points[[i]]
  if (point@outlier == point@prediction) {
    counter = counter + 1
  }
}

print(counter)
print(length(points))
print(counter/length(points)*100)


