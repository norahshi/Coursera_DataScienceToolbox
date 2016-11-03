library(shiny)

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Course Project: Shiny Application and Reproducible Pitch"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    sliderInput("height", 
                "Enter the height (in cm)", 
                min = 10,
                max = 300, 
                value = 170),
    br(),
    sliderInput("weight", 
                "Enter the weight (in kg)", 
                min = 10,
                max = 300, 
                value = 70),
    br(),
    actionButton("calculate",label="Calculate my BMI")
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    p(h4("This is your BMI:")),
    br(),
    textOutput("bmi"),
    br(),
    p(h4("What does your BMI umber tell you?")),
    br(),
    p(h5("A BMI below 18.5 is considered underweight.")),
    p(h5("A BMI between 18.5 and 24.9 is considered a healthy weight.")),
    p(h5("A BMI between 25 and 29.9 is considered overweight.")),
    p(h5("A BMI of 30 and above is considered obese."))
    )
)
)