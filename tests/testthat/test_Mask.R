context("Mask")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-Mask-1", {

WH=c(600, 100) # window rect
svgR( wh=WH,
  defs(
    mask(
      id="mask0",
      rect(cxy= WH/2, wh=c(600,40), fill='white'),
      rect(cxy= WH/2, wh=c(600,10), fill='black')
    )
  ),
  g(
    circle( cxy=c(50,50), r=30, fill='darkblue'),
    circle( cxy=c(150,50), r=30, fill='red'),
    mask="url(#mask0)"
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<defs>
<mask id="mask0">
<rect fill="white" width="600" height="40" x="0" y="30"/>
<rect fill="black" width="600" height="10" x="0" y="45"/>
</mask>
</defs>
<g mask="url(#mask0)">
<circle r="30" fill="darkblue" cx="50" cy="50"/>
<circle r="30" fill="red" cx="150" cy="50"/>
</g>
</svg>'
    res <- as.character(res)
    rlines <- str_trim(strsplit(res, "\n")[[1]])
    elines <- str_trim(strsplit(expected_res, "\n")[[1]])
    expect_equal(length(rlines), length(elines))
    for (i in length(rlines)) {
        expect_identical(rlines[i], elines[i])
    }
})
# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-Mask-2", {
WH=c(600, 100) # window rect
svgR( wh=WH,
    g( 
      circle( cxy=c(50,50), r=30, fill='darkblue'),
      circle( cxy=c(150,50), r=30, fill='red'),
      mask=mask(
        rect(cxy= WH/2, wh=c(600,40), fill='white'),
        rect(cxy= WH/2, wh=c(600,10), fill='black')
        )
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<mask id="genid2">
<rect fill="white" width="600" height="40" x="0" y="30"/>
<rect fill="black" width="600" height="10" x="0" y="45"/>
</mask>
<g mask="url(#genid2)">
<circle r="30" fill="darkblue" cx="50" cy="50"/>
<circle r="30" fill="red" cx="150" cy="50"/>
</g>
</svg>'
    res <- as.character(res)
    rlines <- str_trim(strsplit(res, "\n")[[1]])
    elines <- str_trim(strsplit(expected_res, "\n")[[1]])
    expect_equal(length(rlines), length(elines))
    for (i in length(rlines)) {
        expect_identical(rlines[i], elines[i])
    }
})
# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-Mask-3", {
WH=c(600, 100) # window rect
svgR( wh=WH,
    defs(
        mask(
        id="mask2", xy=c(0,0), wh=c(100,100),
        rect( xy=c(0,0),  wh=c(50,100), fill='white', stroke='none'),
        rect( xy=c(50,0), wh=c(50,100), fill='grey', stroke='none')
        )
    ),
    #rect(xy=c(0,0), wh=WH, fill='yellow'),
    text(xy=c(0,50),'hello all you brilliant data scientists', stroke='red',fill='white'),
    circle( cxy=c(50,50), r=39, fill='darkblue', mask="url(#mask2)"
             )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<defs>
<mask id="mask2" width="100" height="100" x="0" y="0">
<rect fill="white" stroke="none" width="50" height="100" x="0" y="0"/>
<rect fill="grey" stroke="none" width="50" height="100" x="50" y="0"/>
</mask>
</defs>
<text stroke="red" fill="white" x="0" y="50">hello all you brilliant data scientists</text>
<circle r="39" fill="darkblue" mask="url(#mask2)" cx="50" cy="50"/>
</svg>'
    res <- as.character(res)
    rlines <- str_trim(strsplit(res, "\n")[[1]])
    elines <- str_trim(strsplit(expected_res, "\n")[[1]])
    expect_equal(length(rlines), length(elines))
    for (i in length(rlines)) {
        expect_identical(rlines[i], elines[i])
    }
})
# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-Mask-4", {
WH=c(600, 100) # window rect
svgR( wh=WH,
    defs(
        mask(
        id="mask3", xy=c(0,0), wh=c(100,100),
        rect( xy=c(0,0),  wh=c(50,100), fill='rgb(190,190,130)', stroke='none'),
        rect( xy=c(50,0), wh=c(50,100), fill='grey', stroke='none')
        )
    ),
    #rect(xy=c(0,0), wh=WH, fill='yellow'),
    text(xy=c(0,50),'hello all you brilliant data scientists', stroke='red',fill='white'),
    circle( cxy=c(50,50), r=39, fill='darkblue', mask="url(#mask3)"
             )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<defs>
<mask id="mask3" width="100" height="100" x="0" y="0">
<rect fill="rgb(190,190,130)" stroke="none" width="50" height="100" x="0" y="0"/>
<rect fill="grey" stroke="none" width="50" height="100" x="50" y="0"/>
</mask>
</defs>
<text stroke="red" fill="white" x="0" y="50">hello all you brilliant data scientists</text>
<circle r="39" fill="darkblue" mask="url(#mask3)" cx="50" cy="50"/>
</svg>'
    res <- as.character(res)
    rlines <- str_trim(strsplit(res, "\n")[[1]])
    elines <- str_trim(strsplit(expected_res, "\n")[[1]])
    expect_equal(length(rlines), length(elines))
    for (i in length(rlines)) {
        expect_identical(rlines[i], elines[i])
    }
})
# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-Mask-5", {
WH=c(600, 100) # window rect
svgR( wh=WH,
  pattern(
    id="pattern2", xy=c(5,5), wh=c(10,10), patternUnits="userSpaceOnUse" ,
    circle(cxy=c(5,5), r=5, fill='white')
  ),  
  mask( id="mask5", xy=c(0,0), wh=WH,
    rect(xy=c(0,0), wh=WH, fill="black"),
    rect(xy=c(0,0), wh=WH, fill="url(#pattern2)")
  ),
  text(xy=c(0,50),'hello all you brilliant data scientists', stroke='black',font.size=30,
        mask="url(#mask5)"
       )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<pattern id="pattern2" patternUnits="userSpaceOnUse" width="10" height="10" x="5" y="5">
<circle r="5" fill="white" cx="5" cy="5"/>
</pattern>
<mask id="mask5" width="600" height="100" x="0" y="0">
<rect fill="black" width="600" height="100" x="0" y="0"/>
<rect fill="url(#pattern2)" width="600" height="100" x="0" y="0"/>
</mask>
<text stroke="black" font-size="30" mask="url(#mask5)" x="0" y="50">hello all you brilliant data scientists</text>
</svg>'
    res <- as.character(res)
    rlines <- str_trim(strsplit(res, "\n")[[1]])
    elines <- str_trim(strsplit(expected_res, "\n")[[1]])
    expect_equal(length(rlines), length(elines))
    for (i in length(rlines)) {
        expect_identical(rlines[i], elines[i])
    }
})
# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-Mask-6", {
WH=c(600, 200) # window rect
svgR( wh=WH,
  pattern(
      id="pattern3", xy=c(10,10), wh=c(20,20), patternUnits="userSpaceOnUse" ,
      circle(cxy=c(10,10), r=10, fill='green')
  ),
  g(
    rect(xy=c(0,0), wh=WH, fill='orange'),
    ellipse( cxy=c(55,60), rxy=c(55,25), fill="url(#pattern3)")
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<pattern id="pattern3" patternUnits="userSpaceOnUse" width="20" height="20" x="10" y="10">
<circle r="10" fill="green" cx="10" cy="10"/>
</pattern>
<g>
<rect fill="orange" width="600" height="200" x="0" y="0"/>
<ellipse fill="url(#pattern3)" cx="55" cy="60" rx="55" ry="25"/>
</g>
</svg>'
    res <- as.character(res)
    rlines <- str_trim(strsplit(res, "\n")[[1]])
    elines <- str_trim(strsplit(expected_res, "\n")[[1]])
    expect_equal(length(rlines), length(elines))
    for (i in length(rlines)) {
        expect_identical(rlines[i], elines[i])
    }
})
# -----------------------------------------------------



