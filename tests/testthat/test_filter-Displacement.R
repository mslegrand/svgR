context("filter-Displacement")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-filter-Displacement-1", {
library(svgR)
WH=c(800, 200) # window rect
svgR( wh=WH, 
      symbol(
        rect( id="spec", xy=c(0,0), wh=WH, 
          fill=linearGradient( 
            xy1=c("40%",0), xy2=c("60%","0%"),
            colors=rep(c("red","green"),5) 
          )
        )
      ),
      use(xlink.href="#spec"),
      text("feDisplacementMap: linear gradient", xy=c(20,20), stroke='white', fill='white', font.size=20),
      line(xy1=c(100,WH[2]/2),xy2=c(700,WH[2]/2), 
           stroke='yellow', stroke.width=20,
           filter=
             filter( xy=c(0,0), filterUnits='userSpaceOnUse',
                feDisplacementMap(
                  in1="SourceGraphic",
                  in2=feImage(xlink.href='#spec'),
                  scale=50,
                  yChannelSelector="R"
                )
          )
      )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<symbol>
<linearGradient x1="40%" y1="0" x2="60%" y2="0%" id="genid2">
<stop offset="0%" stop-color="red"/>
<stop offset="11%" stop-color="green"/>
<stop offset="22%" stop-color="red"/>
<stop offset="33%" stop-color="green"/>
<stop offset="44%" stop-color="red"/>
<stop offset="55%" stop-color="green"/>
<stop offset="66%" stop-color="red"/>
<stop offset="77%" stop-color="green"/>
<stop offset="88%" stop-color="red"/>
<stop offset="100%" stop-color="green"/>
</linearGradient>
<rect id="spec" fill="url(#genid2)" width="800" height="200" x="0" y="0"/>
</symbol>
<use xlink:href="#spec"/>
<text stroke="white" fill="white" font-size="20" x="20" y="20">feDisplacementMap: linear gradient</text>
<filter filterUnits="userSpaceOnUse" x="0" y="0" id="genid4">
<feImage xlink:href="#spec" result="genid3"/>
<feDisplacementMap in="SourceGraphic" in2="genid3" scale="50" yChannelSelector="R"/>
</filter>
<line stroke="yellow" stroke-width="20" filter="url(#genid4)" x1="100" y1="100" x2="700" y2="100"/>
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
test_that("test-filter-Displacement-2", {
library(svgR)
WH=c(400, 400) # window rect
svgR( wh=WH, 
      symbol(
        rect( id="radDispl", xy=c(0,0), wh=WH, 
          fill=radialGradient( 
            xy1=c(0,0), xy2=c(1,1), 
            colors=rep(c("red","blue"),5) 
          )
        )
      ),
      use(xlink.href="#radDispl"),
       text("feDisplacementMap: radial gradient", xy=c(20,20), stroke='white', fill='white', font.size=20),
      line(xy1=c(0,150),xy2=c(400,150), 
           stroke='yellow', stroke.width=20,
           filter=
             filter( xy=c(0,0), filterUnits='userSpaceOnUse',
                feDisplacementMap(
                  in1="SourceGraphic",
                  in2=feImage(xlink.href='#radDispl'),
                  scale=50,
                  xChannelSelector="R",
                  yChannelSelector="R"
                )
          )
        ),
        line(xy1=c(0,260),xy2=c(800,260), 
         stroke='yellow', stroke.width=20,
         filter=
           filter( xy=c(0,0), filterUnits='userSpaceOnUse',
              feDisplacementMap(
                in1="SourceGraphic",
                in2=feImage(xlink.href='#radDispl'),
                scale=50,
                xChannelSelector="B",
                yChannelSelector="B"
              )
            )
        )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="400" height="400">
<symbol>
<radialGradient xy1="c(0, 0)" xy2="c(1, 1)" id="genid5">
<stop offset="0%" stop-color="red"/>
<stop offset="11%" stop-color="blue"/>
<stop offset="22%" stop-color="red"/>
<stop offset="33%" stop-color="blue"/>
<stop offset="44%" stop-color="red"/>
<stop offset="55%" stop-color="blue"/>
<stop offset="66%" stop-color="red"/>
<stop offset="77%" stop-color="blue"/>
<stop offset="88%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</radialGradient>
<rect id="radDispl" fill="url(#genid5)" width="400" height="400" x="0" y="0"/>
</symbol>
<use xlink:href="#radDispl"/>
<text stroke="white" fill="white" font-size="20" x="20" y="20">feDisplacementMap: radial gradient</text>
<filter filterUnits="userSpaceOnUse" x="0" y="0" id="genid7">
<feImage xlink:href="#radDispl" result="genid6"/>
<feDisplacementMap in="SourceGraphic" in2="genid6" scale="50" xChannelSelector="R" yChannelSelector="R"/>
</filter>
<line stroke="yellow" stroke-width="20" filter="url(#genid7)" x1="0" y1="150" x2="400" y2="150"/>
<filter filterUnits="userSpaceOnUse" x="0" y="0" id="genid9">
<feImage xlink:href="#radDispl" result="genid8"/>
<feDisplacementMap in="SourceGraphic" in2="genid8" scale="50" xChannelSelector="B" yChannelSelector="B"/>
</filter>
<line stroke="yellow" stroke-width="20" filter="url(#genid9)" x1="0" y1="260" x2="800" y2="260"/>
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
test_that("test-filter-Displacement-3", {
library(svgR)
WH=c(800, 600) # window rect
svgR( wh=WH, 
      symbol(
        g( id="radDisp2",  
           text("svgR", fill='red', cxy=c(.65,.45)*WH, font.size=200),
            text("in Action", fill='red', cxy=c(.65,.75)*WH, font.size=100)
        )
      ),
      rect(cxy=WH/2, wh=WH, 
           fill=radialGradient( colors=c("white","black") ),
           filter=filter(
                feDisplacementMap(
                  in1="SourceGraphic",
                  in2=feImage(xlink.href='#radDisp2'),
                  scale=50,
                  xChannelSelector="B",
                  yChannelSelector="R"
                )
           )
      )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="600">
<symbol>
<g id="radDisp2">
<text fill="red" font-size="200" text-anchor="middle" dominant-baseline="central" x="520" y="270">svgR</text>
<text fill="red" font-size="100" text-anchor="middle" dominant-baseline="central" x="520" y="450">in Action</text>
</g>
</symbol>
<filter id="genid11">
<feImage xlink:href="#radDisp2" result="genid10"/>
<feDisplacementMap in="SourceGraphic" in2="genid10" scale="50" xChannelSelector="B" yChannelSelector="R"/>
</filter>
<radialGradient id="genid12">
<stop offset="0%" stop-color="white"/>
<stop offset="100%" stop-color="black"/>
</radialGradient>
<rect fill="url(#genid12)" filter="url(#genid11)" width="800" height="600" x="0" y="0"/>
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
test_that("test-filter-Displacement-4", {
library(svgR)
WH=c(800, 600) # window rect
svgR( wh=WH, 
      symbol(
        g( id="radDisp2",  
           text("svgR", fill='red', cxy=c(.65,.45)*WH, font.size=200),
            text("in Action", fill='red', cxy=c(.65,.75)*WH, font.size=100)
        )
      ),
      rect(cxy=WH/2, wh=WH, 
           fill=radialGradient( colors=c("grey","white","grey","black") ),
           filter=filter(
                feDisplacementMap(
                  in1="SourceGraphic",
                  in2=feImage(xlink.href="./IMG_4703.JPG"),
                  scale=50,
                  xChannelSelector="B",
                  yChannelSelector="R"
                )
           )
      )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="600">
<symbol>
<g id="radDisp2">
<text fill="red" font-size="200" text-anchor="middle" dominant-baseline="central" x="520" y="270">svgR</text>
<text fill="red" font-size="100" text-anchor="middle" dominant-baseline="central" x="520" y="450">in Action</text>
</g>
</symbol>
<filter id="genid14">
<feImage xlink:href="./IMG_4703.JPG" result="genid13"/>
<feDisplacementMap in="SourceGraphic" in2="genid13" scale="50" xChannelSelector="B" yChannelSelector="R"/>
</filter>
<radialGradient id="genid15">
<stop offset="0%" stop-color="grey"/>
<stop offset="33%" stop-color="white"/>
<stop offset="66%" stop-color="grey"/>
<stop offset="100%" stop-color="black"/>
</radialGradient>
<rect fill="url(#genid15)" filter="url(#genid14)" width="800" height="600" x="0" y="0"/>
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
test_that("test-filter-Displacement-5", {
library(svgR)
WH=c(800, 600) # window rect
svgR( wh=WH, 
      symbol(
        g( id="radDisp3",  
           text("Seville", fill='red', cxy=c(.8,.5)*WH, font.size=100)
        )
      ),
      image(cxy=WH/2, wh=WH, xlink.href="./IMG_4703.JPG",
           filter=filter(
                feDisplacementMap(
                  in1="SourceGraphic",
                  in2=feImage(xlink.href='#radDisp3'),
                  scale=150,
                  yChannelSelector="R"
                )
           )
      )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="600">
<symbol>
<g id="radDisp3">
<text fill="red" font-size="100" text-anchor="middle" dominant-baseline="central" x="640" y="300">Seville</text>
</g>
</symbol>
<filter id="genid17">
<feImage xlink:href="#radDisp3" result="genid16"/>
<feDisplacementMap in="SourceGraphic" in2="genid16" scale="150" yChannelSelector="R"/>
</filter>
<image xlink:href="./IMG_4703.JPG" filter="url(#genid17)" width="800" height="600" x="0" y="0"/>
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
# test-filter-Displacement-6 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-filter-Displacement-7 Ommited!!!

# -----------------------------------------------------



