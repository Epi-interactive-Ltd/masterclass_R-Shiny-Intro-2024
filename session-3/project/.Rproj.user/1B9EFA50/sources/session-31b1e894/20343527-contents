ui <- fluidPage(
  numericInput("value_1", "Value 1", value = 10),
  numericInput("value_2", "Value 2", value = 1),
  numericInput("value_3", "Value 3", value = 1),
  tableOutput("table"),
  textOutput("text")
)

server <- function(input, output, session) {
  rng <- reactive(input$value_1 * 2)
  smp <- reactive(sample(rng(), input$value_2, replace = TRUE))
  bc <- reactive(input$value_2 * input$value_3)
  
  output$table <- renderTable(max(smp()))
  output$text <- renderText(bc())
}

shinyApp(ui, server)