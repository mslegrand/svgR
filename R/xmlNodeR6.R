
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
       #stopifnot(all(good))
       if(length(good)>0 ){
         kids<-.children[good]
         self$setChildren(kids)
       } else {
         self$setChildren( list() )
       }  
     }  
    },
    xmlName =function(){self$tagName},
    
    xmlAttrs=function(){self$attrs},
    xmlChildren=function(){self$children},
    # appends the given node
    appendNode=function(node){
      stopifnot(inherits(node,"XMLAbstractNode"))
      self$children<-c(children, node)
      invisible(self)
    },
    # appends a single attribue with name=name and val=val
    appendAttr=function(name,val){
      stopifnot(inherits(name,"character"))
      self$attrs[[name]]<-val
      stopifnot(inherits(val,c("numeric", "character","NULL")))
      invisible(self)
    },
    # appends child to childred
    addChildren=function(children){
      stopifnot(inherits(children,"list"))
#       childrenIsValid<-sapply(nodeSet, function(n){
#         self$validChild(n)
#       })
#       stopifnot(all(childrenIsValid))
      self$children=c(self$children, children)
      invisible(self)
    },
    # replaces children
    setChildren=function(children){
      stopifnot(inherits(children,"list"))
#       childrenIsValid<-sapply(nodeSet, function(n){
#         self$validChild(n)
#       })
#       stopifnot(all(childrenIsValid))
      self$children= children
      invisible(self)
    },
    # appends attrs to attributes attrs
    addAttributes=function(attrs){
      stopifnot(inherits(attrs,"list"))
      lapply(attrs, function(n){
        stopifnot(inherits(n,c("numeric", "character","NULL")))
      })
      self$attrs=c(self$attrs, attrs)
      invisible(self)
    },
    # replaces attributes with attrs ( a list of attibutes)
    setAttributes=function(attrs){
      stopifnot(inherits(attrs,"list"))
      lapply(attrs, function(n){
        stopifnot(inherits(n,c("numeric", "character","NULL")))
      })
      self$attrs=attrs
      invisible(self)
    },
   #locates a given node by attribute value pair
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
    # locates the parent node of the given srchNode
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
    # retieves all the nodes with the given attributeSet
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
      if(all(val)){
        kids<-paste0(kids,collapse="")
        return( paste0(rtv, kids, "</",self$tagName,">"))
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

#  ------------------------------------------------------------------------


#text nodes appear on a single line in XML package
#I consider text node to be any node that can have 
# both char and Elements as children

XMLTextNode<-R6Class("XMLTextNode",
              inherit=XMLAbstractNode,
              lock_objects = FALSE,
              public =list(
                initialize = function(tag,  .children){
                  self$tagName <- "textData" 
                  attrs<-NULL
                  if (!missing(.children)) self$children <- .children 
                },
                findNode=function(attrName, attrValue){
                  stopifnot(inherits(attrName,c("character")))
                  stopifnot(inherits(attrValue,c("numeric", "character")))
                  if(!is.null(self$attrs[[attrName]]) && 
                       self$attrs[[attrName]]==attrValue){
                    return(self)
                  } else {
                    return(NULL)
                  }
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


XMLScriptNode<-R6Class("XMLScriptNode",
 inherit=XMLAbstractNode,
 lock_objects = FALSE,
 public =list(
  initialize = function(tag, attrs, .children){
     if (!missing(tag)) self$tagName <- tag 
     if (!missing(attrs)) self$attrs <- attrs 
     if (!missing(.children)) self$children <- .children 
   },
  findNode=function(attrName, attrValue){
    stopifnot(inherits(attrName,c("character")))
    stopifnot(inherits(attrValue,c("numeric", "character")))
    if(!is.null(self$attrs[[attrName]]) && 
         self$attrs[[attrName]]==attrValue){
      return(self)
    } else {
      return(NULL)
    }
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
     kids[1]<-paste0( rtv,kids[1])
     kids[length(kids)]<-paste0(kids[length(kids)], "</",self$tagName,">")
     return(kids)
   }  
 )
)

XMLCDataNode<-R6Class("XMLCDataNode",
              inherit=XMLAbstractNode,
              lock_objects = FALSE,
              public =list(
                initialize = function( .children){
                  self$tag <- "cData" 
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
                      "]]>")
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



asCharacter<-function(node){
  stopifnot(inherits(node,"XMLAbstractNode"))
  lines<-node$pretty()
  #lines<-lines[-grep("^ *$", lines)] #remove any spaces to prevent <p> occuring
  paste0(lines,collapse="\n")
}


# tn<-XMLTextNode$new(tag="textData", list("abc def"))
# sn<-XMLAbstractNode$new(tag="set",attrs=list(begin=0, end=1))
# node <- XMLAbstractNode$new(tag = "text", attrs = list(x=0,y=0), 
#                             .children = c(tn,sn))
# cat(asCharacter(node))
