#test script
 library(testthat)
# source("xmlNode.R")

#-----------------
test_that("new.XmlNode class",{
  nd2<-XMLAbstractNode$new("circle", attrs=list(x=100,y=50, radius=30))
  expectedResult<-"XMLAbstractNode"
  expect_true(inherits(nd2, expectedResult))
}
)
#-----------------


#-----------------
test_that("xmlNode asCharacter",{
  nd2<-XMLAbstractNode$new("circle", attrs=list(x=100,y=50, radius=30))
  nd1<-XMLAbstractNode$new("rect", attrs=list(x=200,y=10, width=30, height=20))
  nd0<-XMLAbstractNode$new("g", 
                  .children=list(nd1,nd2))
  ndR<-XMLAbstractNode$new("svg", attrs=list(x=0,y=0, width=600, height=200),
                  .children=list(nd0))
  
  expectedResult<-"<svg x='0' y='0' width='600' height='200'>\n  <g>\n      <rect x='200' y='10' width='30' height='20'/>\n      <circle x='100' y='50' radius='30'/>\n  </g>\n</svg>"
  expect_equal(expectedResult, asCharacter(ndR))
}
)
#-----------------
test_that("xmlDataNode",{
  expectRes<-"<![CDATA[\nvar Roof;\nfunction(x)={x+1};\n]]>"
  dnD<-XMLCDataNode$new(.children=list("var Roof;","function(x)={x+1};" ))
  expect_equal(asCharacter(dnD), expectRes)
})



#-----------------
test_that("XMLAbstractNode findNode",{
  nd2<-XMLAbstractNode$new("circle", attrs=list(x=100,y=50, radius=30))
  nd1<-XMLAbstractNode$new("rect", attrs=list(x=200,y=10, width=30, height=20))
  nd0<-XMLAbstractNode$new("g", 
                  .children=list(nd1,nd2))
  ndR<-XMLAbstractNode$new("svg", attrs=list(x=0,y=0, width=600, height=200),
                  .children=list(nd0))
  
  
  expect_identical(nd2, ndR$findNode( "radius", 30))
  expect_identical(NULL, ndR$findNode( "radius", 10))
  expect_identical(NULL, ndR$findNode( "beans", 30))
  
})
#-----------------

 #-----------------
 test_that("XMLTextNode findNode ",{
   nd3<-XMLAbstractNode$new("text", attrs=list(x=100,y=50, radius=30))
   nd2<-XMLAbstractNode$new("circle", attrs=list(x=100,y=50, radius=30))
   nd1<-XMLAbstractNode$new("rect", attrs=list(x=200,y=10, width=30, height=20))
   nd0<-XMLAbstractNode$new("g", 
                            .children=list(nd1,nd2,nd3))
   ndR<-XMLAbstractNode$new("svg", attrs=list(x=0,y=0, width=600, height=200),
                            .children=list(nd0))
   
   
   expect_identical(nd2, ndR$findNode( "radius", 30))
   expect_identical(NULL, ndR$findNode( "radius", 10))
   expect_identical(NULL, ndR$findNode( "beans", 30))
   
 })
 #-----------------
 

