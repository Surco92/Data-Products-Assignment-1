library(shiny)
library(quantmod)
library(zoo)
shinyUI(pageWithSidebar(
 headerPanel("S&P 500 Moving Average"),
 sidebarPanel(
 
 dateInput("date",value="2013-12-12", "Date:"),
 radioButtons("chtype", "Chart type:",
                   c("Line" = "line",
                     "Candlestick" = "candlesticks",
                     "Matchstick" = "matchsticks",
                     "Bar" = "bars")),
 actionButton("goButton", "Go!"),
 sliderInput('SMAlag', 'SMA lag',value = 30, min = 10, max = 300, step = 1,),
 h4("GUIDE:"),
 p("This application prints the chart of S&P 500 index and the technical indicator Simple Moving Average. User can set starting date and type of the chart. I recommend using line chart for higher time frames. Number of periods used for computation of the Simple Moving Average is controlled by slider.")  
 ),
 mainPanel(
 plotOutput('graph')
 )
))

	