#' @import XML
#' @import stringr
#' @import shiny


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
  args->ml1
  if(!inherits(ml1,'list') | length(args)==0){
    return(ml1)
  }
  if(is.null(names(ml1))){
    names(ml1)<-rep("",length(ml1))
  }
  ml2<-lapply(1:length(ml1), function(i){
    rtv<-ml1[[i]]
    nm<-names(ml1)[i]
    if(nm=="" && (inherits(rtv, 'list'))){
      rtv<-promoteUnamedLists(rtv)
    } else {
      rtv<-list(rtv) 
      names(rtv)<-nm
    } 
    rtv  
  })
  do.call(c, ml2)->ml3
  ml3
  nms<-names(ml3)
  ml4<-lapply(1:length(ml3), function(i){
    rtv<-ml3[[i]]
    if(nms[i]=="" && (inherits(rtv, 'character')|| inherits(rtv, 'numeric'))){
      rtv<-newXMLTextNode(rtv)
    }
    rtv
  })
  names(ml4)<-names(ml3)
  ml4
}

# extracts only the unamed args (if any)
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
  "wsp-scln-list"  = function(x){ #
    if(inherits(x,"list")){ #list
      paste(  sapply(x, function(y){paste(y, collapse=" ")}), collapse="; "  )
    } else if(inherits(x,"matrix")){ #matrix
      paste(apply(x, 2, function(y)paste(y,collapse=",")), collapse="; ")     
    } else {
      paste(x, collapse=";")
    }                               
  } ,
  "wsp4scln-list"  = function(x){ #todo: seperate int chunks of 4, each chunk is space seperated vec of nos.
    if(inherits(x,"list")){ #list
      paste(  sapply(x, function(y){paste(y, collapse=" ")}), collapse="; "  )   
    } else {
      paste(x, collapse=" ")
    }                               
  },
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
    if(is.null(x)){
      x<-diag(3)[-3,]
    }
    if(inherits(x,"list")){ #list
      tmp<-lapply(1:length(names), function(i){
        paste( names[i], "(", paste(x[[i]], collapse=","), ")", sep="" )
      })
      return(paste(tmp, collapse=" "))
    }  
    if( inherits(x,"matrix") ){
     if(dim(x)[1]==3 & dim(x)[2]==3){ #if present, drop last row
       x<-x[-3,]
     }
     if(dim(x)[1]==2 & length(x)==6){ # so that the second dim need not be specified
       return(paste0("matrix(", paste(x, collapse=" "),")"))
      } else {
        stop("expecting transfrom matrix to be dimension 2 x 3")
      }
    }
    return(paste(x, collapse=" "))
  } 
)



#used only by text, textPath, and tspan in eledefs
mapArg<-function(attrs, seqArg, toArgs){
  if(!is.null(attrs[[seqArg]])){
    for(i in 1:length(toArgs)){
      attrs[[toArgs[i]]]<-attrs[[seqArg]][i]
    }
    attrs[[seqArg]]<-NULL
  }
  attrs    
}

# used in elementDefs, but only by the 4 animation elements
mapAttributeName<-function(attrs){
  indx<-grep("attributeName",names(attrs))
  if(length(indx)>0){
    attrs[indx]<-gsub("\\.","-",attrs[indx])
  }
  attrs
}

#used eleDefs
mapCenteredXY<-function(attrs){
  if( !is.null(attrs[["cxy"]]) & !is.null(attrs[["width"]]) & !is.null(attrs[["height"]]) ){
    wh<-c(as.numeric(attrs[["width"]]), as.numeric(attrs[["height"]]))
    attrs[["xy"]]<- as.numeric(attrs[["cxy"]]) - wh/2
    attrs[["cxy"]]<-NULL
    attrs<-attrSplitX(attrs,"x","y","xy")
  }
  attrs 
}



#  helper function for animate and set to handles comboParams with value 
#  to return a list with names aNames, containg the time seq val as vectors
#  we assume the input val is one of 3 forms
#  1. a named list with names==aNames and values the corresponding vals
#  2. a matrix whose rows vals for each aMame in aNames
#  3. a unnamed list which, cbinds to the above matrix.
extractValues<-function(val,aNames){ #for example aNames=c("x","y","z")
  # the strategy: convert val to a matrix with rows corresponding
  # to desired aName, then convert to list row-wise
  N<-length(aNames)
  # if not in desired output form
  if(!(inherits(val,"list") & setequal( names(val), aNames) ) ){ #ow. this is what we wanted  
    if(!inherits(val, 'matrix')){
      val<-matrix(unlist(val), N,)
    }
    if(!(dim(val)[1]==N)) stop("animated combo attribute has incorrect 'value' count")
    val<-split(val, 1:N)
    names(val)<-aNames
  }
  val
}


