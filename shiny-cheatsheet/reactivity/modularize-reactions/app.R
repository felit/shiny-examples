library(shiny)

ui<-fluidPage(textInput("a","","A"),
              textInput("z","","Z"),
              textOutput("b"))
server<-function(input,output){
  re<-reactive({
    paste(input$a,input$z)
  })
  output$b<-renderText({
    re()
  })
}
shinyApp(ui=ui,server=server)
