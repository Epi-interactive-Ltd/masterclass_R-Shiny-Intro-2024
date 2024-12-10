

ui <- fluidPage(
  # Application title
  titlePanel("Data Manipulation Example with Movie Data"),
  
  div(
    style = "display: flex; flex-direction: row; align-items: end; gap: 20px;",
    uiOutput("select_input"),
    checkboxInput(
      inputId = "year_checkbox",
      label = "Group by release year",
      value = FALSE
    ),
    checkboxInput(
      inputId = "language_checkbox",
      label = "Group by language",
      value = FALSE
    )
  ),
  dataTableOutput("table")
)