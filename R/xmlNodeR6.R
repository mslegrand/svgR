
#borrowed from Hadley :)

html <- function(x) structure(x, class = c("html", class(x)))
escape <- function(x) UseMethod("escape")
escape.html <- function(x) x
escape.character <- function(x) {
  x <- gsub("&", "&amp;", x)
  x <- gsub("<", "&lt;", x)
  x <- gsub(">", "&gt;", x)
  
  html(x)
}
escape.list <- function(x) {
  lapply(x, escape)
}


xmlName<-function(node){
    node$tagName
}

XMLAbstractNode<-R6Class("XMLAbstractNode",
  lock_objects = FALSE,
  public =list(
    tagName="tag",
    attrs = list(),
    children =list(),
    initialize = function(tag, attrs, .children){
     if (!missing(tag)) self$tagName <- tag 
     if (!missing(attrs)) self$attrs <- attrs 
     if (!missing(.children)){
       #insure children are nodes
       stopifnot(inherits(.children,"list"))
       good<-sapply(.children, function(child){
         !is.null(child) & inherits(child,"XMLAbstractNode")
        })
       stopifnot(all(good))
       self$setChildren(.children)
     }  
    },
    xmlName =function(){self$tagName},
    
    xmlAttrs=function(){self$attrs},
    xmlChildren=function(){self$children},
    appendNode=function(node){
      stopifnot(inherits(node,"XMLAbstractNode"))
      self$children<-c(children, node)
      invisible(self)
    },
    appendAttr=function(name,val){
      stopifnot(inherits(name,"character"))
      self$attrs[[name]]<-val
      stopifnot(inherits(val,c("numeric", "character","NULL")))
      invisible(self)
    },
    addChildren=function(children){
      stopifnot(inherits(children,"list"))
#       childrenIsValid<-sapply(nodeSet, function(n){
#         self$validChild(n)
#       })
#       stopifnot(all(childrenIsValid))
      self$children=c(self$children, children)
      invisible(self)
    },
    setChildren=function(children){
      stopifnot(inherits(children,"list"))
#       childrenIsValid<-sapply(nodeSet, function(n){
#         self$validChild(n)
#       })
#       stopifnot(all(childrenIsValid))
      self$children= children
      invisible(self)
    },
    addAttributes=function(attrs){
      stopifnot(inherits(attrs,"list"))
      lapply(attrs, function(n){
        stopifnot(inherits(n,c("numeric", "character","NULL")))
      })
      self$attrs=c(self$attrs, attrs)
      invisible(self)
    },
    setAttributes=function(attrs){
      stopifnot(inherits(attrs,"list"))
      lapply(attrs, function(n){
        stopifnot(inherits(n,c("numeric", "character","NULL")))
      })
      self$attrs=attrs
      invisible(self)
    },
    findNode=function(attrName, attrValue){
      stopifnot(inherits(attrName,c("character")))
      stopifnot(inherits(attrValue,c("numeric", "character")))
      if(!is.null(self$attrs[[attrName]]) && 
           self$attrs[[attrName]]==attrValue){
        return(self)
      } else {
        for(child in self$children){
          node<-child$findNode(attrName, attrValue)
          if( !is.null(node) )
            return(node)
        }
      }
      return(NULL)
    },
    findNodeParent=function(srchNode, parent=NULL){
      stopifnot(inherits(srchNode,"XMLAbstractNode"))
      if(identical(srchNode,self)){
        return(parent)
      }
      for(child in self$children){
        found<-findNodeParent(child, self)
        if(!is.null(found)){
          return(found)
        }
      }
      return(NULL)
    },
    getNodeSet=function(attrName, attrValue){
      stopifnot(inherits(attrName,c("character")))
      stopifnot(inherits(attrValue,c("numeric", "character")))
      rtv<-list()
      if(!is.null(self$attrs[[attrName]])){
        rtv<-c(rtv,self)
      }
      if(length(self$children)>0){
        rtv<-c(rtv,
          lapply(self$children, function(child)child$getNodeSet(attrName, attrValue) )     
        ) 
      }
      return(rtv)
    },
    pretty=function(indent=""){
      rtv<-paste0("<",self$tagName)
      indentKid= paste0("  ",indent)
      if(length(self$attrs)>0){
        attr<-lapply(self$attrs, shQuote)
        attr<-paste0(names(attr),"=",attr, collapse=" ")
        rtv<-paste(rtv,attr)
      }
      if(length(self$children)==0){
        return( paste0(rtv, "/>"))
      }
      # length(self$children)>0)
      rtv<-paste0(rtv,">")
      kids<-unlist(lapply(self$children, function(kid){
        kid$pretty(indentKid)
      }))
      val<-unlist(sapply(self$children, function(child)inherits(child, "XMLTextNode")))
      if(any(val)){
        return( paste0(rtv, kids, "</",self$tagName,">", collapse=""))
      }
      # at least one child that is not an XMLTextNode
      kids<-paste0(indentKid,kids)
      return(c(rtv,kids,paste0("</",self$tagName,">")))
    }
  ),
  private = list(
    validChild=function(child){
        !isnull(child) &
        inherits(node,"XMLAbstractNode")
    }
  )
)

