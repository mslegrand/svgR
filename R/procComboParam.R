
#used eleDefs
mapCenteredXY<-function(attrs){
  if( !is.null(attrs[["cxy"]])) {
    tryCatch( 
      cxy<-as.numeric(attrs[["cxy"]]),
      error=function(e){stop("cxy cannot be converted to numeric")}, 
      warning=function(w){stop("cxy cannot be converted to numeric")}
    )
    if(!is.null(attrs[["width"]]) & !is.null(attrs[["height"]]) ){
      tryCatch( 
        w<-as.numeric(attrs[["width"]]),
        error=function(e){stop("width cannot be converted to numeric")}, 
        warning=function(w){stop("width cannot be converted to numeric")}
      )
      tryCatch( 
        h<-as.numeric(attrs[["height"]]),
        error=function(e){stop("height cannot be converted to numeric")}, 
        warning=function(w){stop("height cannot be converted to numeric")}
      )
      wh<-c(w, h)
    } else if(!is.nulls[["wh"]]){
      tryCatch( 
        wh<-as.numeric(attrs[["wh"]]),
        error=function(e){stop("wh cannot be converted to numeric")}, 
        warning=function(w){stop("wh cannot be converted to numeric")}
      )
    }
    if(!exists("wh")){
      stop("cannot center due to missing wh (width, height)")
    }
    attrs[["xy"]]<- cxy - wh/2
    attrs[["cxy"]]<-NULL
    attrs<-attrSplitX(attrs,"x","y","xy")
  }
  attrs 
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


# cp is a combo param list: 
# for example
# cp=list(xy=c('x','y'), in12=c('in', 'in2'), wh=c('width','height'))
# used in eleDefs
comboParamHandler<-function(attrs, cp ){
  nacp<-names(cp)[match(names(cp),names(attrs),0)!=0]
  unlist(attrs[nacp])->tmp
  unlist(cp[nacp])->names4tmp
  if(length(names4tmp)!=length(tmp)){
    for(name in nacp){ #attempt to find exact name length mismatch
      if(length(attrs[[name]])!=length(cp[[name]])){
        base::stop("combo parameter ",name," length mismatch")
      }     
    } 
    #give up, but somethings wrong
    base::stop("combo param ",paste(nacp,collapse=" ")," length mismatch")
  }
  names4tmp->names(tmp)  
  tmp<-as.list(tmp)
  attrs[nacp]<-NULL
  attrs<-c(attrs, tmp)
  attrs
}

