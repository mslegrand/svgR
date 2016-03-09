
#--- helper preprocessing

preprocSpAttrs<-function(attrs, specs, sep){
  if(length(attrs)>0){
    indx<-match(specs,names(attrs),0L)
    indx<-indx[indx!=0L]
    if(length(indx)>0){
      attrs[indx] <- lapply(attrs[indx], function(x) {
        svgPreproc[[sep]](x)
      })
    }
  }
  attrs
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
        
        base::stop("expecting transform matrix to be dimension 2 x 3")
      }
    }
    return(paste(x, collapse=" "))
  } 
)

