library(shiny)

ui <- fluidPage(
  titlePanel("Reactive values"),
  sidebarLayout(
    sidebarPanel(
      selectInput("select", 
                  "Choose one:", 
                  choices = list("Bunny" = 1, "Fish" = 2, "Cat" = 3)
      ),
      
      textOutput("display")
      
    ),
    mainPanel(
      uiOutput("image")
    )
  ))