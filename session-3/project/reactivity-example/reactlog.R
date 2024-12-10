# load the reactlog and shiny libraries
library(shiny)
library(reactlog)

# enable the reactlog functionality
reactlog_enable()

# run the reactivity example app and make some changes
shiny::runApp("reactivity-example")

# run this when the app is closed
shiny::reactlogShow()

