server <- function(input, output) {
  
  output$display <- renderText({
    paste("value = ", selectedImage())   
  })
  
  selectedImage <- reactive({
    paste0("image_",input$select,".jpg")
  })
  
  output$image <- renderUI({
    img(src = selectedImage(), height = 500)
  })
  
}