context("Simple Elements")
library(stringr)
#assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------


test_that("script element", {  
  svgR(script("xxx"))->tmp
  expected_res<-
    "<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' ev='http://www.w3.org/2001/xml-events' width='1150' height='860'>\n  <script type='application/ecmascript'><![CDATA[\n  xxx\n  ]]></script>\n</svg>"
  res<-as.character(tmp)
  rlines <- str_trim(strsplit(res, "\n")[[1]])
  elines <- str_trim(strsplit(expected_res, "\n")[[1]])
  expect_equal(length(rlines), length(elines))
  for (i in length(rlines)) {
    expect_equal(rlines[i], elines[i])
  }
})


test_that("text element", {
  svgR(text(xy=c(0,0),'hello'))->res
  res<-as.character(res) 
  expected_res<-
  "<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ev=\"http://www.w3.org/2001/xml-events\" width=\"860\">\n  <text x=\"0\" y=\"0\">hello</text>\n</svg>"  
  rlines <- str_trim(strsplit(res, "\n")[[1]])
  elines <- str_trim(strsplit(expected_res, "\n")[[1]])
  expect_equal(length(rlines), length(elines))
  for (i in length(rlines)) {
    expect_equal(rlines[i], elines[i])
  }
})

test_that("indexing", {
  svgR( circle(id='mycircle', cxy=c(0,0))
    )->doc
  res1<-as.character(doc)
  doc[['mycircle']](r=50, fill='red')
  res2<-as.character(doc)
  
  expected_res1<-
    "<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' ev='http://www.w3.org/2001/xml-events' width='1150' height='860'>\n  <circle id='mycircle' cx='0' cy='0'/>\n</svg>"
  expected_res2<-
    "<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' ev='http://www.w3.org/2001/xml-events' width='1150' height='860'>\n  <circle id='mycircle' cx='0' cy='0' r='50' fill='red'/>\n</svg>"  
  rlines <- str_trim(strsplit(res1, "\n")[[1]])
  elines <- str_trim(strsplit(expected_res1, "\n")[[1]])
  expect_equal(length(rlines), length(elines))
  for (i in length(rlines)) {
    expect_equal(rlines[i], elines[i])
  }
  rlines <- str_trim(strsplit(res2, "\n")[[1]])
  elines <- str_trim(strsplit(expected_res2, "\n")[[1]])
  expect_equal(length(rlines), length(elines))
  for (i in length(rlines)) {
    expect_equal(rlines[i], elines[i])
  }
})

test_that("indexing with bad id", {
  svgR( circle(id='mycircle', cxy=c(0,0))
  )->doc
  res1<-as.character(doc)
  expect_error(doc[['badid']](r=50, fill='red'))
})


test_that("text tspan element-simple", {
  svgR(text(xy=c(0,0),tspan('hello')))->res
  res<-as.character(res)
  expected_res<-
    "<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ev=\"http://www.w3.org/2001/xml-events\" width=\"860\">\n  <text x=\"0\" y=\"0\">\n    <tspan>hello</tspan>\n  </text>\n</svg>"
  
  rlines <- str_trim(strsplit(res, "\n")[[1]])
  elines <- str_trim(strsplit(expected_res, "\n")[[1]])
  expect_equal(length(rlines), length(elines))
  for (i in length(rlines)) {
    expect_equal(rlines[i], elines[i])
  }
})
# test_that("text- tspan element staggerd", {
#   svgR(text(xy=c(0,0),'hello', tspan('there'), 'my', tspan('friend')))->res
#   res<-as.character(res)
#   expected_res<-
#     "<svg ='http://www.w3.org/2000/svg' xlink='http://www.w3.org/1999/xlink' ev='http://www.w3.org/2001/xml-events' width='1150' height='860'>\n  <text x='0' y='0'>\n      hello\n      <tspan>there</tspan>\n      my\n      <tspan>friend</tspan>\n  </text>\n</svg>"  
#   rlines <- str_trim(strsplit(res, "\n")[[1]])
#   elines <- str_trim(strsplit(expected_res, "\n")[[1]])
#   expect_equal(length(rlines), length(elines))
#   for (i in length(rlines)) {
#     expect_equal(rlines[i], elines[i])
#   }
# })
# 

  
  
 