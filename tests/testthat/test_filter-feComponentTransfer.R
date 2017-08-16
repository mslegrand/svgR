context("filter-feComponentTransfer")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-filter-feComponentTransfer-1", {
WH=c(800, 200) # window rect
colors=c('red','blue')
svgR( wh=WH, stroke="black",
  rect(wh=c(.6,.3)*WH, xy=c(.2,0)*WH, 
       fill=linearGradient(colors=colors)
  ),
  rect(wh=c(.6,.3)*WH, xy=c(.2,.3)*WH, 
       fill=linearGradient(colors=colors),
       filter=filter( 
          feComponentTransfer( 
              feFuncR( type="table", tableValues="1 0"),
              feFuncB( type="table", tableValues="1 0 ")
          )
        )
  ),
  text('original', xy=c(20,1.5*WH[2])),
  text('transfered', xy=c(20,4.5*WH[2])),
  text('feComponentTransfer using type="table"', cxy=c(.5,.8)*WH)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" stroke="black" width="800" height="200">
<linearGradient id="genid2">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid2)" width="480" height="60" x="160" y="0"/>
<filter id="genid3">
<feComponentTransfer>
<feFuncR type="table" tableValues="1 0"/>
<feFuncB type="table" tableValues="1 0 "/>
</feComponentTransfer>
</filter>
<linearGradient id="genid4">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid4)" filter="url(#genid3)" width="480" height="60" x="160" y="60"/>
<text x="20" y="300">original</text>
<text x="20" y="900">transfered</text>
<text text-anchor="middle" dominant-baseline="central" x="400" y="160">feComponentTransfer using type="table"</text>
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
test_that("test-filter-feComponentTransfer-2", {
WH=c(800, 200) # window rect
colors=c('red','blue')
svgR( wh=WH, stroke="black",
  rect(wh=c(.6,.3)*WH, xy=c(.2,0)*WH, 
       fill=linearGradient(colors=colors)
  ),
  rect(wh=c(.6,.3)*WH, xy=c(.2,.3)*WH, 
       fill=linearGradient(colors=colors),
       filter=filter( 
          feComponentTransfer( 
              feFuncR( type="linear", intercept=1, slope=-1),
              feFuncB( type="linear", intercept=1, slope=-1)
          )
        )
  ),
  text('original', xy=c(20,1.5*WH[2])),
  text('transfered', xy=c(20,4.5*WH[2])),
  text('feComponentTransfer using type="linear"', cxy=c(.5,.8)*WH)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" stroke="black" width="800" height="200">
<linearGradient id="genid5">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid5)" width="480" height="60" x="160" y="0"/>
<filter id="genid6">
<feComponentTransfer>
<feFuncR type="linear" intercept="1" slope="-1"/>
<feFuncB type="linear" intercept="1" slope="-1"/>
</feComponentTransfer>
</filter>
<linearGradient id="genid7">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid7)" filter="url(#genid6)" width="480" height="60" x="160" y="60"/>
<text x="20" y="300">original</text>
<text x="20" y="900">transfered</text>
<text text-anchor="middle" dominant-baseline="central" x="400" y="160">feComponentTransfer using type="linear"</text>
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
test_that("test-filter-feComponentTransfer-3", {
WH=c(800, 200) # window rect
colors=c('red','blue')
svgR( wh=WH, stroke="black",
  rect(wh=c(.6,.3)*WH, xy=c(.2,0)*WH, 
       fill=linearGradient(colors=colors)
  ),
  rect(wh=c(.6,.3)*WH, xy=c(.2,.3)*WH, 
       fill=linearGradient(colors=colors),
       filter=filter( 
          feComponentTransfer( 
              feFuncR( type="discrete", tableValues="1 0"),
              feFuncB( type="discrete", tableValues="1 0 ")
          )
        )
  ),
  text('original', xy=c(20,1.5*WH[2])),
  text('transfered', xy=c(20,4.5*WH[2])),
  text('feComponentTransfer using type="discrete"', cxy=c(.5,.8)*WH)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" stroke="black" width="800" height="200">
<linearGradient id="genid8">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid8)" width="480" height="60" x="160" y="0"/>
<filter id="genid9">
<feComponentTransfer>
<feFuncR type="discrete" tableValues="1 0"/>
<feFuncB type="discrete" tableValues="1 0 "/>
</feComponentTransfer>
</filter>
<linearGradient id="genid10">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid10)" filter="url(#genid9)" width="480" height="60" x="160" y="60"/>
<text x="20" y="300">original</text>
<text x="20" y="900">transfered</text>
<text text-anchor="middle" dominant-baseline="central" x="400" y="160">feComponentTransfer using type="discrete"</text>
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
test_that("test-filter-feComponentTransfer-4", {
WH=c(800, 200) # window rect
colors=c('red','blue')
svgR( wh=WH, stroke="black",
  rect(wh=c(.6,.3)*WH, xy=c(.2,0)*WH, 
       fill=linearGradient(colors=colors)
  ),
  rect(wh=c(.6,.3)*WH, xy=c(.2,.3)*WH, 
       fill=linearGradient(colors=colors),
       filter=filter( 
          feComponentTransfer( 
              feFuncR( type="gamma", offset=1, amplitude=-1, exponent=1),
              feFuncB( type="gamma", offset=1, amplitude=-1, exponent=1)
          )
        )
  ),
  text('original', xy=c(20,1.5*WH[2])),
  text('transfered', xy=c(20,4.5*WH[2])),
  text('feComponentTransfer using type="gamma"', cxy=c(.5,.8)*WH)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" stroke="black" width="800" height="200">
<linearGradient id="genid11">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid11)" width="480" height="60" x="160" y="0"/>
<filter id="genid12">
<feComponentTransfer>
<feFuncR type="gamma" offset="1" amplitude="-1" exponent="1"/>
<feFuncB type="gamma" offset="1" amplitude="-1" exponent="1"/>
</feComponentTransfer>
</filter>
<linearGradient id="genid13">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid13)" filter="url(#genid12)" width="480" height="60" x="160" y="60"/>
<text x="20" y="300">original</text>
<text x="20" y="900">transfered</text>
<text text-anchor="middle" dominant-baseline="central" x="400" y="160">feComponentTransfer using type="gamma"</text>
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
test_that("test-filter-feComponentTransfer-5", {
WH=c(800, 200) # window rect
colors=c('red','blue')
svgR( wh=WH, stroke="black",
  rect(wh=c(.6,.3)*WH, xy=c(.2,0)*WH, 
       fill=linearGradient(colors=colors)
  ),
  rect(wh=c(.6,.3)*WH, xy=c(.2,.3)*WH, 
       fill=linearGradient(colors=colors),
       filter=filter( 
          feComponentTransfer( 
              feFuncR( type="gamma", offset=1, amplitude=-1, exponent=2),
              feFuncB( type="gamma", offset=1, amplitude=-1, exponent=2)
          )
        )
  ),
  text('original', xy=c(20,1.5*WH[2])),
  text('transfered', xy=c(20,4.5*WH[2])),
  text('feComponentTransfer using type="table"', cxy=c(.5,.8)*WH)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" stroke="black" width="800" height="200">
<linearGradient id="genid14">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid14)" width="480" height="60" x="160" y="0"/>
<filter id="genid15">
<feComponentTransfer>
<feFuncR type="gamma" offset="1" amplitude="-1" exponent="2"/>
<feFuncB type="gamma" offset="1" amplitude="-1" exponent="2"/>
</feComponentTransfer>
</filter>
<linearGradient id="genid16">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid16)" filter="url(#genid15)" width="480" height="60" x="160" y="60"/>
<text x="20" y="300">original</text>
<text x="20" y="900">transfered</text>
<text text-anchor="middle" dominant-baseline="central" x="400" y="160">feComponentTransfer using type="table"</text>
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
test_that("test-filter-feComponentTransfer-6", {
WH=c(800, 200) # window rect
colors=c('red','blue')
svgR( wh=WH, stroke="black",
  rect(wh=c(.6,.3)*WH, xy=c(.2,0)*WH, 
       fill=linearGradient(colors=colors)
  ),
  rect(wh=c(.6,.3)*WH, xy=c(.2,.3)*WH, 
       fill=linearGradient(colors=colors),
       filter=filter( 
          feComponentTransfer( 
              feFuncR( type="table", tableValues="1 0"),
              feFuncG( type="table", tableValues="1 0"),
              feFuncB( type="table", tableValues="1 0 ")
          )
        )
  ),
  text('original', xy=c(20,1.5*WH[2])),
  text('transfered', xy=c(20,4.5*WH[2])),
  text('feComponentTransfer using type="table"', cxy=c(.5,.8)*WH)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" stroke="black" width="800" height="200">
<linearGradient id="genid17">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid17)" width="480" height="60" x="160" y="0"/>
<filter id="genid18">
<feComponentTransfer>
<feFuncR type="table" tableValues="1 0"/>
<feFuncG type="table" tableValues="1 0"/>
<feFuncB type="table" tableValues="1 0 "/>
</feComponentTransfer>
</filter>
<linearGradient id="genid19">
<stop offset="0%" stop-color="red"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid19)" filter="url(#genid18)" width="480" height="60" x="160" y="60"/>
<text x="20" y="300">original</text>
<text x="20" y="900">transfered</text>
<text text-anchor="middle" dominant-baseline="central" x="400" y="160">feComponentTransfer using type="table"</text>
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
test_that("test-filter-feComponentTransfer-7", {
WH=c(800, 100) # window rect
svgR( wh=WH,
    lapply(seq(from=1, to=0, by=-.05),
      function(i){
        rect(xy=c(i*800,10), wh=c(32,96), fill=
          linearGradient( xy1=c(0,0), xy2=c(0,1),
            colors=c('red','yellow','green','blue')
          ),
            filter=filter( 
             feComponentTransfer(
               feFuncR(type="linear", slope=i, intercept=1-i),
               feFuncG(type="linear", slope=1, intercept=0),
               feFuncB(type="linear", slope=1-i, intercept=i),
               feFuncA(type="linear", slope=0, intercept=1)
             )
          )
        ) 
      }
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<filter id="genid20">
<feComponentTransfer>
<feFuncR type="linear" slope="1" intercept="0"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0" intercept="1"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid21">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid21)" filter="url(#genid20)" width="32" height="96" x="800" y="10"/>
<filter id="genid22">
<feComponentTransfer>
<feFuncR type="linear" slope="0.95" intercept="0.05"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.05" intercept="0.95"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid23">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid23)" filter="url(#genid22)" width="32" height="96" x="760" y="10"/>
<filter id="genid24">
<feComponentTransfer>
<feFuncR type="linear" slope="0.9" intercept="0.1"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.1" intercept="0.9"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid25">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid25)" filter="url(#genid24)" width="32" height="96" x="720" y="10"/>
<filter id="genid26">
<feComponentTransfer>
<feFuncR type="linear" slope="0.85" intercept="0.15"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.15" intercept="0.85"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid27">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid27)" filter="url(#genid26)" width="32" height="96" x="680" y="10"/>
<filter id="genid28">
<feComponentTransfer>
<feFuncR type="linear" slope="0.8" intercept="0.2"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.2" intercept="0.8"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid29">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid29)" filter="url(#genid28)" width="32" height="96" x="640" y="10"/>
<filter id="genid30">
<feComponentTransfer>
<feFuncR type="linear" slope="0.75" intercept="0.25"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.25" intercept="0.75"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid31">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid31)" filter="url(#genid30)" width="32" height="96" x="600" y="10"/>
<filter id="genid32">
<feComponentTransfer>
<feFuncR type="linear" slope="0.7" intercept="0.3"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.3" intercept="0.7"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid33">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid33)" filter="url(#genid32)" width="32" height="96" x="560" y="10"/>
<filter id="genid34">
<feComponentTransfer>
<feFuncR type="linear" slope="0.65" intercept="0.35"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.35" intercept="0.65"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid35">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid35)" filter="url(#genid34)" width="32" height="96" x="520" y="10"/>
<filter id="genid36">
<feComponentTransfer>
<feFuncR type="linear" slope="0.6" intercept="0.4"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.4" intercept="0.6"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid37">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid37)" filter="url(#genid36)" width="32" height="96" x="480" y="10"/>
<filter id="genid38">
<feComponentTransfer>
<feFuncR type="linear" slope="0.55" intercept="0.45"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.45" intercept="0.55"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid39">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid39)" filter="url(#genid38)" width="32" height="96" x="440" y="10"/>
<filter id="genid40">
<feComponentTransfer>
<feFuncR type="linear" slope="0.5" intercept="0.5"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.5" intercept="0.5"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid41">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid41)" filter="url(#genid40)" width="32" height="96" x="400" y="10"/>
<filter id="genid42">
<feComponentTransfer>
<feFuncR type="linear" slope="0.45" intercept="0.55"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.55" intercept="0.45"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid43">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid43)" filter="url(#genid42)" width="32" height="96" x="360" y="10"/>
<filter id="genid44">
<feComponentTransfer>
<feFuncR type="linear" slope="0.4" intercept="0.6"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.6" intercept="0.4"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid45">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid45)" filter="url(#genid44)" width="32" height="96" x="320" y="10"/>
<filter id="genid46">
<feComponentTransfer>
<feFuncR type="linear" slope="0.35" intercept="0.65"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.65" intercept="0.35"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid47">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid47)" filter="url(#genid46)" width="32" height="96" x="280" y="10"/>
<filter id="genid48">
<feComponentTransfer>
<feFuncR type="linear" slope="0.3" intercept="0.7"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.7" intercept="0.3"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid49">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid49)" filter="url(#genid48)" width="32" height="96" x="240" y="10"/>
<filter id="genid50">
<feComponentTransfer>
<feFuncR type="linear" slope="0.25" intercept="0.75"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.75" intercept="0.25"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid51">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid51)" filter="url(#genid50)" width="32" height="96" x="200" y="10"/>
<filter id="genid52">
<feComponentTransfer>
<feFuncR type="linear" slope="0.2" intercept="0.8"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.8" intercept="0.2"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid53">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid53)" filter="url(#genid52)" width="32" height="96" x="160" y="10"/>
<filter id="genid54">
<feComponentTransfer>
<feFuncR type="linear" slope="0.15" intercept="0.85"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.85" intercept="0.15"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid55">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid55)" filter="url(#genid54)" width="32" height="96" x="120" y="10"/>
<filter id="genid56">
<feComponentTransfer>
<feFuncR type="linear" slope="0.1" intercept="0.9"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.9" intercept="0.1"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid57">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid57)" filter="url(#genid56)" width="32" height="96" x="80" y="10"/>
<filter id="genid58">
<feComponentTransfer>
<feFuncR type="linear" slope="0.0499999999999999" intercept="0.95"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="0.95" intercept="0.0499999999999999"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid59">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid59)" filter="url(#genid58)" width="32" height="96" x="39.9999999999999" y="10"/>
<filter id="genid60">
<feComponentTransfer>
<feFuncR type="linear" slope="0" intercept="1"/>
<feFuncG type="linear" slope="1" intercept="0"/>
<feFuncB type="linear" slope="1" intercept="0"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid61">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid61)" filter="url(#genid60)" width="32" height="96" x="0" y="10"/>
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



