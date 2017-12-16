function(input,output){
  # Error
  
  output$hist<-renderPlot({
    d<-rnorm(input$n)
    hist(d)
  })
  
  # output$hist<-renderPlot({
  #   hist(rnorm(input$n))
  # })
}