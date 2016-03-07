context("filter-Coordinates")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-filter-Coordinates-1", {
WH=c(800, 160) # window rect
svgR( wh=WH,
  rect( xy=c(40,40), wh=c(120,40), stroke="black", fill="blue", fill.opacity=0.5,
         filter=filter(  wh=c(2,2), 
           feOffset(  dxy=c(80, 20), in1="SourceGraphic")
         )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="160">
<filter width="2" height="2" id="genid2">
<feOffset in="SourceGraphic" dx="80" dy="20"/>
</filter>
<rect stroke="black" fill="blue" fill-opacity="0.5" filter="url(#genid2)" width="120" height="40" x="40" y="40"/>
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
test_that("test-filter-Coordinates-2", {
WH=c(800, 160) # window rect
svgR( wh=WH,
  rect(xy=c(40,40), wh=c(120,40), stroke="green", fill="green", fill.opacity=0.2 ), 
  rect(xy=c(40,40), wh=c(200,60), stroke="red",   fill="none"),
  rect( xy=c(40,40), wh=c(120,40), stroke="blue", fill="blue", fill.opacity=0.5,
         filter=filter(  wh=c(2,2), 
           feOffset(  dxy=c(80, 20), in1="SourceGraphic")
         )
  ),
  text("xy", cxy=c(27,27), stroke='green'),
  text("w", xy=c(122,120), stroke='red'),
  text("h", xy=c(245,80), stroke='red')
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="160">
<rect stroke="green" fill="green" fill-opacity="0.2" width="120" height="40" x="40" y="40"/>
<rect stroke="red" fill="none" width="200" height="60" x="40" y="40"/>
<filter width="2" height="2" id="genid3">
<feOffset in="SourceGraphic" dx="80" dy="20"/>
</filter>
<rect stroke="blue" fill="blue" fill-opacity="0.5" filter="url(#genid3)" width="120" height="40" x="40" y="40"/>
<text stroke="green" text-anchor="middle" dominant-baseline="central" x="27" y="27">xy</text>
<text stroke="red" x="122" y="120">w</text>
<text stroke="red" x="245" y="80">h</text>
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
test_that("test-filter-Coordinates-3", {
WH=c(800, 120) # window rect
svgR( wh=WH,
  rect( xy=c(40,40), wh=c(120,40), stroke="black", fill="none"), 
  rect( xy=c(40,40), wh=c(120,40), stroke="black", fill="blue", fill.opacity=0.2 ,
         filter=filter( wh=c(200,80), xy=c(40,40), 
                        filterUnits="userSpaceOnUse",
           feOffset(  dxy=c(80, 20), in1="SourceGraphic")
         )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="120">
<rect stroke="black" fill="none" width="120" height="40" x="40" y="40"/>
<filter filterUnits="userSpaceOnUse" width="200" height="80" x="40" y="40" id="genid4">
<feOffset in="SourceGraphic" dx="80" dy="20"/>
</filter>
<rect stroke="black" fill="blue" fill-opacity="0.2" filter="url(#genid4)" width="120" height="40" x="40" y="40"/>
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
test_that("test-filter-Coordinates-4", {
WH=c(800, 120) # window rect
svgR( wh=WH,
  rect( xy=c(40,40), wh=c(120,40), stroke="black", fill="none"), 
  rect( xy=c(40,40), wh=c(120,40), stroke="black", fill="blue", fill.opacity=0.2 ,
         filter=filter( wh=c(160,60), xy=c(0,20), 
                        filterUnits="userSpaceOnUse",
           feOffset(  dxy=c(-40, -20), in1="SourceGraphic")
         )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="120">
<rect stroke="black" fill="none" width="120" height="40" x="40" y="40"/>
<filter filterUnits="userSpaceOnUse" width="160" height="60" x="0" y="20" id="genid5">
<feOffset in="SourceGraphic" dx="-40" dy="-20"/>
</filter>
<rect stroke="black" fill="blue" fill-opacity="0.2" filter="url(#genid5)" width="120" height="40" x="40" y="40"/>
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
test_that("test-filter-Coordinates-5", {
WH=c(800, 120) # window rect
svgR( wh=WH,
  rect( xy=c(40,40), wh=c(120,40), stroke="black", fill="none"), 
  rect( xy=c(40,40), wh=c(120,40), stroke="black", fill="blue", fill.opacity=0.2 ,
         filter=filter( wh=c(4/3,3/2), xy=c(-1/3, -1/2), 
                        filterUnits="objectBoundingBox",
           feOffset(  dxy=c(-40, -20), in1="SourceGraphic")
         )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="120">
<rect stroke="black" fill="none" width="120" height="40" x="40" y="40"/>
<filter filterUnits="objectBoundingBox" width="1.33333333333333" height="1.5" x="-0.333333333333333" y="-0.5" id="genid6">
<feOffset in="SourceGraphic" dx="-40" dy="-20"/>
</filter>
<rect stroke="black" fill="blue" fill-opacity="0.2" filter="url(#genid6)" width="120" height="40" x="40" y="40"/>
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



