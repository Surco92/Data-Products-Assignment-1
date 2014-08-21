library(shiny)
library(quantmod)
library(zoo)
shinyServer(
 function(input, output) {
    
    
	
	
	
	output$graph<- renderPlot({
    input$goButton
	date<-isolate(input$date)
	getSymbols("^GSPC",src='yahoo',return.class='xts',from=date)
    
    chtype<-isolate(input$chtype)
	chartSeries(GSPC,type=chtype,TA=NULL,theme=chartTheme('white'),name="S&P 500 Index ") 
	
	
	SMAlag<-input$SMAlag
	addSMA(n=SMAlag)
	
	}
	)
	
	}
	)
	
	