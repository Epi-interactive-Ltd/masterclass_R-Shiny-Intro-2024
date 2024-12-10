
library(shiny)
library(dplyr)
library(leaflet)
library(spData)
library(sf)
library(RColorBrewer)


# load world data from the spData package
world_data <- spData::world |>
  filter(name_long != "Antarctica") |>
  mutate(popDensity = round(pop / area_km2, 4)) |>
  st_as_sf() 
