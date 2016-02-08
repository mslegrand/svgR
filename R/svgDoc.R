
require("XML")
require("stringr")
#require("data.table")



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
 
  list2env(el, environment() )
  s<-substitute(list(...))
  
  args<-eval(s )


  width=1150
  height=860
  doc<-newXMLDoc() #parent
  svgRoot( parent=doc, width, height, args=args)
  class(doc)<-c("svgDoc", class(doc))
  doc
}




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






#called by svgR
svgRoot<-function(parent, width, height, args){
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
      kids<-eval(s, c(eleDefs, parent.frame() ))
      kids
    }
  } else {
    parent<-getNode(doc,id)
    fn<-function(...){
      pf<-as.list(parent.frame()) #pf=y
      
      enames<-names( parent.env(environment() ) )
      indx<-setdiff(names(pf),enames)
      el<-pf[indx]
      env1<-environment()
      
      list2env(el, environment() )
      s<-substitute(list(...))
      
      args<-eval(s )
#       
      
      
#       s<-substitute(list(...))
#       args<-eval(s, c(eleDefs, parent.frame() ))
      
      args <- promoteUnamedLists(args)
      attrS<-named(args)
      kids<-allGoodChildern(args)
      if(length(attrS)>0){
        addAttributes(parent, .attrs=attrS, append=TRUE)
      }
      if(length(kids)>0){
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



