ui <- fluidPage(
  selectInput(
    inputId = "region",
    label = "Select Region:",
    choices = unique(tourism$Region),
  ),
  selectInput(
    inputId = "purpose",
    label = "Select Purpose:",
    choices = unique(tourism$Purpose),
),
  plotOutput("reg")
)