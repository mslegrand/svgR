context("filter-GaussianBlur")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-filter-GaussianBlur-1", {
WH=c(800, 100) # window rect
svgR( wh=WH,
  text(xy=c(20,15), "On the left, the original shape, on the right, the shape with a gaussian blur applied"),
  text( 'svgR', xy=c(50,80), font.size=50, fill="blue"),
  text( 'svgR', xy=c(250,80), font.size=50, fill="blue",
           filter=filter( y=-5, height=40, feGaussianBlur(in1="SourceGraphic", stdDeviation=3, y="-"))
      ),
  text( 'svgR', xy=c(450,80), font.size=50, fill="blue",
           filter=filter( y=-5, height=40, feGaussianBlur(in1="SourceAlpha", stdDeviation=3, y="-"))
      ),
  text( 'svgR', xy=c(650,80), font.size=50, fill="blue",
           filter=filter( y=-5, height=40, feGaussianBlur(in1="SourceGraphic", stdDeviation=c(8,0), y="-"))
      )
  
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<text x="20" y="15">On the left, the original shape, on the right, the shape with a gaussian blur applied</text>
<text font-size="50" fill="blue" x="50" y="80">svgR</text>
<filter y="-5" height="40" id="genid2">
<feGaussianBlur in="SourceGraphic" stdDeviation="3" y="-"/>
</filter>
<text font-size="50" fill="blue" filter="url(#genid2)" x="250" y="80">svgR</text>
<filter y="-5" height="40" id="genid3">
<feGaussianBlur in="SourceAlpha" stdDeviation="3" y="-"/>
</filter>
<text font-size="50" fill="blue" filter="url(#genid3)" x="450" y="80">svgR</text>
<filter y="-5" height="40" id="genid4">
<feGaussianBlur in="SourceGraphic" stdDeviation="8,0" y="-"/>
</filter>
<text font-size="50" fill="blue" filter="url(#genid4)" x="650" y="80">svgR</text>
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
test_that("test-filter-GaussianBlur-2", {
WH=c(800, 100) # window rect
svgR( wh=WH,
  defs( 
    filter(id="blurFilter1", y=-5, height=40,
      feGaussianBlur(in1="SourceGraphic", stdDeviation=3, y="-")
    ),          
    filter(id="blurFilter2", y=-5, height=40,
      feGaussianBlur(in1="SourceAlpha", stdDeviation=3, y="-")
    ),           
    filter(id="blurFilter3", y=-5, height=40,
      feGaussianBlur(in1="SourceGraphic", stdDeviation=c(8,0), y="-")
    )   
  ),
  text( 'svgR', xy=c(50,80),  font.size=50, fill="blue"),
  text( 'svgR', xy=c(250,80), font.size=50, fill="blue", filter="url(#blurFilter1)"),
  text( 'svgR', xy=c(450,80), font.size=50, fill="blue", filter="url(#blurFilter2)"),
  text( 'svgR', xy=c(650,80), font.size=50, fill="blue", filter="url(#blurFilter3)")
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<defs>
<filter id="blurFilter1" y="-5" height="40">
<feGaussianBlur in="SourceGraphic" stdDeviation="3" y="-"/>
</filter>
<filter id="blurFilter2" y="-5" height="40">
<feGaussianBlur in="SourceAlpha" stdDeviation="3" y="-"/>
</filter>
<filter id="blurFilter3" y="-5" height="40">
<feGaussianBlur in="SourceGraphic" stdDeviation="8,0" y="-"/>
</filter>
</defs>
<text font-size="50" fill="blue" x="50" y="80">svgR</text>
<text font-size="50" fill="blue" filter="url(#blurFilter1)" x="250" y="80">svgR</text>
<text font-size="50" fill="blue" filter="url(#blurFilter2)" x="450" y="80">svgR</text>
<text font-size="50" fill="blue" filter="url(#blurFilter3)" x="650" y="80">svgR</text>
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
test_that("test-filter-GaussianBlur-3", {
WH=c(800, 100) # window rect
svgR( wh=WH,
  rect(xy=c(0,0), wh=WH, 
    fill=pattern( xy=c(0,0), wh=c(20,20), patternUnits="userSpaceOnUse",
      text("R", cxy=c(10,10), font.size=18, stroke='red')
    )
  ), 
  text( 'DATA', cxy=WH/2, font.size=90, fill="blue",
           filter=filter( y=-5, height=40, feGaussianBlur(in1="SourceGraphic", stdDeviation=5, y="-"))
      )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<pattern patternUnits="userSpaceOnUse" width="20" height="20" x="0" y="0" id="genid5">
<text font-size="18" stroke="red" text-anchor="middle" dominant-baseline="central" x="10" y="10">R</text>
</pattern>
<rect fill="url(#genid5)" width="800" height="100" x="0" y="0"/>
<filter y="-5" height="40" id="genid6">
<feGaussianBlur in="SourceGraphic" stdDeviation="5" y="-"/>
</filter>
<text font-size="90" fill="blue" filter="url(#genid6)" text-anchor="middle" dominant-baseline="central" x="400" y="50">DATA</text>
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



