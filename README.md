# Git_Collab
Group Project 
library(shiny)

  shinyApp(
    ui = fluidPage(
      textInput("txt", "Type your word here and click enter"),
      textOutput("text"),
      verbatimTextOutput("verb")
    ),
    server = function(input, output) {
      output$text <- renderText({ input$txt })
      output$verb <- renderText({ input$txt })
    }
  )