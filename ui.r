library(shiny) 
shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("KW to BMP Conversion"),
        
        sidebarPanel(
            numericInput('kw', 'Kilowatts', 0, min = 50, max = 200, step = 5),
            actionButton('goButton','Submit')
        ),
        mainPanel(
            h3('Results of calculation'),
            h4('You entered'),
            verbatimTextOutput("inputValue"),
            h4('Which can be converted to a value of '),
            verbatimTextOutput("calculation"),
            p(''),
            textOutput('text3')
        )
    )
)