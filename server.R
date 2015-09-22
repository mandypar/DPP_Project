library(shiny) 

BMPoutput <- function(kw) round(kw / 0.745699872, digits=0)

shinyServer(
    function(input, output) {
        output$inputValue <- renderPrint({input$kw})
        output$calculation <- renderPrint({BMPoutput(input$kw)})
        output$text3 <- renderText({if (input$goButton == 0) "You have not pressed the button"})
    }
)