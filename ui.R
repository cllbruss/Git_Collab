ui <- fluidPage(
  selectInput(
    inputId = "region",
    label = "Select Region:",
    choices = unique(tourism$Region),
  ),

  plotOutput("reg"),
)