library(shiny)

ui <- fluidPage(

    # Application title
    titlePanel("Practising with data sources and processing"),

    fluidRow(
        column(3, 
               wellPanel(
                 h2("Filters"),
                 # Insert filters here
                 
               )
        ),
        column(9,
               tabsetPanel(
                 tabPanel("Ungrouped",
                          wellPanel(
                            DT::dataTableOutput("world_data")
                          )    
                 )
               )
               
        )
    )
)