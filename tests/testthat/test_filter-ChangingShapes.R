context("filter-ChangingShapes")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-filter-ChangingShapes-1", {
WH=c(800, 220) # window rect
svgR( wh=WH,
  text( 'svgR without feMorphology', xy=c(20,80), font.size=60, stroke="red", fill="none"), 
  text( 'svgR feMorphology dilate=3', xy=c(20,160), font.size=60, stroke="red", fill="none", 
        filter=filter(
          feMorphology(radius=3, operator='dilate')
        )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="220">
<text font-size="60" stroke="red" fill="none" x="20" y="80">svgR without feMorphology</text>
<filter id="genid2">
<feMorphology radius="3" operator="dilate"/>
</filter>
<text font-size="60" stroke="red" fill="none" filter="url(#genid2)" x="20" y="160">svgR feMorphology dilate=3</text>
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
test_that("test-filter-ChangingShapes-2", {
WH=c(800, 220) # window rect
svgR( wh=WH,
  text( 'svgR without feMorphology', xy=c(20,80), font.size=60, stroke="red", fill="blue"), 
  text( 'svgR feMorphology dilate=3', xy=c(20,160), font.size=60, stroke="red", fill="blue", 
        filter=filter(
          feMorphology(radius=2, operator='dilate')
        )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="220">
<text font-size="60" stroke="red" fill="blue" x="20" y="80">svgR without feMorphology</text>
<filter id="genid3">
<feMorphology radius="2" operator="dilate"/>
</filter>
<text font-size="60" stroke="red" fill="blue" filter="url(#genid3)" x="20" y="160">svgR feMorphology dilate=3</text>
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
test_that("test-filter-ChangingShapes-3", {
WH=c(800, 220) # window rect
svgR( wh=WH,
  text( 'svgR without feMorphology', xy=c(20,80), font.size=60, stroke="red", fill="blue"), 
  text( 'svgR feMorphology erode=3', xy=c(20,160), font.size=60, stroke="red", fill="blue", 
        filter=filter(
          feMorphology(radius=2, operator='erode')
        )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="220">
<text font-size="60" stroke="red" fill="blue" x="20" y="80">svgR without feMorphology</text>
<filter id="genid4">
<feMorphology radius="2" operator="erode"/>
</filter>
<text font-size="60" stroke="red" fill="blue" filter="url(#genid4)" x="20" y="160">svgR feMorphology erode=3</text>
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



