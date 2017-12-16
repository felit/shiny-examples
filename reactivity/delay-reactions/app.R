library(shiny)

ui<-fluidPage(
  textInput("a","","A"),
  actionButton("go","Go"),
  textOutput("b")
)

server<-function(input,output){
  re<-eventReactive(input$go,{input$a})
  output$b<-renderText({
    re()
  })
}
shinyApp(ui=ui,server=server)