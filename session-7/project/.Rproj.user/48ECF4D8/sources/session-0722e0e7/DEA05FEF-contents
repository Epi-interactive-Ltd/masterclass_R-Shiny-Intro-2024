# Stage 1
shinyServer(function(input, output) {
  
  filtered_data <- reactive({
    
    # Filter the data depending on the choices of the three filter options
    
     
  })

  observeEvent(input$region, {
    # Update the choices for the subregion selectInput based on the region input value
    # sub_regions <- world_data %>% filter(
    #   
    # ) 
    
    # Update the selectInput (hint: try updateSelectInput)
    
  })
  
  observeEvent(input$subregion, {
    # Update the choices for the country selectInput based on the subregion input value
    # sub_regions <- world_data %>% filter(
    #   
    # ) 
    
    # Update the selectInput (hint: try updateSelectInput)
    
  })
  
  
  
  
  output$map <- renderLeaflet({
    # Render the map
  })
  
  
  
  # # creating a dynamic colour palette 
  colorpal <- reactive({
    
    colorNumeric(brewer.pal(5, "RdPu"), filtered_data()$lifeExp)
    
  })
   
  
  # when the continent data changes, redraw the highlighted shapes
  observe({
    pal <- colorpal()
    
    # Redraw the shapes
    
  })
 
  # # use a separate observe to show / hide the legend
  observe({
    pal <- colorpal()

    # out <- leafletProxy("map") %>%
    #   clearControls()
    # out <- out %>%
    #     addLegend(position = "bottomright", pal = pal, values = filtered_data()$lifeExp, title="Life Exp")

  })
  
  
})
