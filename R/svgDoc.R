
require("XML")
require("stringr")

#xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink"

#     "http://www.w3.org/2000/svg",
#     "xlink"="http://www.w3.org/1999/xlink",
#     "ev"="http://www.w3.org/2001/xml-events"
#     
#     xmlns="http://www.w3.org/2000/svg",
#     version="1.1",
#     "xmlns:xlink"="http://www.w3.org/1999/xlink",
#     "xmlns:ev"="http://www.w3.org/2001/xml-events"
#
#' Creates a new svg Document
#' 
#' @export
#' @param width Specifies the width of the SVG document
#' @param height Specifies the height of the SVG document
#' @param ... Additional paramaeters
#' @note By default, name space definition are given by
#' "http://www.w3.org/2000/svg", "http://www.w3.org/1999/xlink",
#' "http://www.w3.org/2001/xml-events", but can be overriddent by
#' specifying namespaceDefinitions=c(...) as an additional parameter.
svgDoc.new=function(width=1150, height=860, ... ){
  list(...)->args
  args<-c( list( width=width, height=height), list(...) )
  doc<-newXMLDoc()
  svgRoot( parent=doc, args=args)
  doc<-structure(list(top=doc,
                      wh=c(width,height)
  ), 
  class="svgDoc"
  )
  doc
}

svgRoot<-function(parent,  args,  namespaceDefinitons=NULL){
  if( is.null(namespaceDefinitons) ){
    namespaceDefinitions<- c(
      "http://www.w3.org/2000/svg",
      xlink="http://www.w3.org/1999/xlink",
      ev="http://www.w3.org/2001/xml-events"
    )
  } 
  args[["id"]]<-"root"
  args <- promoteUnamedLists(args)
  attrs <- named(args)
  attrs <- comboParamHandler(attrs, list(wh = c("width", "height")))
  attrs <- mapCenteredXY(attrs)
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
newXMLNode("svg", parent=parent,
           attrs=attrs, 
           namespaceDefinitions = namespaceDefinitions, 
           .children=unnamed(args)) 

}

getNode=function(doc,id){
  kidV <- getNodeSet(doc$top, paste("//*[@id=\"", id, "\"]", sep=""))
  if (length(kidV)==0){
    stop("Cannot find node with id=",id)
  }
  kidV[[1]]
}

#' Edit the document at the node given by the index
#' 
#' @param doc An svg document created by svgDoc.new
#' @param id The id of the node to access. The root node is always
#' named 'root'
#' @export 
"[[.svgDoc"<-
function(doc,id=''){
  if(id==''|| is.null(id)){
    fn<-function(...){
      s<-substitute(list(...))
      kids<-eval(s, list2env(eleDefs, parent=parent.frame() ) )
      kids
    }
  } else {
    parent<-getNode(doc,id)
    fn<-function(...){ 
      s<-substitute(list(...))
      args<-eval(s, list2env(eleDefs, parent.frame() ) )
      kids<-unnamed(args)
      attrS<-named(args)
      if(length(attrS)>0){
        #cat(names(attrS),collapse=",  ")
        #cat("\n")
        addAttributes(parent, .attrs=attrS, append=TRUE)
      }
      if(length(kids)>0){
        #cat(length(kids),"\n")
        addChildren(parent, kids=kids)
      }   
      list(parent)
    }    
  }
  fn
}


#' @method "as.character" svgDoc
#' @export  
as.character.svgDoc<-function(x, ...){
  tmp<-list(...)
  if("fragment" %in% names(tmp) && tmp["fragment"]==FALSE){
    saveXML(x$top, file=NULL, indent=TRUE,    prefix = "")
  } else {
    saveXML(xmlRoot(x$top), file=NULL, indent=TRUE,    prefix = "")    
  }
}


#' Retrieve  the value of an attribute
#' 
#' @param doc a svgDocument
#' @param id a valid id for a given node
#' @param attributeName the name for attribute whose value is to be retrieved
#' @return returns the value of the given attribute (as a character vector)
#' @export
getAttribute<-function(doc, id, attributeName){
  node<-getNode(doc, id)
  xmlAttrs(node)[attributeName]
}
