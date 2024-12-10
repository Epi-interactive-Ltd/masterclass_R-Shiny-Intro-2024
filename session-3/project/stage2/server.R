server <- function(input, output) {
  
  output$display <- renderText({
    paste("value = ", input$select)   
  })
  
  #reactive function here
  
  #-----
  
  #renderUI here
  
  #----
}
