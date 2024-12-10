

server <- function(input, output) {
    setwd("/cloud/project/result")
    
    
    # create your filtered data reactive here...
    
    filtered_data <- reactive({
      world_data_processed |>
        filter(Status == input$status) |>
        filter(continent %in% input$continent) |>
        filter(between(popDensity, input$density[1], input$density[2]))
    })
        
    # grouped_data <- NULL
    
    
    output$world_data <- DT::renderDataTable({
        datatable(filtered_data(),
                  options = list(scrollX = TRUE)
                  )
    })
    
    
    output$export <- downloadHandler(
      filename = function() {
        return("filtered_world_data.csv")
      },
      content = function(file) {
        write.csv(filtered_data(), file = file, row.names = F)
      }
    )
}