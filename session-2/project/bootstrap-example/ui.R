
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

fluidPage(

  title = "Hello Shiny!",
  fluidRow(
    column(6, style="background-color: red", "First Six Columns"
    ),
    column(6, style="background-color: green", "Second Six Columns"
    )
  ),
  fluidRow(
    column(6, style="padding:0",
           column(3, style="background-color: Coral;", "Second-Level column - 1"),
           column(9, style="background-color: Aqua;", "Second-Level column - 2")
    ),
    column(6, style="background-color: DarkCyan", "First-Level column")
    )
  
)
