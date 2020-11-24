library(shiny)
library(ggplot2)
library(dplyr)
library(miniUI)


ShinyTable <- function(.data) {

  ui <- miniPage(
    gadgetTitleBar("Data Summary"),
    miniContentPanel(
      selectInput(inputId = 'vars',
                  label = 'Select variable to summarize',
                  choices = names(.data)),
      tableOutput('table')
    )
  )

  server <- function(input, output, session) {

    # Render the table
    output$table <- renderTable({
      # Create table with variables chosen by user
      table(Ncomb(data.frame((.data[,input$vars]))))
    })

    # Handle the Done button being pressed.
    observeEvent(input$done, {
      stopApp(returnValue = invisible())
    })
  }

  runGadget(ui, server)
}
