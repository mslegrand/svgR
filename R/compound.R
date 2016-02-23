

#' Wraps an R function to be used as a compounds
#'
#' @export
#' @param f an R function
#'
#' @return A function that evaluates the f in the svg environment.
#'
toCompound<-function(f){
  if(!inherits(f, "Compound")){
    tmplateFn<-function(...){
      el<-get("eleDefs", envir = parent.frame() )
      tmp<-c(el,list(eleDefs=el))
      list2env(tmp, environment())
      xxx
    }
    bd0<-body(f)
    bdTmp<-body(tmplateFn)
    bdTmp[[5]]<-bd0
    body(f)<-bdTmp
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
#' @usage circir %<c-% function(cxy,r,...){g(circle(cxy=cxy, r=r,...), circle(cxt=cxy, r=2*r, ...))}
#'
`%<c-%`<-function(name,f){
  name<-substitute(name)
  if (!is.name(name)) stop("Left-hand side must be a name")
  name<-deparse(name)
  f<-toCompound(f)
  assign(name,f, envir=parent.frame())
  invisible()
}