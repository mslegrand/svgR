
#called by svgR
svgRRoot<-function( wh, args){
  #specific to svgRoot
  
  #   namespaceDefinitions<-as.list(namespaceDefinitions)
  namespaceDefinitions<- c(
    xmlns="http://www.w3.org/2000/svg",
    "xmlns:xlink"="http://www.w3.org/1999/xlink",
    "xmlns:xlink"="http://www.w3.org/1999/xlink",
    "xmlns:ev"="http://www.w3.org/2001/xml-events"
  )
  
  #args<-c(namespaceDefinitions,args)
  args <- promoteUnamedLists(args)
  attrs <- named(args)
  attrs <- comboParamHandler(attrs, list(wh = c("width", "height")))
  
  attrs<-preprocSpAttrs(attrs, 
                        specs=c("requiredExtensions", "requiredFeatures", "class", "preserveAspectRatio"), 
                        sep="wsp-list"
  )
  attrs<-preprocSpAttrs(attrs, 
                        specs=c("systemLanguage", "viewBox"),
                        sep="cmm-list"
  )
  attrs<-preprocSpAttrs(attrs, 
                        specs=c("style"),
                        sep="cln-scln-list"
  )
  
  attrs<-c(namespaceDefinitions, attrs)
  
  root<-XMLAbstractNode$new("svg", 
                            attrs=attrs,
                            .children=unnamed(args)
  )
}
