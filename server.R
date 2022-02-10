server = function(input, output) {
  output$debug <- renderPrint({
    input$date
  })
  
  output$reg <- renderPlot({
    min_date <- input$date[1]
    max_date <- input$date[2]
    
    reg_plot <- tourism[input$date >= min_date,]
    reg_plot <- tourism[input$date <= max_date,]
    
    autoplot(reg_plot)
  })
}