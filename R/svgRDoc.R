
require("XML")
require("stringr")
require("R6")

#I may consider one of the following instead of ZZZ
#evalOnLoad() and evalqOnLoad()


# Alternative to current svgR
# svgREnv<-new.env()
# svgRL<-as.list(enviroment()) # grab svgR:::envir
# svgRL$getRootWH<-getRootWH
#
# list2env(svgRL, envir=svgREnv)
# and 
# 
# eval(arg[[i]], envir=svgREnv)



#' Creates a new svg Document
#'
#' @export
#' @param ... Additional paramaeters
#'
#'
#' @note By default, name space definition are given by
#' "http://www.w3.org/2000/svg", "http://www.w3.org/1999/xlink",
#' "http://www.w3.org/2001/xml-events", but can be overriddent by
#' specifying namespaceDefinitions=c(...) as an additional parameter.
#' 
svgR<-function( ... ){
    
  pf<-as.list(parent.frame()) #pf=y
  
  enames<-names( parent.env(environment() ) )
  #todo remove functions that can hurt us
  indx<-setdiff(names(pf),enames)
  el<-pf[indx]
  list2env(el, environment() )
  
  argsC<-as.list(match.call())[-1]
  names(argsC)->argNames
  if("width" %in% argNames & "height" %in% argNames){
    w<-eval(argsC$width)
    h<-eval(argsC$height)
  } else if( "wh" %in% argNames) {
    wh<-eval(argsC$wh)
  } else {
    wh<-c(1150, 860)
  }
  
  #getRootWH<-function(){return(wh)} #I may need to make this into an environment!!!
  
  # extract width and height
  
  argsL<-lapply( argsC, function(arg){ 
    tryCatch(
      eval(arg),
      error=function(e){
        txt<-deparse(arg)
        txt<-paste(txt,collapse="\n")
        base::stop(paste(e$message, "\n>Error encountered while executing:",txt,"\n\nError:\n") )
      }
    )                                   
  })  
  
  doc<-structure(list(
    root=svgRRoot( wh=wh, args=argsL)
  ),
    class="svgDoc"
  ) 
  doc
}



#' @method "as.character" svgDoc
#' @export
as.character.svgDoc<-function(x, ...){
  if(!is.null(x$root)){
    asCharacter(x$root)
  } else {
    "EmptyDoc"
  }
}


#' @method "print" svgDoc
#' @export
print.svgDoc<-function(x, ...){
  invisible(cat(as.character(x))) 
}

# Is it possible to get this to work?
# svgR<-function( ... ){
#   argsC<-as.list(match.call())[-1] 
#   # extract width and height
#   names(argsC)->argNames
#   if("width" %in% argNames & "height" %in% argNames){
#     w<-eval(argsC$width)
#     h<-eval(argsC$height)
#   } else if( "wh" %in% argNames) {
#     WH<-eval(argsC$wh)
#   } else {
#     WH<-c(1150, 860)
#   }
#   
#   getRootWH<-function(){
#     force(WH)
#     return(WH)
#   } 
#   
#   svgREnv<-new.env() # parent is parent.frame
#   svgRL<-c(eleDefs, getRootWH=getRootWH)
#   list2env(svgRL, envir=svgREnv)
#   
#   argsL<-lapply( argsC, function(arg){ 
#     tryCatch(
#       eval(arg, envir = svgRL),
#       error=function(e){
#         txt<-deparse(arg)
#         base::stop(paste("\n>",txt,"\n",e$message))
#       }
#     )                                   
#   })  
#   
#   doc<-structure(list(
#     root=svgRRoot( wh=wh, args=argsL)
#   ),
#   class="svgDoc"
#   ) 
#   doc
# }

