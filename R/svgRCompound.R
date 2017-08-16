
getEssentials<-function(){
  eleDefs<-
  c(eleDefs,
    list(
      graphPaper=graphPaper, 
      playBar=playBar, 
      playButton.click=playButton.click,
      toggleButton.click=toggleButton.click, 
      toggleBar=toggleBar
    )  
  )
}




#' Wraps an R function to be used as a compounds
#'
#' @export
#' @param f an R function
#' @param envir environment for this function (default is parent.frame)
#' @return A function that evaluates the f in the svg environment.
#'
toCompound<-function(f, envir=parent.frame()){
  if(!inherits(f, "Compound")){
    bd1<-as.list(body(f)[-1])
    bd0<-quote(list2env(svgR:::getEssentials(), environment()))
    body(f)<-as.call(c(as.name("{"),bd0, bd1))
    environment(f)<-envir
    class(f)<-c(class(f),'Component')
  }
  f
}


#' Convenience operator for creating compounds
#'
#' @export
#' @param name the name to assign to the component
#' @param f an R function
#'
#' @return A function that evaluates the body of f in the calling environment.
#'
#' @usage name \%<c-\% f
#'
`%<c-%`<-function(name,f){
  name<-substitute(name)
  if (!is.name(name)) base::stop("Left-hand side must be a name")
  name<-deparse(name)
  f<-toCompound(f, envir=parent.frame())
  assign(name,f, envir=parent.frame())
  invisible()
}