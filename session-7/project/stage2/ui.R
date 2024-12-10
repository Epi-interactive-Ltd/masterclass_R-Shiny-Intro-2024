# Stage 2
ui <- fluidPage(
  # Insert UI Components here #
  titlePanel("Session 7"),
  
  sidebarLayout(
    sidebarPanel(
      h2("Filter:"),
      
      selectInput(
        inputId="region",
        label="Select Region:",
        choices = c("All", unique(world_data$region_un)),
        selected="All",
        multiple=F
      ),
      
      conditionalPanel(
        condition = 'input.region != "All"',
        
        selectInput(
          inputId="subregion",
          label="Select Subregion:",
          choices = NULL,
          multiple=F
        ),
        
        conditionalPanel(
          condition = 'input.subregion != "All"',
          
          selectInput(
            inputId="country",
            label="Select Country:",
            choices = NULL,
            multiple=F
          ),
        )
        
      ),
      
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel(title="Map", 
                 leafletOutput("map", height= "700px"),
                 absolutePanel(
                   top = 50,
                   right = 40,
                   width = "200px",
                   height= "200px",
                   wellPanel(
                     # Add a selectInput to choose either lifeExp or gdpPercap for the highlight
                   )
                   
                   )),
        tabPanel(title="Graph", wellPanel(
          plotlyOutput("world_data_chart"))
        ),
        tabPanel(
          title="Table",
           wellPanel(
             
           )
        ) 
          
      )
    )
  )
  
)