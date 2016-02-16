context("ClipPath")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-ClipPath-1", {
WH=c(600, 100) # window rect
svgR( wh=WH,
    g(
      clip.path=clipPath( rect(cxy=c(0,50), wh=c(600,50))),
      circle( cxy=c(50,50), r=30, fill='darkblue'),
      circle( cxy=c(150,50), r=50, fill='red'  )
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<clipPath id="genid2">
<rect width="600" height="50" x="-300" y="25"/>
</clipPath>
<g clip-path="url(#genid2)">
<circle r="30" fill="darkblue" cx="50" cy="50"/>
<circle r="50" fill="red" cx="150" cy="50"/>
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
# test-ClipPath-2 Ommited!!!

# -----------------------------------------------------



