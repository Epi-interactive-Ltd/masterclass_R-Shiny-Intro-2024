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
ui <- fixedPage(
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins
  fluidRow(
    sliderInput(
      "bins",
      "Number of bins:",
      min = 1,
      max = 50,
      value = 30
    )
  ),
  fluidRow(
    navlistPanel(
      "Plots",
      tabPanel("Plot", plotOutput("distPlot")),
      tabPanel("Plot2", plotOutput("distPlot2")),
      "Information",
      tabPanel("Information", uiOutput("informationTab"))
    )
  )
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
      p("To find out more information about navlistPanels:"),
      a(href = "https://shiny.posit.co/r/reference/shiny/0.11/navlistpanel", target = "_blank", "https://shiny.posit.co/r/reference/shiny/0.11/navlistpanel")
    )
    return(ui)
  })
}


# Run the application
shinyApp(ui = ui, server = server)
