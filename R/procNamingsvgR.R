#' @import stringr
#' @import R6
#' @import shiny


#Helper functions--- naming
named <- function(x) {
  if (is.null(names(x))) return(NULL)
  x<-x[names(x) != "" & names(x)!="list"]
  # this is where we do all the pre substitution
  for(sl in preSubList){
    names(x)<-gsub(sl$sfrom, sl$sto, names(x) )
  }    
  x
}

unnamed <- function(x) {
  if (is.null(names(x))) {
    rtv<-x
  } else{
    rtv<-c(x[names(x) == ""], unlist(x[names(x)=="list"]))
  }
  rtv  
}


promoteUnamedLists<-function(args){
  args->ml1
#   if(inherits(ml1,"XMLAbstractNode")){
#     return(ml1)
#   }
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
  #ml3
  nms<-names(ml3)
#   ml4<-lapply(1:length(ml3), function(i){
#     rtv<-ml3[[i]]
#     if(nms[i]=="" && (inherits(rtv, 'character')|| inherits(rtv, 'numeric'))){
#       rtv<-XMLTextNode$new( .children=rtv)
#         #newXMLTextNode(rtv)
#     }
#     rtv
#   })
#   names(ml4)<-names(ml3)
  #ml4
ml3
}

# extracts only the unamed args (if any)
allGoodChildern<-function(args){
  if (is.null(names(args))) {
    unnamed<-args
  } else{
    unnamed<-args[names(args)==""]
  } 
  if(length(unnamed)>0){
    #indx<-sapply(unnamed, function(x)inherits(x, c("numeric", "character","XMLAbstractNode")))
    indx<-sapply(unnamed, function(x)inherits(x, "XMLAbstractNode" ))
    kids<-unnamed[indx]
  } else {
    kids<-unnamed
  }
  kids  
}
