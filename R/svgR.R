# svgR
#' Compose SVG using R scripts
#' 
#' svgR provides tools to compose svg markup 
#' within the R framework. The results
#' can then be easily added to either a slidfy 
#' or shiny application
#' 

#' 
#' @import XML
#' @import stringr
#' @import data.table
#' @import shiny
#' @docType package
#' @name svgR
NULL


#Helper functions---
named <- function(x) {
  if (is.null(names(x))) return(NULL)
  #x<-x[names(x) != ""]
  x<-x[names(x) != "" & names(x)!="list"]
  # this is where we do all the pre substitution
  for(sl in preSubList){
    names(x)<-gsub(sl$sfrom, sl$sto, names(x) )
  }    
  #names(x)<-gsub("\\.","-", names(x)) # dot to dashes 
  x
}

unnamed <- function(x) {
  if (is.null(names(x))) {
    rtv<-x
  } else{
    rtv<-c(x[names(x) == ""], unlist(x[names(x)=="list"]))
  }
  # sapply(rtv, function(x)print(class(x)))
  rtv  
}

promoteUnamedLists<-function(args){
  if ( is.null(names(args))) {
    return(args)
  }
  indx1<-which(names(args)=="")
  indx2<-which(sapply(args, class)=="list")
  indx<-intersect(indx1, indx2)
  if(length(indx)>0){
    to.promote<-args[indx]
    do.call(c,to.promote)->promoted
    args<-c(args[-indx], promoted)
  }
  args
}


allGoodChildern<-function(args){
  if (is.null(names(args))) {
    unnamed<-args
  } else{
    unnamed<-args[names(args)==""]
  } 
  if(length(unnamed)>0){
    indx<-sapply(unnamed, function(x)inherits(x, c("numeric", "character", "XMLAbstractNode" )))
    kids<-unnamed[indx]
  } else {
    kids<-unnamed
  }
  kids  
}

preSubList<-list(
  list(sfrom = "in1", sto = "in"),
  list(sfrom = "xlink\\.href", sto = "xlink:href"),
  list(sfrom = "xml\\.base", sto = "xml:base"),
  list(sfrom = "xml\\.lang", sto = "xml:lang"),
  list(sfrom = "xml\\.space", sto = "xml:space"),
  list(sfrom = "xlink\\.actuate", sto = "xlink:actuate"),
  list(sfrom = "xlink\\.arcrole", sto = "xlink:arcrole"),
  list(sfrom = "xlink\\.role", sto = "xlink:role"),
  list(sfrom = "xlink\\.show", sto = "xlink:show"),
  list(sfrom ="\\.", sto="-")
)

#from inside build.svgFnQ

svgPreproc<-list(
  "cmm-list"       = function(x){paste(x, collapse=",")} ,
  "wsp-list"       = function(x){paste(x, collapse=" ")} ,
  "scln-list"      = function(x){paste(x, collapse=";")} ,
  "number-optional-number" = function(x){paste(x, collapse=",")} ,
  "path-data-list" = function(x){ #at this point we do no length checking                       
    names<-names(x)
    if("z" %in% names){ x[["z"]]<-""}
    if("Z" %in% names){ x[["Z"]]<-""}
    if(inherits(x,"list")){
      tmp<-lapply(1:length(names), function(i){
        paste( names[i], paste(x[[i]], collapse=","), sep=" " )
      })
      tmp<-paste(tmp, collapse=" ") 
    } else {
      tmp<-paste(x, collapse=" ")
    }
    tmp
  } ,  
  "cmm-scln-list"  = function(x){ 
    if(inherits(x,"list")){ #list
      paste(  sapply(x, function(y){paste(y, collapse=",")}), collapse=";"  )   
    } else if(inherits(x,"matrix")){ #matrix
      paste(apply(x, 2, function(y)paste(y,collapse=",")), collapse=";")     
    } else {
      paste(x, collapse=";")
    }                               
  } ,
  "cln-scln-list"  = function(x){ 
    if(inherits(x,"list")){ #list
      paste(  sapply(x, function(y){paste(y, collapse=":")}), collapse=";"  )   
    } else if(inherits(x,"matrix")){ #matrix
      paste(apply(x, 2, function(y)paste(y,collapse=":")), collapse=";")     
    } else {
      paste(x, collapse=";")
    } 
  } ,
  "cmm-wsp-list" = function(x){ 
    if(inherits(x,"list")){ #list
      paste(  sapply(x, function(y){paste(y, collapse=",")}), collapse=" "  )   
    } else if(inherits(x,"matrix")){ #matrix
      paste(apply(x, 2, function(y)paste(y,collapse=",")), collapse=" ")     
    } else {
      paste(x, collapse=" ")
    }
  } ,
  "transform-list" = function(x){ #at this point we do no length check
    names<-names(x)
    if(inherits(x,"list")){ #list
      tmp<-lapply(1:length(names), function(i){
        paste( names[i], "(", paste(x[[i]], collapse=","), ")", sep="" )
      })
      tmp<-paste(tmp, collapse=" ")
    } else {
      tmp<-paste(x, collapse=" ")
    }
    tmp
  } 
)




