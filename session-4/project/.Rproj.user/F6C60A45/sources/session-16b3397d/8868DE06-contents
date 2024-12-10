

server <- function(input, output) {


  clean_movie_data <- reactive({
    # Rename
    movie_data <- g_start_movie_data %>%
      rename(
        runtime_mins = runtime,
        budget_usd = budget,
        revenue_usd = revenue
      )
    
    # Filter
    movie_data <- movie_data %>%
      filter(
        vote_count > 20,
        budget_usd > 1000,
        revenue_usd > 1000
      )
    
    # Mutate
    # Want to adjust budget and revenue for inflation
    # Assuming the average inflation was 2.53% per year
    movie_data <- movie_data %>%
      mutate(
        release_year = as.integer(year(as.Date(release_date))),
        years_since_release = 2024 - release_year,
        total_inflation = (years_since_release * 2.53) / 100 + 1,
        budget_usd = ceiling(budget_usd * total_inflation),
        revenue_usd = ceiling(revenue_usd * total_inflation),
        gross_net_ratio = round((revenue_usd - budget_usd) / budget_usd, 2),
        total_inflation = NULL
      ) %>%
      select(-years_since_release)
    return(movie_data)
  })
  
  
  language_movie_data <- reactive({
    if (length(input$select) <= 0) return(clean_movie_data())
    
    movie_data <- clean_movie_data() %>%
      filter(
        original_language %in% input$select
      )
    return(movie_data)
  })
  
  
  final_movie_data <- reactive({
    data <- language_movie_data()
    
    if (!input$language_checkbox && !input$year_checkbox) return(data)
    
    if(input$language_checkbox && input$year_checkbox) {
      data <- data %>%
        group_by(original_language, release_year)
    } else if (input$language_checkbox) {
      data <- data %>%
        group_by(original_language)
    } else {
      data <- data %>%
        group_by(release_year)
    }
    
    data <- data %>%
      summarise(
            mean_vote_score = round(mean(vote_average, na.rm = TRUE), 2),
            number_of_movies = n(),
            total_budget_usd = sum(budget_usd, na.rm = TRUE),
            total_revenue_usd = sum(revenue_usd, na.rm = TRUE),
            mean_gross_net_ratio = round(mean(gross_net_ratio, na.rm = TRUE), 2),
            .groups = "keep"
          )
    return(data)
  })
  

  
  
  # ##################################### #
  
  
  output$select_input <- renderUI({
    choices <- sort(unique(g_start_movie_data$original_language))
    
    ui <- selectInput(
      inputId = "select",
      label = "Movie language code: ",
      choices = choices,
      multiple = TRUE
    )
  })
  
  output$table <- renderDataTable({
    data <- final_movie_data()
    
    validate(need(nrow(data) > 0, paste("No movie data for the language code:", input$select)))
    
    dt <- datatable(
      data = data
    )
    return(dt)
  })
  
  
  # ####################################### #
}