library(shiny)

ui<-fluidPage(
  textInput("a","","A")
)

server<-function(input,output){
  rv<-reactiveValues()
  rv$number<-5
}
shinyApp(ui=ui,server=server)