mapArg<-function(attrs, seqArg, toArgs){
  if(!is.null(attrs[[seqArg]])){
    for(i in 1:length(toArgs)){
      attrs[[toArgs[i]]]<-attrs[[seqArg]][i]
    }
    attrs[[seqArg]]<-NULL
  }
  attrs    
}

mapAttributeName<-function(attrs){
  indx<-grep("attributeName",names(attrs))
  if(length(indx)>0){
    attrs[indx]<-gsub("\\.","-",attrs[indx])
  }
  attrs
}

mapCenteredXY<-function(attrs){
  if( !is.null(attrs[["cxy"]]) & !is.null(attrs[["width"]]) & !is.null(attrs[["height"]]) ){
    wh<-c(as.numeric(attrs[["width"]]), as.numeric(attrs[["height"]]))
    attrs[["xy"]]<- as.numeric(attrs[["cxy"]]) - wh/2
    attrs[["cxy"]]<-NULL
    attrs<-attrSplitX(attrs,"x","y","xy")
  }
  attrs 
}

# preprocXtras
# xy, cxy, rxy, xy1, xy2, wh
attrSplitX<-function(attrs,  a1, a2, a12){
  if(a12 %in% names(attrs)){
    attrs[c(a1,a2)]<-attrs[[a12]]
    attrs[[a12]]<-NULL
  }
  attrs
}
#END Helper functions---

# preprocess combos, ie split  xy, rxy, ... and add x, y, rx, ry, ...
attrComboSplit<-function(attrs, comboParam, splitParam){
  if(comboParam %in% names(attrs)){
    tmp<-as.list(attrs[[comboParam]])
    names(tmp)<-splitParam
    attrs[[comboParam]]<-NULL
    c(attrs, tmp)    
  }
}


# typeAttrHandler<-function(tvaAttr){
#   indx<-sapply(names(attrs),function(x)grepl(paste('(^| )',x,'($| )',sep=''), V1 )),tvaAttr)
#   if(length(indx)>1){
#     attrs[indx]<-lapply(attrs[indx], function(x){ svgPreproc[[treatValueAs]](x) }), tvaAttr)
#   }
# }

# cp is a combo param list: 
# for example
# cp=list(xy=c('x','y'), in12=c('in', 'in2'))
comboParamHandler<-function(attrs, cp ){
  nacp<-names(cp)[match(names(cp),names(attrs),0)!=0]
  unlist(attrs[nacp])->tmp
  unlist(cp[nacp])->names4tmp
  if(length(names4tmp)!=length(tmp)){
    stop("combo param length mistmatch")
  }
  names4tmp->names(tmp)  
  tmp<-as.list(tmp)
  attrs[nacp]<-NULL
  attrs<-c(attrs, tmp)
  attrs
}

#END Helper functions---

# ggetNode <- function (rootNode, id) 
# {
#   if(id!='root'){
#     kidV <- getNodeSet(rootNode, paste("//*[@id=\"", id, "\"]", sep=""))
#   } else {
#     kidV <- list(rootNode)
#   }
#   if (length(kidV)==0){
#     stop("Cannot find node with id=",id)
#   }
#   kidV
# }
# 
# getNode<-function(rootNode,id){
#   if(id=="root"){
#     kidV<-getNodeSet(rootNode, paste( '//*[@id="',id,'"]' ) )
#   } else {
#     kidV<-list(rootNode)
#   }
#   kidV
# }         

