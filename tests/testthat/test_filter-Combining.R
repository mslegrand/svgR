context("filter-Combining")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-filter-Combining-1", {
WH=c(800, 100) # window rect
svgR( wh=WH,
    circle(cxy=WH/2, r=30, stroke='black', fill='red' ,
      filter=filter(  wh=c('200%','100%'), xy=c(0,0), 
        feComposite(  
          operator="over", 
          in1="SourceGraphic",
          in2=feOffset(  dxy=c(20, 0), 
             in1=feColorMatrix( type="hueRotate", values=240, "SourceGraphic")
          )
       )
     )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<filter width="200%" height="100%" x="0" y="0" id="genid4">
<feColorMatrix type="hueRotate" values="240" result="genid2">SourceGraphic</feColorMatrix>
<feOffset in="genid2" dx="20" dy="0" result="genid3"/>
<feComposite operator="over" in="SourceGraphic" in2="genid3"/>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid4)" cx="400" cy="50"/>
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
test_that("test-filter-Combining-2", {
WH=c(800, 100) # window rect
operators=c("over","in","out","atop","xor")
svgR( wh=WH,
      lapply( 1:5, function(i){
        x=100+(i-1)*150
        g( 
          circle(cxy=c(x,40), r=30, stroke='black', fill='red',
            filter=filter(  wh=c('200%','100%'), xy=c(0,0), 
              feComposite(  
                operator=operators[i], 
                in1="SourceGraphic",
                in2=feOffset(  dxy=c(20, 0), 
                   in1=feColorMatrix( type="hueRotate", values=240, "SourceGraphic")
                )
             )
           )
          ),
          text( operators[i], xy=c(x,82), font.size=15 )
        )
    })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid7">
<feColorMatrix type="hueRotate" values="240" result="genid5">SourceGraphic</feColorMatrix>
<feOffset in="genid5" dx="20" dy="0" result="genid6"/>
<feComposite operator="over" in="SourceGraphic" in2="genid6"/>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid7)" cx="100" cy="40"/>
<text font-size="15" x="100" y="82">over</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid10">
<feColorMatrix type="hueRotate" values="240" result="genid8">SourceGraphic</feColorMatrix>
<feOffset in="genid8" dx="20" dy="0" result="genid9"/>
<feComposite operator="in" in="SourceGraphic" in2="genid9"/>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid10)" cx="250" cy="40"/>
<text font-size="15" x="250" y="82">in</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid13">
<feColorMatrix type="hueRotate" values="240" result="genid11">SourceGraphic</feColorMatrix>
<feOffset in="genid11" dx="20" dy="0" result="genid12"/>
<feComposite operator="out" in="SourceGraphic" in2="genid12"/>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid13)" cx="400" cy="40"/>
<text font-size="15" x="400" y="82">out</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid16">
<feColorMatrix type="hueRotate" values="240" result="genid14">SourceGraphic</feColorMatrix>
<feOffset in="genid14" dx="20" dy="0" result="genid15"/>
<feComposite operator="atop" in="SourceGraphic" in2="genid15"/>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid16)" cx="550" cy="40"/>
<text font-size="15" x="550" y="82">atop</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid19">
<feColorMatrix type="hueRotate" values="240" result="genid17">SourceGraphic</feColorMatrix>
<feOffset in="genid17" dx="20" dy="0" result="genid18"/>
<feComposite operator="xor" in="SourceGraphic" in2="genid18"/>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid19)" cx="700" cy="40"/>
<text font-size="15" x="700" y="82">xor</text>
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
test_that("test-filter-Combining-3", {
WH=c(800, 100) # window rect
operators=c("over","in","out","atop","xor")
svgR( wh=WH,
      lapply( 1:5, function(i){
        x=100+(i-1)*150
        g( 
          circle(cxy=c(x,40), r=30, stroke='black', fill='red', fill.opacity=0.5,
            filter=filter(  wh=c('200%','100%'), xy=c(0,0), 
              feComposite(  
                operator=operators[i], 
                in1="SourceGraphic",
                in2=feOffset(  dxy=c(20, 0), 
                   in1=feColorMatrix( type="hueRotate", values=240, "SourceGraphic")
                )
             )
           )
          ),
          text( operators[i], xy=c(x,82), font.size=15 )
        )
    })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid22">
<feColorMatrix type="hueRotate" values="240" result="genid20">SourceGraphic</feColorMatrix>
<feOffset in="genid20" dx="20" dy="0" result="genid21"/>
<feComposite operator="over" in="SourceGraphic" in2="genid21"/>
</filter>
<circle r="30" stroke="black" fill="red" fill-opacity="0.5" filter="url(#genid22)" cx="100" cy="40"/>
<text font-size="15" x="100" y="82">over</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid25">
<feColorMatrix type="hueRotate" values="240" result="genid23">SourceGraphic</feColorMatrix>
<feOffset in="genid23" dx="20" dy="0" result="genid24"/>
<feComposite operator="in" in="SourceGraphic" in2="genid24"/>
</filter>
<circle r="30" stroke="black" fill="red" fill-opacity="0.5" filter="url(#genid25)" cx="250" cy="40"/>
<text font-size="15" x="250" y="82">in</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid28">
<feColorMatrix type="hueRotate" values="240" result="genid26">SourceGraphic</feColorMatrix>
<feOffset in="genid26" dx="20" dy="0" result="genid27"/>
<feComposite operator="out" in="SourceGraphic" in2="genid27"/>
</filter>
<circle r="30" stroke="black" fill="red" fill-opacity="0.5" filter="url(#genid28)" cx="400" cy="40"/>
<text font-size="15" x="400" y="82">out</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid31">
<feColorMatrix type="hueRotate" values="240" result="genid29">SourceGraphic</feColorMatrix>
<feOffset in="genid29" dx="20" dy="0" result="genid30"/>
<feComposite operator="atop" in="SourceGraphic" in2="genid30"/>
</filter>
<circle r="30" stroke="black" fill="red" fill-opacity="0.5" filter="url(#genid31)" cx="550" cy="40"/>
<text font-size="15" x="550" y="82">atop</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid34">
<feColorMatrix type="hueRotate" values="240" result="genid32">SourceGraphic</feColorMatrix>
<feOffset in="genid32" dx="20" dy="0" result="genid33"/>
<feComposite operator="xor" in="SourceGraphic" in2="genid33"/>
</filter>
<circle r="30" stroke="black" fill="red" fill-opacity="0.5" filter="url(#genid34)" cx="700" cy="40"/>
<text font-size="15" x="700" y="82">xor</text>
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
test_that("test-filter-Combining-5", {
WH=c(800, 100) # window rect
modes=c("normal","multiply","screen","darken","lighten")
svgR( wh=WH,
      lapply( 1:5, function(i){
        x=100+(i-1)*150
        g( 
          circle(cxy=c(x,40), r=30, stroke='black', fill='red', 
            filter=filter(  wh=c('200%','100%'), xy=c(0,0), 
              feBlend(  
                mode=modes[i], 
                in1="SourceGraphic",
                in2=feOffset(  dxy=c(20, 0), 
                   in1=feColorMatrix( type="hueRotate", values=240, "SourceGraphic")
                )
             )
           )
          ),
          text( modes[i], xy=c(x,82), font.size=15 )
        )
    })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid85">
<feColorMatrix type="hueRotate" values="240" result="genid83">SourceGraphic</feColorMatrix>
<feOffset in="genid83" dx="20" dy="0" result="genid84"/>
<feBlend mode="normal" in="SourceGraphic" in2="genid84"/>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid85)" cx="100" cy="40"/>
<text font-size="15" x="100" y="82">normal</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid88">
<feColorMatrix type="hueRotate" values="240" result="genid86">SourceGraphic</feColorMatrix>
<feOffset in="genid86" dx="20" dy="0" result="genid87"/>
<feBlend mode="multiply" in="SourceGraphic" in2="genid87"/>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid88)" cx="250" cy="40"/>
<text font-size="15" x="250" y="82">multiply</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid91">
<feColorMatrix type="hueRotate" values="240" result="genid89">SourceGraphic</feColorMatrix>
<feOffset in="genid89" dx="20" dy="0" result="genid90"/>
<feBlend mode="screen" in="SourceGraphic" in2="genid90"/>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid91)" cx="400" cy="40"/>
<text font-size="15" x="400" y="82">screen</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid94">
<feColorMatrix type="hueRotate" values="240" result="genid92">SourceGraphic</feColorMatrix>
<feOffset in="genid92" dx="20" dy="0" result="genid93"/>
<feBlend mode="darken" in="SourceGraphic" in2="genid93"/>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid94)" cx="550" cy="40"/>
<text font-size="15" x="550" y="82">darken</text>
</g>
<g>
<filter width="200%" height="100%" x="0" y="0" id="genid97">
<feColorMatrix type="hueRotate" values="240" result="genid95">SourceGraphic</feColorMatrix>
<feOffset in="genid95" dx="20" dy="0" result="genid96"/>
<feBlend mode="lighten" in="SourceGraphic" in2="genid96"/>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid97)" cx="700" cy="40"/>
<text font-size="15" x="700" y="82">lighten</text>
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
test_that("test-filter-Combining-6", {
WH=c(800, 100) # window rect
svgR( wh=WH,
    circle(cxy=WH/2, r=30, stroke='black', fill='red' ,
      filter=filter(  wh=c('200%','100%'), xy=c(0,0), 
        feMerge(  
          feMergeNode(in1="SourceGraphic"),
          feMergeNode(in1=feOffset(  dxy=c(20, 0), 
             in1=feColorMatrix( type="hueRotate", values=240, in1="SourceGraphic")
          ))
       )
     )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<filter width="200%" height="100%" x="0" y="0" id="genid100">
<feColorMatrix type="hueRotate" values="240" in="SourceGraphic" result="genid98"/>
<feOffset in="genid98" dx="20" dy="0" result="genid99"/>
<feMerge>
<feMergeNode in="SourceGraphic"/>
<feMergeNode in="genid99"/>
</feMerge>
</filter>
<circle r="30" stroke="black" fill="red" filter="url(#genid100)" cx="400" cy="50"/>
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
test_that("test-filter-Combining-7", {
WH=c(800, 100) # window rect
svgR( wh=WH,
  defs( 
    filter(  id="myMergeFilter", wh=c('200%','100%'), xy=c(0,0), 
     feColorMatrix( in1='SourceGraphic', type="hueRotate", values=240,  result='myColor'),
     feOffset(dxy=c(20, 0), in1="myColor", result="offed" ),
     feMerge(  
        feMergeNode(in1="SourceGraphic"),
        feMergeNode(in1= "offed")
     )
    )
  ),
  circle(cxy=WH/2, r=50, stroke='black', fill='red' , 
    filter="url(#myMergeFilter)"
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<defs>
<filter id="myMergeFilter" width="200%" height="100%" x="0" y="0">
<feColorMatrix in="SourceGraphic" type="hueRotate" values="240" result="myColor"/>
<feOffset in="myColor" result="offed" dx="20" dy="0"/>
<feMerge>
<feMergeNode in="SourceGraphic"/>
<feMergeNode in="offed"/>
</feMerge>
</filter>
</defs>
<circle r="50" stroke="black" fill="red" filter="url(#myMergeFilter)" cx="400" cy="50"/>
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



