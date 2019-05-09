#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  data.pheno <- read_csv("/home/ubuntu/RiceSNPData/RiceDiversity.44K.MSU6.Phenotypes.csv", na=c("NA", "00")) 
  #head(data.pheno)
  
  output$scatterplot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    #x    <- faithful[, 2] 
    #bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    #hist(x, breaks = bins, col = 'blue', border = 'black')
    
    # set up the plot
    plot <- ggplot(data = data.pheno, aes_string(x=input$trait.1, y=input$trait.2, color=input$trait.3))
    plot + geom_point()
    
  })
  
})
