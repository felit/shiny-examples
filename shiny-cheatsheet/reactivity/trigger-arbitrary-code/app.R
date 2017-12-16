library(shiny)

ui<-fluidPage(textInput("a","","A"),textOutput("b"),actionButton("go","Go"))
server<-function(input,output){
  observeEvent(input$go,{
    print(input$a)
  })
}
shinyApp(ui=ui,server=server)