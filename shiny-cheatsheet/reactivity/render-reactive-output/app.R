library(shiny)

ui<-fluidPage(textInput("a","","A"),
              textOutput("b"))
server<-function(input,output){
  output$b<-renderText({
    input$a
  })
}
shinyApp(ui=ui,server=server)
