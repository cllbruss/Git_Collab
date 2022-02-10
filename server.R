server = function(input, output) {
  output$debug <- renderPrint({
    input$region
  })
  
  output$reg <- renderPlot({
    
    plot_df <- tourism[tourism$Region == input$region,]
    
    autoplot(plot_df)
    
  })
}