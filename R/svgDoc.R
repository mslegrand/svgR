
require("XML")
require("stringr")
require("R6")



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
  indx<-setdiff(names(pf),enames)
  el<-pf[indx]
  essentials<-getEssentials()
  
  list2env(el, environment() )
  s<-substitute(list(...)) 
  args<-eval(s )
  
  width=1150
  height=860
  
  doc<-structure(list(
    root=svgRoot(  width, height, args=args)
  ),
    class="svgDoc"
  ) #parent
  doc
}


#called by svgR
svgRoot<-function( width, height, args){
  #specific to svgRoot
#   if( "namespaceDefinitons" %in% names(args)){
#     namespaceDefinitions<-args[["namespaceDefinitions"]]
#     args[["namespaceDefinitions"]]=NULL
#   } else {
#     namespaceDefinitions<- c(
#       "xmlns=http://www.w3.org/2000/svg",
#       "xlink"="http://www.w3.org/1999/xlink",
#       "ev"="http://www.w3.org/2001/xml-events"
#     )
#   }
#   namespaceDefinitions<-as.list(namespaceDefinitions)
  namespaceDefinitions<- c(
    xmlns="http://www.w3.org/2000/svg",
    "xmlns:xlink"="http://www.w3.org/1999/xlink",#xmlns:xlink="http://www.w3.org/1999/xlink"
    ev="http://www.w3.org/2001/xml-events"
  )
  #args<-c(namespaceDefinitions,args)
  args <- promoteUnamedLists(args)
  attrs <- named(args)
  attrs <- comboParamHandler(attrs, list(wh = c("width", "height")))
  #this has no meaning in outermost svg, ie root
  if(is.null(attrs$width)){
    attrs$width=width
  }
  if(is.null(attrs$height)){
    attrs$height=height
  }

  indx <- sapply(names(attrs), function(x) grepl(paste("(^| )",
                                                     x, "($| )", sep = ""), "requiredExtensions requiredFeatures class preserveAspectRatio"))
  attrs[indx] <- lapply(attrs[indx], function(x) {
    svgPreproc[["wsp-list"]](x)
  })
  indx <- sapply(names(attrs),
                 function(x){
                   grepl( paste("(^| )", x,  "($| )", sep = ""),
                          "systemLanguage viewBox")
                 })
  attrs[indx] <- lapply(attrs[indx], function(x) {
    svgPreproc[["cmm-list"]](x)
  })
  indx <- sapply(names(attrs), function(x){
    grepl(paste("(^| )",  x, "($| )", sep = ""), "style")
  })
  attrs[indx] <- lapply(attrs[indx], function(x) {
    svgPreproc[["cln-scln-list"]](x)
  }) 
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


