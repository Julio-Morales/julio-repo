#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel(tags$a(href="https://en.wikipedia.org/wiki/Law_of_large_numbers","Law of Large Numbers")),
    p("The law of large numbers is a theorem that describes the result of 
      performing the same experiment a large number of times. According 
      to the law, the average of the results obtained from a large number of
      trials should be close to the expected value and will tend to become closer
      to the expected value as more trials are performed (Wikipedia). In the case of Normal 
      Distribution, its expected value would be closer, to zero.",
      style="white-space: normal;
                        text-align:left;
                        color: #fff; 
                        background-color:#7AC1FA;
                        border-color: #2e6da4;
                        height:80px;
                        font-size: 14px;"),
    # Sidebar with a slider input for number of samples
    sidebarLayout(
        sidebarPanel(
            p("Created by: Julio Morales"),
            p("Project week 4"),
            p("10-01-2020"),
            sliderInput("samples",
                        "Please choose the number of samples:",
                        min = 1,
                        max = 5000,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h2("Normal Distribution"),
            plotOutput("distPlot"),
        )
    )
))
