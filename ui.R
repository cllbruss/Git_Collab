ui <- fluidPage(
  selectInput(
    inputId = "region",
    label = "Select Region:",
    choices = unique(tourism$Region),
  ),
  dateRangeInput(
    inputId = "date",
    label = "Select Date:",
    min = min(tourism$Quarter),
    max = max(tourism$Quarter),
    start = min(tourism$Quarter),
    end = max(tourism$Quarter)
  ),
  plotOutput("reg"),
  verbatimTextOutput("debug")
)