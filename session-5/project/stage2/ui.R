
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
        hr()
      )
    )
)