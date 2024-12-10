
shinyServer(function(input, output) {
  # Insert plotly server code here #
  
  
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
    
    dat <- world_data_mod()
    
    # create the x / y axis customisation lists
    
    
    # create the legend customisation list
    legend_theme <- list(
      font = list( 
        family = "sans-serif",
        size = 10,
        color = "#000"),
      bgcolor = "#F5F5F5",
      bordercolor = "#000",
      borderwidth = 1
      
    )
    
    # create the colours of the chart
    chart_colours <- RColorBrewer::brewer.pal(n = length(unique(dat$region_un)),
                                              name = "Paired") 
    
    # create the median shape
    
    
    # create the base plot
    plot_ly(dat, 
            type = "bar",
            x = ~subregion,
            y = ~avg_lifeExp,
            color = ~region_un,
            colors = chart_colours
            ) |>
      layout(legend = legend_theme)
    
  })
  
  
})
