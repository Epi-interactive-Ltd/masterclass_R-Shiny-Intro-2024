
shinyServer(function(input, output) {
  
  # create the base map here, add tiles and the base layer of country shapes
  output$map <- renderLeaflet({
    leaflet() %>%
      addProviderTiles(providers$Esri.WorldGrayCanvas) %>%
      addMarkers(lng = 174.821029, lat = -41.309602, popup = "Epi-interactive Office!") %>%
      addPolygons(data = world_data, group = "outlines", 
                  stroke = T, weight = 1, color = "#444", opacity = 1, 
                  fill = F)
  })
})