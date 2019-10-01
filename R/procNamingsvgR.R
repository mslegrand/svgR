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
  nms<-names(ml3)
ml3
}

checkChild<-function(kid, parentTag){
  if(!inherits(kid, "XMLAbstractNode" )){
    base::stop(parentTag, " encountered a non xml child\n")
  }
  kname<-kid$tagName
  if( !(kname %in% contentElements[[parentTag]]) ){
    emssg<-paste(
      kname,
      "is not a permissable content element of", 
      parentTag,
      "\n"
    )
    base::stop(emssg)
  }
  kid
}

checkKids<-function(kids, parentTag){
    kids<-lapply(kids, function(kid) checkChild(kid, parentTag) )
}

# extracts only the unamed args (if any)
allGoodChildern<-function(args, goodClass= "XMLAbstractNode"){
 
  if (is.null(names(args))) {
    unnamed<-args
  } else{
    unnamed<-args[names(args)==""]
  } 
  if(length(unnamed)>0){
    #indx<-sapply(unnamed, function(x)inherits(x, c("numeric", "character","XMLAbstractNode")))
    indx<-sapply(unnamed, function(x)inherits(x, goodClass) )
    kids<-unnamed[indx]
  } else {
    kids<-unnamed
  }
  kids  
}