# preprocXtras
# xy, cxy, rxy, xy1, xy2, wh
# used only by mapCenteredXY !!!
attrSplitX<-function(attrs,  a1, a2, a12){
  if(a12 %in% names(attrs)){
    attrs[c(a1,a2)]<-attrs[[a12]]
    attrs[[a12]]<-NULL
  }
  attrs
}
#END Helper functions---

# preprocess combos, ie split  xy, rxy, ... and add x, y, rx, ry, ...
# attrComboSplit<-function(attrs, comboParam, splitParam){
#   if(comboParam %in% names(attrs)){
#     tmp<-as.list(attrs[[comboParam]])
#     names(tmp)<-splitParam
#     attrs[[comboParam]]<-NULL
#     c(attrs, tmp)    
#   }
# }


# typeAttrHandler<-function(tvaAttr){
#   indx<-sapply(names(attrs),function(x)grepl(paste('(^| )',x,'($| )',sep=''), V1 )),tvaAttr)
#   if(length(indx)>1){
#     attrs[indx]<-lapply(attrs[indx], function(x){ svgPreproc[[treatValueAs]](x) }), tvaAttr)
#   }
# }

# cp is a combo param list: 
# for example
# cp=list(xy=c('x','y'), in12=c('in', 'in2'))
#used in eleDefs
comboParamHandler<-function(attrs, cp ){
  nacp<-names(cp)[match(names(cp),names(attrs),0)!=0]
  unlist(attrs[nacp])->tmp
  unlist(cp[nacp])->names4tmp
  if(length(names4tmp)!=length(tmp)){
    stop("combo param ",nacp,"length mistmatch")
  }
  names4tmp->names(tmp)  
  tmp<-as.list(tmp)
  attrs[nacp]<-NULL
  attrs<-c(attrs, tmp)
  attrs
}

animateOneParamExpand<-function(attrs, paramName){
  ani.df<-structure(list(treatValueAs = 
    c("number-optional-number", "number-optional-number",  
                  "number-optional-number", "number-optional-number", "number-optional-number",  
                  "number-optional-number", "wsp-list", "wsp-list", "wsp-list",  
                  "wsp-list", "wsp-list", "wsp-list", "wsp-list", "wsp-list", "cmm-wsp-list",  
                  "transform-list", "transform-list", "transform-list", "path-data-list",  
                  "cmm-list"), V1 = c("baseFrequency", "filterRes", "kernelUnitLength",  
                                      "order", "radius", "stdDeviation", "kernelMatrix", "class", "dx",  
                                      "dy", "rotate", "x", "y", "preserveAspectRatio", "points", "gradientTransform",  
                                      "patternTransform", "transform", "d", "viewBox")
    ), .Names = c("treatValueAs",   "V1"), row.names = c(NA, -20L), class = "data.frame"
  ) 
  if( 'attributeType' %in% names(attrs) && paramName %in% names(attrs) ){
    attributeType<-attrs[['attributeType']]
    if(!is.null(attributeType) && attributeType!="CSS"){
      attributeName<-attrs[['attributeName']]
      if(attributeName %in% ani.df$V1){
        #param<-attrs[[paramName]]
        tva<-ani.df[which(ani.df$V1==attributeName),1]
        attrs[[paramName]]=svgPreproc[[tva]](attrs[[paramName]])
        }
      } 
    }
  attrs
}

#used only by animate element in eleDefs
preProcAnimate<-function(attrs){
  if("attributeName" %in% names(attrs)){
    attrs[["attributeName"]]<-sub('\\.',"-",attrs[["attributeName"]])
  }
  params<-c("from","to")
  for(paramName in params){
    attrs<-animateOneParamExpand(attrs, paramName)
  }
  attrs
}

getDefsNode<-function(anyNode){
  xmlElementsByTagName(xmlRoot(anyNode), 'defs')->defsNodelist
  if(length(defsNodelist)==0){
    newXMLNode('defs')->defsnode
    defsNodelist<-list(defsnode)
    #works but I am not confortable with this
    addChildren(xmlRoot(anyNode), kids=defsNodelist, at=0)
  }
  defsNodelist[[1]]
}

genId.new<-function(gname="genid"){
  attr.no<-1
  function(){
    attr.no<<-attr.no+1
    attr.id<-paste0("genid", attr.no)
  } 
}
genId<-genId.new()

getsafeNodeAttr<-function(attr.name, node){
  xmlGetAttr(node, attr.name)->attr.id
  if(is.null(attr.id)){    
    attr.id<-genId()    
    xmlAttrs(node)<-structure(list(attr.id), names=attr.name)
  }
  attr.id
}


#}
#"cmm-wsp-list", "number-optional-number", "path-data-list", "transform-list", 
#"wsp-list"))


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

