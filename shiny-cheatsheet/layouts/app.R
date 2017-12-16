library(shiny)
ui <- fluidPage(
  fluidRow(column(width = 4), column(
    width = 3,
    wellPanel(dateInput("a", ""), submitButton()),
    offset = 3
  )),
  fluidRow(column(width = 12)),
  flowLayout(
    actionButton("button", label = "redirect"),
    actionLink("link", label = "redirect"),
    dateRangeInput("dataRange", label = "data range input"),
    fileInput(inputId = "file", label = "choose file"),
    numericInput(inputId = 'number', "", "900")
  ),
  sidebarLayout(sidebarPanel(),
                mainPanel()),
  splitLayout()
)



server <- function(input, output) {
  
}
shinyApp(ui = ui, server = server)