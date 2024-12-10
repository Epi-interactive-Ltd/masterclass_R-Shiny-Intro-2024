
shinyServer(function(input, output) {
  
  world_data_mod <- reactive({
    world_data |>
      filter(continent %in% input$continent) |>
      group_by(continent, region_un, subregion) |>
      summarise(total_area = sum(area_km2, na.rm = T), 
                total_pop = sum(pop, na.rm = T),
                avg_lifeExp = mean(lifeExp, na.rm = T),
                avg_gdpPercap = mean(gdpPercap, na.rm = T)
                )
  })
  
  
  output$world_data_chart <- renderPlotly({

        
    # create the x / y axis customisation lists
    
    
    # create the legend customisation list
    
    
    # create the colours of the chart
    
    
    # create the median shape
    
    
    # create the base plot
    plot_ly(
      
    )
  })
  
  
})
