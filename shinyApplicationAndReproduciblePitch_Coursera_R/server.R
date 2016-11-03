library(shiny)

# Define server logic required to generate and plot a random distribution

shinyServer(function(input, output) {
  
  values <- reactiveValues()
  
  observe({
    input$calculate
    values$BMI <- isolate({
      round(input$weight/(input$height * input$height * 0.0001),digits=1)
      
    })
  })
  
  output$bmi <- renderText(
    paste (values$BMI)
    )
})