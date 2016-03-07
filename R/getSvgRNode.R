
# There seems to be an element of this name in 
# the element list (bad bad)
# only used below by "[[.svgDoc"

# getNode=function(doc,id){
#   if(id=='/' || id=='root'){
#     id<-'root'
#     return(xmlRoot(doc)) # so root need not be the id of the root  node
#   }
#   #kidV <- getNodeSet(doc$top, paste("//*[@id=\"", id, "\"]", sep=""))
#   kidV <- getNodeSet(doc, paste("//*[@id=\"", id, "\"]", sep=""))
#   if (length(kidV)==0){
#     stop("Cannot find node with id=",id)
#   }
#   kidV[[1]]
# }

#' Edit the document at the node given by the index
#'
#' @param doc An svg document created by svgDoc.new
#' @param id The id of the node to access. The root node is always
#' named 'root'
#' @export
"[[.svgDoc"<-
  function(doc,id=''){
    fn<-function(...){
      base::stop("doc does not have element with specified id")
      NULL
    }
    
#     if(!(id==''|| is.null(id))){
#       if(is.null(id)){
#         id<-"NULL"
#         id<-"emptystring"
#       }
#       stop("doc does not have element with id=",id)
#     }
   
    if(!is.null(id) && id!=''){
      root<-doc$root
      sNode<-root$findNode('id',id)
      #path<-getXmlPath(root,'id',id)
      if(!is.null(sNode)){
        #parentNode<-getNodeAt(path)
        
        fn<-function(...){
          pf<-as.list(parent.frame()) #pf=y
          
          enames<-names( parent.env(environment() ) )
          indx<-setdiff(names(pf),enames)
          el<-pf[indx]
          env1<-environment()
          
          list2env(el, environment() )
          s<-substitute(list(...))
          
          args<-eval(s )       
          args <- promoteUnamedLists(args)
          attrS<-named(args)
          kids<-allGoodChildern(args)
          if(length(attrS)>0){
            sNode$addAttributes(attrS)
            #addAttributes(parentNode, .attrs=attrS, append=TRUE)
          }
          if(length(kids)>0){
            sNode$addChildren(kids)
          }
          sNode
        }
        
      } 
    }
  return(fn)
}




#' Get the attribute value having the name attr.name in the given node
#' 
#' @param attr.name the name of the attribute 
#' @param node the node on which the value is sought
#' 
#' @note If the attribute with name attr.name fails to exits on the
#' given node, then an attribute id is generated and added to  the
#' node
getsafeNodeAttr<-function(attr.name, node){
  if(attr.name %in% names(node$attrs)){
    return(node$attrs[[attr.name]])
  } else {
    attr.id<-genId()
    node$appendAttr(attr.name, attr.id)
  }
  return(attr.id)
}

#getDefsNode<-function(anyNode){
  #   xmlElementsByTagName(xmlRoot(anyNode), 'defs')->defsNodelist
  #   if(length(defsNodelist)==0){
  #     newXMLNode('defs')->defsnode
  #     defsNodelist<-list(defsnode)
  #     #works but I am not confortable with this
  #     addChildren(xmlRoot(anyNode), kids=defsNodelist, at=0)
  #   }
  #   defsNodelist[[1]]
  # }