#text nodes appear on a single line in XML package
#I consider text node to be any node that can have 
# both char and Elements as children

XMLTextNode<-R6Class("XMLTextNode",
              inherit=XMLAbstractNode,
              lock_objects = FALSE,
              public =list(
                initialize = function(tag,  .children){
                  self$tag <- "textData" 
                  attrs<-NULL
                  if (!missing(.children)) self$children <- .children 
                },
                pretty=function(indent=0){
                  if(length(self$children)==0){
                    rtv<-""
                  } else {
                    rtv<-paste(self$children, collapse=" ")
                  }
                  return(rtv)
                }
              ) 
)
  
  
XMLCDataNode<-R6Class("XMLCDataNode",
              inherit=XMLAbstractNode,
              lock_objects = FALSE,
              public =list(
                initialize = function( .children){
                  self$tag <- "textData" 
                  attrs<-NULL
                  if (!missing(.children)) self$children <- .children 
                },
                pretty = function(indent=0){
                  if(length(self$children)==0){
                    rtv<-""
                  } else {
                    rtv<-paste0(self$children)
                  }
                  return(
                    c(paste0( "<![CDATA[" ), 
                      rtv,
                      "]]> ")
                  )
                }
              )
)

# 
# show<-function(node){
#   showR<-function(node, stem=""){ 
#     if(inherits(node,"XMLAbstractNode")){
#       name<-paste0(stem,"<",node$tagName,">")
#       N<-max(nchar(name),1)
#       res<-name
#       inherits(node,"XMLAbstractNode")
#       children<-node$children
#       if(!is.null(children) & length(children)>0)
#         res<-c(res,lapply(children, function(child)showR(child, stem)))
#       return(unlist(res))
#     } else { 
#       res<-paste0(stem, class(node))
#       return(res)
#     }
#   }
#   
#   res<-showR(node, stem="")
#   paste0(res,collapse="\n")
# }

# svgR(script("xxx"))->tmp
# cat(show(tmp$root))

# WH=c(600, 100) # window rect
# svgR( wh=WH,
#   circle( cxy=c(50,50), r=30, fill='darkblue',
#     mask=mask(
#       rect(cxy= WH/2, wh=c(600,10), fill='black')
#     )
#   )
# )->res
# root<-res$root
# show(res$root)

nd2<-XMLAbstractNode$new("circle", attrs=list(x=100,y=50, radius=30))
nd1<-XMLAbstractNode$new("rect", attrs=list(x=200,y=10, width=30, height=20))
nd0<-XMLAbstractNode$new("g", 
                 .children=list(nd1,nd2))
ndR<-XMLAbstractNode$new("svg", attrs=list(x=0,y=0, width=600, height=200),
                .children=list(nd0))

asCharacter<-function(node){
  stopifnot(inherits(node,"XMLAbstractNode"))
  lines<-node$pretty()
  paste0(lines,collapse="\n")
}
