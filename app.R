# library(shiny)
# ui<-fluidPage(numericInput(inputId = "n","Sample size",value = 25),
#               plotOutput(outputId = "hist"))
# server<-function(input,output){
#   output$hist<-renderPlot({
#     hist(rnorm(input$n))
#   })
# }
# shinyApp(ui=ui,server=server)

library(shiny)

# 
# ui<-fluidPage(textInput("a","","A"),textOutput("b"),actionButton("go","Go"))
# server<-function(input,output){
#   rv<-reactiveValues()
#   rv$number<-5
#   output$b<-renderText({
#     isolate(input$a)
#   })
#   observeEvent(input$go,{
#     print(input$a)
#   })
# }
# shinyApp(ui=ui,server=server)
# 
# ui<-fluidPage(textInput("a","","A"),
#               textInput("z","","Z"),
#               textOutput("b"))
# server<-function(input,output){
#   re<-reactive({
#     paste(input$a,input$z)
#   })
#   output$b<-renderText({
#     re()
#   })
# }
# shinyApp(ui=ui,server=server)


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