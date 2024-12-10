#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- flowLayout(
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  sliderInput(
    "bins",
    "Number of bins:",
    min = 1,
    max = 50,
    value = 30,
    width = "400px"
  ),
  plotOutput("distPlot", width = "600px"),
  plotOutput("distPlot2", width = "600px"),
  uiOutput("informationTab"),
  cellArgs = list(style = "width: fit-content; padding: 20px;") # Apply this attribute to each cell of the layout
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$distPlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(
      x,
      breaks = bins,
      col = 'darkgray',
      border = 'white'
    )
  })
  
  output$distPlot2 <- renderPlot({
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x,
         breaks = bins,
         col = 'pink',
         border = 'white')
  })
  
  output$informationTab <- renderUI({
    ui <-div(
      p("To find out more information about flowLayouts:"),
      a(href = "https://shiny.posit.co/r/reference/shiny/0.14/flowlayout", target = "_blank", "https://shiny.posit.co/r/reference/shiny/0.14/flowlayout")
    )
    return(ui)
  })
}


# Run the application
shinyApp(ui = ui, server = server)
