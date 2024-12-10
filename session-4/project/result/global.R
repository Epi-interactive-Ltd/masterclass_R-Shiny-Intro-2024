library(DT)
library(readr)
library(dplyr)

world_data <- readRDS("data/world_data.RDS")

world_data_processed <- world_data |>
  select(-iso_a2) |>
  filter(!is.na(pop)) |>
  mutate(Status = !is.na(pop) & !is.na(lifeExp) & !is.na(gdpPercap)) |>
  mutate(Status = ifelse(Status, "Complete", "Incomplete")) |>
  mutate(popDensity = round(pop / area_km2, 4))
