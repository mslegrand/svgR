
#' Utility to display a svgR file in local browser using shiny
#' @param svgMarkup A character string containing the svg markup to display (default=NULL)
#' @param fileName A file name containing the svg markup to display (default=NULL)
#' @param rCode  svgR instructions to be evaluated (default=NULL)
#' @details Specify only one of the three named parameters.
#' @examples 
#' \dontrun{ display(fileName="dog.r") }
#' 
#' 
#' @export
shinyShow<-function(svgMarkup=NULL, fileName=NULL,  rCode=NULL) {
  if(!is.null(fileName)){
    rCode<-parse(fileName)
  } 
  if(!is.null(rCode)){
    svgMarkup<-eval(rCode)
  }
  if(is.null(svgMarkup)){
    stop('no svg to display')
  }
  svg<-svgMarkup
  app <- list(
    ui = bootstrapPage(  
        htmlOutput("svg") ,
        actionButton("submit", "Dismiss")
        #submitButton("submit", "Dimiss!")
        ) ,
    server = function(input, output) {
      output$svg<-renderUI({ HTML(svg) }  )  
      observe({
        if (input$submit == 0)
          return()       
        stopApp(input$svg)
      })    
    }
  )
  runApp(app)
}


# "how to launch from terminal"
# R -e "shiny::runApp('~/shinyapp')"
# system(command, intern = FALSE, wait = TRUE, input = NULL,
#        show.output.on.console = FALSE,
#        minimized = FALSE, invisible = FALSE)


# system('R -e "testeR.R(\"tmp.R\") &')


#tip
# Use sys.source instead of source to load ui.R, server.R, global.R
# shinyapp <- function(mat) {
#   app <- list(
#     ui = bootstrapPage(
#       here comes your ui.R),
#     server = function(input, output) {
#       here comes your server.R
#       the argument mat can be used now in server
#     }
#   )
#   runApp(app)
# }


# shinyShow(fileName="Samples//rLogo.R")

