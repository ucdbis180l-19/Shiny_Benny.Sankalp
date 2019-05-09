#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a scatterplot

shinyUI(fluidPage( #create the overall page
  
  # Application title
  titlePanel("Traits by Population "),
  
  # Some helpful information
  helpText("This application creates a Scatter plot of any two traits (user chosen), 
           colored by the values of a file RICE_44k genotypes, traits by population. 
           Please use the radio box below to choose a trait"),
  
  # Sidebar with a radio box to input which trait will be plotted
  sidebarLayout(
    sidebarPanel(
      radioButtons("trait.1", #the input variable that the value will go into
                   "Choose a trait to display:",
                   c("protein.content",
                     "amylose.content",
                     "alu.tol",
                     "plant.height",
                     "seed.surface.area",
                     "seed.volume", 
                     "panicle.number.per.plant",
                     "seed.length",
                     "brown.rice.volume",
                     "panicle length" )),
      radioButtons("trait.2", #the input variable that the value will go into
                   "Choose a trait to display:",
                   c("protein.content",
                     "amylose.content",
                     "alu.tol",
                     "plant.height",
                     "seed.surface.area",
                     "seed.volume", 
                     "panicle.number.per.plant",
                     "seed.length",
                     "brown.rice.volume",
                     "panicle length" )),
      radioButtons("trait.3", #the input variable that the value will go into
                                "Choose a trait to display:",
                   c("protein.content",
                     "amylose.content",
                     "alu.tol",
                     "plant.height",
                     "seed.surface.area",
                     "seed.volume", 
                     "panicle.number.per.plant",
                     "seed.length",
                     "brown.rice.volume",
                     "panicle length" ))
      ),
      
    # Show a plot of the generated distribution
    mainPanel(plotOutput("scatterplot")
    )
  )
))