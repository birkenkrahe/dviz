library(shiny)
ui <- fluidPage(
  textInput('name', "Enter a name:"),
  textOutput('hello'))  # `name` and `hello` are variables
server <- function(input, output) {
  output$hello <- renderText({
    paste("Hello, ", input$name)})}
shinyApp(ui, server)
