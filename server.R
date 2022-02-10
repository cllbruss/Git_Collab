server = function(input, output) {
  output$debug <- renderPrint({
    input$region
  })
  
  output$reg <- renderPlot({
    
    plot_df <- tourism[tourism$Region == input$region & tourism$Purpose == input$purpose,]
    
    autoplot(plot_df)
    
  })
}