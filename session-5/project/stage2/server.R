
shinyServer(function(input, output) {
  
  # create the base map here, add tiles and the base layer of country shapes
  output$map <- renderLeaflet({
    leaflet() %>%
      addTiles() %>%
      addMarkers(lng = 174.821029, lat = -41.309602, popup = "Epi-interactive Office!")
  })
})