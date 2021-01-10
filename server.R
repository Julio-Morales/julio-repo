#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate random number of normal distribution based on input$bins from
        # ui.R
        data <- rnorm(input$samples)
        title <- c("Normal distribution with ",input$samples," samples")
        # draw the histogram with the specified number of samples
        hist(data, col = 'lightgray', border = 'white', main=title)
        abline(v=mean(data), col="red")
        texth <- paste("mean: ", format(mean(data),digits = 5))
        mtext(text=texth,side=1,col = "red")
        }) # End of renderPlot

}) #End of ShinyServer
