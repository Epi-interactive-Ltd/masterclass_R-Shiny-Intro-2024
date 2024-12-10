library(shiny)
library(DT)

ui <- fluidPage(

    # Application title
    titlePanel("Practising with data sources and processing"),

    fluidRow(
        column(6, 
               wellPanel(
                   DT::dataTableOutput("table_builtin")
               )
        ),
        column(6, 
               wellPanel(
                   DT::dataTableOutput("table_loaded")
               )
        )
    )
)