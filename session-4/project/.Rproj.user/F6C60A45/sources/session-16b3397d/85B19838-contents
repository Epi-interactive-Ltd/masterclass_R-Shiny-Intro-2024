library(DT)
library(readr)
library(dplyr)

server <- function(input, output) {
    setwd("/cloud/project/stage1")
    
    data(mtcars)
    
    # load in your chosen data set here #
    
    
    # world_data <- 
    
        
    # ##################################### #
    
    
    output$table_builtin <- DT::renderDataTable({
        datatable(mtcars,
                  options = list(scrollX = TRUE)
        )
    })
    
    # display your other data table here #
    
    # output$table_loaded
    
    
    # ####################################### #
}