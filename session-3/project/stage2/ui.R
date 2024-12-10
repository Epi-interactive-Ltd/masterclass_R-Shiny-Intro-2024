library(shiny)

ui <- fluidPage(
  titlePanel("Reactive values"),
  sidebarLayout(
    sidebarPanel(
      selectInput("select", 
	        "Choose one:", 
          choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3)
	    ),
      textOutput("display")
      
    ),
    mainPanel(
      #add ui output here
    )
  ))