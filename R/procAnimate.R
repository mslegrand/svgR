
#---------Animation------------

#  helper function for animate and set to handles comboParams with value 
#  to return a list with names aNames, containg the time seq val as vectors
#  we assume the input val is one of 3 forms
#  1. a named list with names==aNames and values the corresponding vals
#  2. a matrix whose rows values for each aName in aNames
#  3. a unnamed list which, cbinds to the above matrix.
extractValues<-function(val,aNames){ #for example aNames=c("x","y","z")
  # the strategy: convert val to a matrix with rows corresponding
  # to desired aName, then convert to list row-wise
  N<-length(aNames)
  stopifnot(N>0) #should be impossible!
  # if not in desired output form
  if(!(inherits(val,"list") & setequal( names(val), aNames) ) ){ #ow. this is what we wanted  
    if(!inherits(val, 'matrix')){
      val<-matrix(unlist(val), N,)
    }
    if(!(dim(val)[1]==N)){
      cbAttr<-paste(aNames)
      emssg1<-paste("Animated combo attribute, ",cbAttr,", has incorrect number of variables,\n")
      emssg2<-paste("Expecting",N," variables got ",dim(val)[1],"\n")
      base::stop(c(emssg1,emssg2))
    } 
    val<-split(val, 1:N)
    names(val)<-aNames
  }
  val
}

# used in elementDefs, but only by the 4 animation elements
mapAttributeName<-function(attrs){
  indx<-grep("attributeName",names(attrs))
  if(length(indx)>0){
    attrs[indx]<-gsub("\\.","-",attrs[indx])
  }
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
         tva<-ani.df[which(ani.df$V1==attributeName),1]
        attrs[[paramName]]=svgPreproc[[tva]](attrs[[paramName]])
      }
    } 
  }
  attrs
}

#used only by animate element in eleDefs
# preProcAnimate<-function(attrs){
#   if("attributeName" %in% names(attrs)){
#     attrs[["attributeName"]]<-sub('\\.',"-",attrs[["attributeName"]])
#   }
#   params<-c("from","to")
#   for(paramName in params){
#     attrs<-animateOneParamExpand(attrs, paramName)
#   }
#   attrs
# }


#used only by animate element in eleDefs
preProcAnimate<-function(attrs){
  if( identical('d',attrs[["attributeName"]] )){
    if(
      'from' %in% names(attrs) && 
      'to' %in% names(attrs) 
    ){
      v<-list(attrs$from, attrs$to)
      attrs$to<-attrs$from<-NULL
      attrs$values<-v
    }
    
    values<-attrs[['values']]
    if( is.list(values) && length(values)>0){
      values<-lapply(values, function(v){
        if(length(names(v))>0){
          v<-unlist(mapply(c,names(v) ,v), use.names=F)
        }
        v
      })
      attrs[['values']]<-values
    }
  }
  attrs
}
