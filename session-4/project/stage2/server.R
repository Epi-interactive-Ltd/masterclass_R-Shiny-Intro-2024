
server <- function(input, output) {
    setwd("/cloud/project/stage2")
    
    # modify your world_data here, as above   #
    # world_data <- world_data %>% filter(...)      #
    
    
    # create your filtered data reactive here...
    
    # filtered_data <- reactive({
    #   
    # })
        
    # grouped_data <- NULL
    
    
    output$world_data <- DT::renderDataTable({
        datatable(world_data,
                  options = list(scrollX = TRUE)
                  )
    })
}