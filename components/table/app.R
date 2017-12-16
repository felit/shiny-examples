library(shiny)
library(ggplot2)
ui <- fluidPage(DT::dataTableOutput("t"))
server <- function(input, output) {
  setwd("/home/congsl/source/self/shiny-examples/components/table")
  t <- read.table("data/data.txt", header = T)
  output$t <- DT::renderDataTable(DT::datatable(t))
}
shinyApp(ui = ui, server = server)