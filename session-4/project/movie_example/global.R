library(shiny)
library(DT)
library(readr)
library(dplyr)
library(lubridate)

setwd("/cloud/project/movie_example")

# Load in our global data
# Movie data from: https://www.kaggle.com/datasets/rounakbanik/the-movies-dataset?resource=download
g_start_movie_data <- readr::read_csv("data/movies_metadata.csv") %>%
  filter(!is.na(title)) %>%
  select(
    title,
    original_language,
    runtime,
    release_date,
    budget,
    revenue,
    vote_average,
    vote_count
  )
