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

  data.pheno <- read_csv("RiceDiversity.44K.MSU6.Phenotypes.csv", na=c("NA", "00")) 
 
  #changing the column names to pull information for graphing
  colnames(data.pheno)[colnames(data.pheno)=="Protein content"] <- "protein.content"
  colnames(data.pheno)[colnames(data.pheno)=="Amylose content"] <- "amylose.content"
  colnames(data.pheno)[colnames(data.pheno)=="Alu.Tol"] <- "alu.tol"
  colnames(data.pheno)[colnames(data.pheno)=="Plant height"] <- "plant.height"
  colnames(data.pheno)[colnames(data.pheno)=="Seed surface area"] <- "seed.surface.area"
  colnames(data.pheno)[colnames(data.pheno)=="Seed volume"] <- "seed.volume"
  colnames(data.pheno)[colnames(data.pheno)=="Panicle number per plant"] <- "panicle.number.per.plant"
  colnames(data.pheno)[colnames(data.pheno)=="Seed length"] <- "seed.length"
  colnames(data.pheno)[colnames(data.pheno)=="Brown rice volume"] <- "brown.rice.volume"
  colnames(data.pheno)[colnames(data.pheno)=="Panicle length"] <- "panicle.length"
  
  
  output$scatterplot <- renderPlot({

    #set up the scatter plot
    plot <- ggplot(data = data.pheno, aes_string(x=input$trait.1, y=input$trait.2, color=input$trait.3))
    plot + geom_point()

    
  })
  
})
