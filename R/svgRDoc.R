
require("XML")
require("stringr")
require("R6")

#I may consider one of the following instead of ZZZ
#evalOnLoad() and evalqOnLoad()

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
svgR<-function( ... ){
  pf<-as.list(parent.frame()) #pf=y
  
  enames<-names( parent.env(environment() ) )
  
  #todo remove functions that can hurt us
  indx<-setdiff(names(pf),enames)
  el<-pf[indx]
  #essentials<-getEssentials()
  
  
  list2env(el, environment() )
  argsC<-as.list(match.call())[-1]
  
  # extract width and height
  names(argsC)->argNames
  if("width" %in% argNames & "height" %in% argNames){
    w<-eval(argsC$width)
    h<-eval(argsC$height)
  } else if( "wh" %in% argNames) {
    wh<-eval(argsC$wh)
  } else {
    wh<-c(1150, 860)
  }
  getWH<-function(){return(wh)} #I may need to make this into an environment!!!
  
  argsL<-lapply( argsC, function(arg){ 
    tryCatch(
      eval(arg),
      error=function(e){
        txt<-deparse(arg)
        base::stop(paste("\n>",txt,"\n",e$message))
      }
    )                                   
  })  
  
  doc<-structure(list(
    root=svgRoot( wh=wh, args=argsL)
  ),
    class="svgDoc"
  ) 
  doc
}



#called by svgR
svgRoot<-function( wh, args){
  #specific to svgRoot

#   namespaceDefinitions<-as.list(namespaceDefinitions)
  namespaceDefinitions<- c(
    xmlns="http://www.w3.org/2000/svg",
    "xmlns:xlink"="http://www.w3.org/1999/xlink",
    "xmlns:xlink"="http://www.w3.org/1999/xlink",
    "xmlns:ev"="http://www.w3.org/2001/xml-events"
  )
  
  #args<-c(namespaceDefinitions,args)
  args <- promoteUnamedLists(args)
  attrs <- named(args)
  attrs <- comboParamHandler(attrs, list(wh = c("width", "height")))
  
  attrs<-preprocSpAttrs(attrs, 
          specs=c("requiredExtensions", "requiredFeatures", "class", "preserveAspectRatio"), 
          sep="wsp-list"
          )
  attrs<-preprocSpAttrs(attrs, 
                      specs=c("systemLanguage", "viewBox"),
                      sep="cmm-list"
          )
  attrs<-preprocSpAttrs(attrs, 
                      specs=c("style"),
                      sep="cln-scln-list"
          )

  attrs<-c(namespaceDefinitions, attrs)

  root<-XMLAbstractNode$new("svg", 
           attrs=attrs,
           .children=unnamed(args)
  )
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


