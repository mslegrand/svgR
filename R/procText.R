
#---helper fn text----------------
insertImpliedTextNodes<-function(args){
  stopifnot(class(args)=="list") #should never happen
  if(length(args)>0){
    if (is.null(names(args))) {
      uindx<-1:length(args)
    } else{
      uindx<-which(names(args)=="")
    }
    for(i in uindx){
      #cat("class(args[[i]])=",class(args[[i]]),"\n")
      if( inherits(args[[i]], c("numeric", "character")) ){
        args[[i]]<-XMLTextNode$new( .children=list(paste0(args[[i]])))
        #newXMLTextNode(.children=paste0(args[[i]]))
      }
    } 
  }
  return(args)
}

#used only by text, textPath, and tspan in elements
mapArg<-function(attrs, seqArg, toArgs){
  if(!is.null(attrs[[seqArg]])){
    for(i in 1:length(toArgs)){
      attrs[[toArgs[i]]]<-attrs[[seqArg]][i]
    }
    attrs[[seqArg]]<-NULL
  }
  attrs    
}
