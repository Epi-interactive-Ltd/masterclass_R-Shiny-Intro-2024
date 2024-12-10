
ui <- fluidPage(

    # Application title
    titlePanel("Practising with data sources and processing"),

    fluidRow(
        column(3, 
               wellPanel(
                 h2("Filters"),
                 selectInput("status", "Status", 
                             choices = c("Complete", "Incomplete")),
                 
                 selectInput("continent", "Continent", 
                             choices = unique(world_data_processed$continent), 
                             multiple = T, 
                             selected = unique(world_data_processed$continent)),
                 
                 sliderInput("density", "Population Density per Sq. Km", min = 0,
                             value = c(0, round(max(world_data_processed$popDensity, na.rm = T))),
                             max = round(max(world_data_processed$popDensity, na.rm = T)), 
                             step = 100)
               )
        ),
        column(9,
               tabsetPanel(
                 tabPanel("Ungrouped",
                          wellPanel(
                            DT::dataTableOutput("world_data"),
                            downloadButton("export")
                          )    
                 )
               )
               
        )
    )
)