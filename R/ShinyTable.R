#' Variable Summaries Shiny Gadget
#'
#' @description This shiny gadget allows you to choose one variable at a time and then displays the summary information about that variable. Note: Only numeric variables can be summarized.
#' @param .data The name of the dataset to summarize.
#'
#' @return
#' @export
#' @import shiny miniUI
#' @examples
#' ShinyTable(iris)
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
