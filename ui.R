
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Hello World"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("N",
                  "Choose N",
                  min = 1,
                  max = 10000,
                  value = 5000),
      textInput(inputId= "text", label = " Otsikko"),
      
      sliderInput("M",
                  "Choose breaks",
                  min = 10,
                  max = 200,
                  value = 100),
      textInput(inputId= "x_akseli", label = " X - akseli")
  
    # Show a plot of the generated distribution
   
     
    ),
    mainPanel(
      plotOutput("plot")

))
)
)