# 
# #-----------------
# test_that("setNodeAt",{
#   nd2<-XMLAbstractNode$new("circle", attrs=list(x=100,y=50, radius=30))
#   nd1<-XMLAbstractNode$new("rect", attrs=list(x=200,y=10, width=30, height=20))
#   nd0<-XMLAbstractNode$new("g", 
#                   .children=list(nd1,nd2))
#   ndR<-XMLAbstractNode$new("svg", attrs=list(x=0,y=0, width=600, height=200),
#                   .children=list(nd0))
#   md4<-XMLAbstractNode$new("ellipse", attrs=list(cx=200,cy=10, rx=30, ry=20))
#   
#   
#   expectRes<-"<svg x='0' y='0' width='600' height='200'>\n  <g>\n      <rect x='200' y='10' width='30' height='20'/>\n      <ellipse cx='200' cy='10' rx='30' ry='20'/>\n  </g>\n</svg>"
#   setNodeAt(ndR,c(1,2,0),md4)
#   expect_equal(asCharacter(ndR), expectRes)
# })
# #-----------------
# 
# 
# #-----------------
# test_that("setAttrsAt",{
#   nd2<-XMLAbstractNode$new("ellipse", attrs=list(cx=200,cy=10, rx=30, ry=20))
#   nd1<-XMLAbstractNode$new("rect", attrs=list(x=200,y=10, width=30, height=20))
#   nd0<-XMLAbstractNode$new("g", 
#                   .children=list(nd1,nd2))
#   ndR<-XMLAbstractNode$new("svg", attrs=list(x=0,y=0, width=600, height=200),
#                   .children=list(nd0))
#   
#   expectRes1<-"<svg x='0' y='0' width='600' height='200'>\n  <g>\n      <rect x='200' y='10' width='30' height='20'/>\n      <ellipse cx='200' cy='10' rx='30' ry='20'/>\n  </g>\n</svg>"
#   expectRes2<-"<svg x='0' y='0' width='600' height='200'>\n  <g>\n      <rect x='200' y='10' width='30' height='20'/>\n      <ellipse cx='10' cy='50' rx='25' ry='22' fill='red'/>\n  </g>\n</svg>"
#   expect_equal(asCharacter(ndR), expectRes1)
#   setAttrsAt(ndR, c(1,2,0), list(cx=10, cy=50,rx=25, ry=22, fill='red'))
#   expect_equal(asCharacter(ndR), expectRes2)
# })
# #-----------------
# 
# 
# #-----------------
# test_that("setChildrenAt",{
#   nd2<-XMLAbstractNode$new("ellipse", attrs=list(cx=200,cy=10, rx=30, ry=20))
#   nd1<-XMLAbstractNode$new("rect", attrs=list(x=200,y=10, width=30, height=20))
#   nd0<-XMLAbstractNode$new("g", 
#                   .children=NULL)
#   ndR<-XMLAbstractNode$new("svg", attrs=list(x=0,y=0, width=600, height=200),
#                   .children=list(nd0))
#   
#   expectRes1<-"<svg x='0' y='0' width='600' height='200'>\n  <g/>\n</svg>"
#   
#   setChildrenAt(ndR, c(1), .children=list(nd1,nd2))
#   expectRes2<-"<svg x='0' y='0' width='600' height='200'>\n  <g>\n      <rect x='200' y='10' width='30' height='20'/>\n      <ellipse cx='200' cy='10' rx='30' ry='20'/>\n  </g>\n</svg>"
#   expect_equal(asCharacter(ndR), expectRes2)
# })
# #-----------------
# 
# 
# 
#-----------------
test_that("XMLTextNode1",{
  md1<-XMLTextNode$new( .children=list("hello"))
  expect_equal(asCharacter(md1), "hello")
})
#-----------------
 
# #-----------------
test_that("XMLTextNode2",{
  md1<-XMLTextNode$new( .children=list("hello","there"))
  expect_equal(asCharacter(md1), "hello there")
})
# #-----------------

#-----------------
test_that("tspan as XMLTextNode",{
  md1<-XMLTextNode$new( .children=list("hello","there"))
  md2<-XMLAbstractNode$new("tspan", .children=list(md1))
  expect_equal(asCharacter(md2), "<tspan>hello there</tspan>")
})
#-----------------

#-----------------
test_that("tspan*2 as XMLTextNode",{
  md10<-XMLTextNode$new( .children=list("hello"))
  md20<-XMLAbstractNode$new("tspan", .children=list(md10))
  md11<-XMLTextNode$new( .children=list("there"))
  md21<-XMLAbstractNode$new("tspan", .children=list(md11))
  mdF<-XMLAbstractNode$new("text", .children=list(md20,md21))
  res<-asCharacter(mdF)
  expect_equal(asCharacter(mdF), "<text>\n  <tspan>hello</tspan>\n  <tspan>there</tspan>\n</text>")
})
#-----------------

# 
# #-----------------
# test_that("text with span as XMLTextNode",{
#   spanThere<-XMLTextNode$new("span", .children=list("there"))
#   spanGood<-XMLTextNode$new("span", .children=list("very","good"))
#   mdtxt<-XMLTextNode$new("text", 
#                         attrs=list(x=20,y=80),
#                         .children=list("Hello",spanThere, "my", spanGood, "friend")
#   )
#   expRes<-"<text x='20' y='80'>Hello<span>there</span>my<span>very good</span>friend</text>"
#   expect_equal(asCharacter(mdtxt), expRes)
# })
# #-----------------

# # 
# # # test set and get
# # nd2<-XMLAbstractNode$new("ellipse", attrs=list(cx=200,cy=10, rx=30, ry=20))
# # nd1<-XMLAbstractNode$new("rect", attrs=list(x=200,y=10, width=30, height=20))
# # nd0<-XMLAbstractNode$new("g", 
# #                 .children=list(nd1,nd2))
# # ndR<-XMLAbstractNode$new("svg", attrs=list(x=0,y=0, width=600, height=200),
# #                 .children=list(nd0))
# # path<-c(1,2,0)
# # 
# # # getNodeAt(ndR, path)->rNode
# # # 
# # # cat(asCharacter(rNode))
# # # 
# # # 
# # # md4<-XMLAbstractNode$new("ellipse", attrs=list(cx=200,cy=10, rx=30, ry=20))
# # # 
# # # setNodeAt(ndR,path,md4)
# # cat(asCharacter(ndR))
# # 
# # 
# # setAttrsAt(ndR, path, list(cx=10, cy=50,rx=25, ry=22, fill='red'))
# # cat(asCharacter(ndR))
# # asCharacter(ndR)
# # 
