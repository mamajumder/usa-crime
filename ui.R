
crimeDat <- readRDS("usaCrimeDat.rds")
myCrime <- as.character(unique(crimeDat$Crime))

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  ###################### first row starts here
  fluidRow(
    column(12,
  # Application title takes all 12 column spaces
  titlePanel("My Shiny application to explore US crime data")
    )),
  
  ###################### 2nd row starts here. 2 columns 
  fluidRow(
    column(4,
           wellPanel(
             selectInput("selectedCrime", 
                         label = "Choose a crime to display",
                         choices = myCrime, 
                         selected = myCrime[1]),
             
             sliderInput("myYears",
                         "Crime Year",
                         min = 1969,
                         max = 2005,
                         value = 1980)
           )
    ),
    column(6, 
           plotOutput("myMap",height = "300px", width="550px")
    )      
  ),
  
  ###################### 3rd row starts here. 2 columns
  fluidRow(
    column(4, 
           plotOutput("myPlot",height = "900px",width="300px")
    ),
    column(6, 
           plotOutput("myCrime",height = "400px", width="550px")
    )  
  )
  

))