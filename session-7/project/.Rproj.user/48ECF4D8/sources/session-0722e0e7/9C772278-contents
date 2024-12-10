
bootstrapPage(
  tags$head(
    tags$style(type = "text/css", "html, body {width:100%;height:100%}"),
  ),
    leafletOutput("map", width = "100%", height = "100%"),
    absolutePanel(
      top = 30,
      right = 30,
      wellPanel(
        h4("Session 6 exercise"),
        hr(),
        selectInput("continent", "Highlight continent", choices = unique(world_data$continent),
                    selected = unique(world_data$continent), multiple = T, width = "300px"),
        checkboxInput("show_legend", "Show legend", value = T)
      )
    )
)