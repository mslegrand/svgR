# tmpFn<-function(...){
#   x<-list(...)
#   x
# }
# library(XML)
# svgMarkup.new<-function(width=1150, height=860, namespaceDefinitons=NULL,  ... ){
#   args<-c(list( width=width, height=height), list(...))
#   if( is.null(args[["namespaceDefinitons"]]) ){
#     namespaceDefinitions<- c(
#       "http://www.w3.org/2000/svg",
#       xlink="http://www.w3.org/1999/xlink",
#       ev="http://www.w3.org/2001/xml-events"
#     )
#   } else {
#     namespaceDefinitions<-args[["namespaceDefiniton"]]
#     args[["namespaceDefiniton"]]<-NULL
#   } 
#   args[["id"]]<-"rootNode"
#   args <- promoteUnamedLists(args)
#   attrs <- named(args)
#   attrs <- attrSplitX(attrs, "width", "height", "wh")
#   attrs <- attrSplitX(attrs, "x", "y", "xy")
#   attrs <- mapCenteredXY(attrs)
#   indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
#                                                        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class preserveAspectRatio"))
#   attrs[indx] <- lapply(attrs[indx], function(x) {
#     svgPreproc[["wsp-list"]](x)
#   })
#   indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
#                                                        x, "($| )", sep = ""), "systemLanguage viewBox"))
#   attrs[indx] <- lapply(attrs[indx], function(x) {
#     svgPreproc[["cmm-list"]](x)
#   })
#   indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
#                                                        x, "($| )", sep = ""), "style"))
#   attrs[indx] <- lapply(attrs[indx], function(x) {
#     svgPreproc[["cln-scln-list"]](x)
#   })
#   rootNode<-newXMLNode("svg", attrs=attrs, 
#                        namespaceDefinitions = namespaceDefinitions, 
#                        .children=unnamed(args)) 
#     
#   #todo: add options? (such as duration)
#   doc<-structure(list(rootNode=rootNode, time=0), class="svgDoc", 
#                  wh=c(width,height), delta=1)
#   doc
# }
# 
# svgM<-svgMarkup.new(width="12cm", height="12cm", viewBox=c(100, 0, 500, 300), version=1.1)
# #svgM<-svgMarkup.new()
# # 
#  print(svgM$rootNode)
# width="12cm"
# height="12cm"
# viewBox=c(100, 0, 500, 300)
