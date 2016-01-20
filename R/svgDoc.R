
require("XML")
require("stringr")
#require("data.table")



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
#' @param ... Additional paramaeters
#' 
#' 
#' @note By default, name space definition are given by
#' "http://www.w3.org/2000/svg", "http://www.w3.org/1999/xlink",
#' "http://www.w3.org/2001/xml-events", but can be overriddent by
#' specifying namespaceDefinitions=c(...) as an additional parameter.
svgR=function( ... ){
  s<-substitute(list(...))
  args<-eval(s, list2env(eleDefs, parent.frame() ) ) #this should be a list
  width=1150
  height=860
#   args <- promoteUnamedLists(args)
#   #kids<-unnamed(args)
#   attrS<-named(args)
#   kids<-allGoodChildern(args)
  #at this point edit attrS for svgRoot

#   if(length(attrS)>0){
#     #cat(names(attrS),collapse=",  ")
#     #cat("\n")
#     addAttributes(parent, .attrs=attrS, append=TRUE)
#   }
#
#   if(length(kids)>0){
#     #cat(length(kids),"\n")
#     addChildren(parent, kids=kids)
#   }

  #list(...)->args
  #args<-c( list( width=width, height=height), list(...) )

  #doc<-newXMLDoc(namespaceDefinitons)
  doc<-newXMLDoc() #parent
  svgRoot( parent=doc, width, height, args=args)
#   doc<-structure(
#     list(top=doc,  wh=c(width,height)),
#     class="svgDoc"
#   )
  class(doc)<-c("svgDoc", class(doc))
  doc
}


#called by svgR
svgRoot<-function(parent, width, height, args){
#   if( is.null(namespaceDefinitons) ){
#     namespaceDefinitions<- c(
#       "http://www.w3.org/2000/svg",
#       xlink="http://www.w3.org/1999/xlink",
#       ev="http://www.w3.org/2001/xml-events"
#     )
#   }
  #specific to svgRoot
  if( "namespaceDefinitons" %in% names(args)){
    namespaceDefinitions<-args[["namespaceDefinitions"]]
    argsargs[["namespaceDefinitions"]]=NULL
  } else {
    namespaceDefinitions<- c(
      "http://www.w3.org/2000/svg",
      "xlink"="http://www.w3.org/1999/xlink",
      "ev"="http://www.w3.org/2001/xml-events"
    )
  }
  #args[["id"]]<-"root"
  # copied from svg(...)

  args <- promoteUnamedLists(args)
  attrs <- named(args)
  attrs <- comboParamHandler(attrs, list(wh = c("width", "height")))
  #this has no meaning in outermost svg, ie root
  if(is.null(attrs$width)){
    attrs$width=width
  }
  if(is.null(attrs$height)){
    attrs$width=height
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
  newXMLNode("svg", parent=parent,
           attrs=attrs,
           namespaceDefinitions = namespaceDefinitions,
           suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning",TRUE),
           .children=unnamed(args)
  )
}

#
#
# #called by svgR
# svgRoot<-function(parent,  args){
#   #   if( is.null(namespaceDefinitons) ){
#   #     namespaceDefinitions<- c(
#   #       "http://www.w3.org/2000/svg",
#   #       xlink="http://www.w3.org/1999/xlink",
#   #       ev="http://www.w3.org/2001/xml-events"
#   #     )
#   #   }
#   #specific to svgRoot
#   if( "namespaceDefinitons" %in% names(args)){
#     namespaceDefinitions<-args[["namespaceDefinitions"]]
#     argsargs[["namespaceDefinitions"]]=NULL
#   } else {
#     namespaceDefinitions<- c(
#       "http://www.w3.org/2000/svg",
#       "xlink"="http://www.w3.org/1999/xlink",
#       "ev"="http://www.w3.org/2001/xml-events"
#     )
#   }
#   args[["id"]]<-"root"
#   # copied from svg(...)
#
#   args <- promoteUnamedLists(args)
#   attrs <- named(args)
#   attrs <- comboParamHandler(attrs, list(wh = c("width", "height")))
#   attrs <- mapCenteredXY(attrs)
#   indx <- sapply(names(attrs), function(x) grepl(paste("(^| )",
#                                                        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class preserveAspectRatio"))
#   attrs[indx] <- lapply(attrs[indx], function(x) {
#     svgPreproc[["wsp-list"]](x)
#   })
#   indx <- sapply(names(attrs),
#                  function(x){
#                    grepl( paste("(^| )", x,  "($| )", sep = ""),
#                           "systemLanguage viewBox")
#                  })
#   attrs[indx] <- lapply(attrs[indx], function(x) {
#     svgPreproc[["cmm-list"]](x)
#   })
#   indx <- sapply(names(attrs), function(x){
#     grepl(paste("(^| )",  x, "($| )", sep = ""), "style")
#   })
#   attrs[indx] <- lapply(attrs[indx], function(x) {
#     svgPreproc[["cln-scln-list"]](x)
#   })
#   newXMLNode("svg", parent=parent,
#              attrs=attrs,
#              namespaceDefinitions = namespaceDefinitions,
#              suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning",TRUE),
#              .children=unnamed(args)
#   )
#
# }





getNode=function(doc,id){
  if(id=='/' || id=='root'){
    id<-'root'
    return(xmlRoot(doc)) # so root need not be the id of the root  node
  }
  #kidV <- getNodeSet(doc$top, paste("//*[@id=\"", id, "\"]", sep=""))
  kidV <- getNodeSet(doc, paste("//*[@id=\"", id, "\"]", sep=""))
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
      args <- promoteUnamedLists(args)
      #kids<-unnamed(args)
      attrS<-named(args)
      kids<-allGoodChildern(args)
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
    saveXML(x, file=tmp[['file']], indent=TRUE,    prefix = "")
  } else {
    saveXML(xmlRoot(x), file=tmp[['file']], indent=TRUE,    prefix = "")
  }
#   if("fragment" %in% names(tmp) && tmp["fragment"]==FALSE){
#     saveXML(x$top, file=tmp[['file']], indent=TRUE,    prefix = "")
#   } else {
#     saveXML(xmlRoot(x$top), file=tmp[['file']], indent=TRUE,    prefix = "")
#   }
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

#' convert to rgb representation
#'
#' @param r red component: 0-255
#' @param g green component: 0-255
#' @param b blue component: 0-255
#' @return returns character vector representing a rgb color
#' @export
as.rgb<-function(r,g,b){
  tmp<-c(r,g,b)
  paste0('rgb(',paste(tmp,collapse=","), ')' )
}

#'Generate a random rgb color
#'
#' @return returns character vector representing a rgb color (as a character vector)
#' @export
rrgb<-function(){
  #tmp<-sample(1:255,3,replace=T)
  tmp<-sample.int(255,3)
  paste('rgb(',paste(tmp,collapse=","), ')', sep="")
}



