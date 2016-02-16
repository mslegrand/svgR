context("filter-DropShadows")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-filter-DropShadows-1", {
WH=c(800, 120) # window rect
svgR( wh=WH,
  text( 'svgR', xy=c(50,70), font.size=50,  fill="lightblue", stroke="darkblue",
    filter = filter( xy=c(-10,-10), wh=c(200,60),
              feBlend( x=-10, width=200, 
                in1="SourceGraphic", 
                in2=feGaussianBlur( stdDeviation=3, in1=feOffset( dxy=c(3,3), in1="SourceAlpha") )
              )
      )   
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="120">
<filter width="200" height="60" x="-10" y="-10" id="genid4">
<feOffset in="SourceAlpha" dx="3" dy="3" result="genid2"/>
<feGaussianBlur stdDeviation="3" in="genid2" result="genid3"/>
<feBlend x="-10" width="200" in="SourceGraphic" in2="genid3"/>
</filter>
<text font-size="50" fill="lightblue" stroke="darkblue" filter="url(#genid4)" x="50" y="70">svgR</text>
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
test_that("test-filter-DropShadows-2", {
WH=c(600, 120) # window rect
svgR( wh=WH,
  defs( 
    filter(
      id="blendFilter2", xy=c(-10,-10), wh=c(200,100),
      feOffset( in1="SourceAlpha", dxy=c(3,3), result="offset2"), 
      feGaussianBlur(in1="offset2", stdDeviation=3, result="blur2"),
      feBlend( in1="SourceGraphic",  in2="blur2", x=-10, width=200)
    )         
  ),
  text( 'svgR', xy=c(50,70), font.size=50,  fill="lightblue", stroke="darkblue",
           filter="url(#blendFilter2)")
  
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="120">
<defs>
<filter id="blendFilter2" width="200" height="100" x="-10" y="-10">
<feOffset in="SourceAlpha" result="offset2" dx="3" dy="3"/>
<feGaussianBlur in="offset2" stdDeviation="3" result="blur2"/>
<feBlend in="SourceGraphic" in2="blur2" x="-10" width="200"/>
</filter>
</defs>
<text font-size="50" fill="lightblue" stroke="darkblue" filter="url(#blendFilter2)" x="50" y="70">svgR</text>
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
# test-filter-DropShadows-3 Ommited!!!

# -----------------------------------------------------



