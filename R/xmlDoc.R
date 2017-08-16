
# not sure, may want to consider having a dedicated environment 
# for this doc
# newXMLDoc<-function(dtd = "", namespaces=NULL,  
#                     name = character(), node = newXMLNode(tagName="svg")){
#   structure(
#     list(
#       name=name,
#       dtd=dtd,
#       namespaces=namespaces,
#       root=node
#     ),
#     class="xmlDoc"
#   ) 
# }

xmlRoot<-function(doc, skip = TRUE, ...){
  return(doc$root)
}


# newXMLDoc<-function(dtd = "", namespaces=NULL,  
#                     name = character(), node = newXMLNode()){
#   structure(
#     list(
#       name=name,
#       dtd=dtd,
#       namespaces=namespaces,
#       root=node
#     ),
#     class="xmlDoc"
#   ) 
# }

#getNodeSet

# getNode=function(doc,id){
#   if(id=='/' || id=='root'){
#     return(xmlRoot(doc)) # so root need not be the id of the root  node
#   }
#   # if id matches return this
#   # else search children
#   
#   # to search for all nodes for a matching id
#   
#   #kidV <- getNodeSet(doc$top, paste("//*[@id=\"", id, "\"]", sep=""))
#   kidV <- getNodeSet(doc, paste("//*[@id=\"", id, "\"]", sep=""))
#   if (length(kidV)==0){
#     stop("Cannot find node with id=",id)
#   }
#   kidV[[1]]
# }
# 
# 
# 
