context("Fill")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-Fill-1", {
colors=c('blue','green','white','orange','red')
svgR( 
  wh=c(600, 200), 
  ellipse(cxy=c(250,100), rxy=c(200,80), 
          fill=linearGradient( xy1=c(0,0), xy2=c(1,0), colors=colors)     
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<linearGradient x1="0" y1="0" x2="1" y2="0" id="genid2">
<stop offset="0%" stop-color="blue"/>
<stop offset="25%" stop-color="green"/>
<stop offset="50%" stop-color="white"/>
<stop offset="75%" stop-color="orange"/>
<stop offset="100%" stop-color="red"/>
</linearGradient>
<ellipse fill="url(#genid2)" cx="250" cy="100" rx="200" ry="80"/>
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
test_that("test-Fill-2", {
colors<-c('green','white','orange')
svgR( 
   wh=c(600, 200), 
  defs(
    linearGradient(id='grad1', xy1=c(0,0), xy2=c(1,0), colors=colors)
  ),
  ellipse(cxy=c(250,100), rxy=c(200,80), fill="url( #grad1 )") 
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<defs>
<linearGradient id="grad1" x1="0" y1="0" x2="1" y2="0">
<stop offset="0%" stop-color="green"/>
<stop offset="50%" stop-color="white"/>
<stop offset="100%" stop-color="orange"/>
</linearGradient>
</defs>
<ellipse fill="url( #grad1 )" cx="250" cy="100" rx="200" ry="80"/>
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
# test-Fill-3 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-Fill-4", {
colors<-c('blue','green','white','orange','red')
svgR( 
  wh=c(600, 200), 
  ellipse(cxy=c(50,100), rxy=c(20,80), 
          fill=linearGradient( id="grad2", xy1=c(0,0), xy2=c(1,0), colors=colors)), 
  ellipse(cxy=c(100,100), rxy=c(20,80), fill="url( #grad2 )"),
  ellipse(cxy=c(150,100), rxy=c(20,80), fill="url( #grad2 )"),
  ellipse(cxy=c(200,100), rxy=c(20,80), fill="url( #grad2 )"),
  ellipse(cxy=c(250,100), rxy=c(20,80), fill="url( #grad2 )") 
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<linearGradient id="grad2" x1="0" y1="0" x2="1" y2="0">
<stop offset="0%" stop-color="blue"/>
<stop offset="25%" stop-color="green"/>
<stop offset="50%" stop-color="white"/>
<stop offset="75%" stop-color="orange"/>
<stop offset="100%" stop-color="red"/>
</linearGradient>
<ellipse fill="url(#grad2)" cx="50" cy="100" rx="20" ry="80"/>
<ellipse fill="url( #grad2 )" cx="100" cy="100" rx="20" ry="80"/>
<ellipse fill="url( #grad2 )" cx="150" cy="100" rx="20" ry="80"/>
<ellipse fill="url( #grad2 )" cx="200" cy="100" rx="20" ry="80"/>
<ellipse fill="url( #grad2 )" cx="250" cy="100" rx="20" ry="80"/>
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
test_that("test-Fill-5", {
colors<-c('blue','green','yellow','white','orange','red','purple')
svgR( 
  wh=c(600, 200),
  g(
    lapply(seq(50,550,by=50), function(x)ellipse(cxy=c(x,100), rxy=c(20,80))),
    fill=linearGradient( xy1=c(0,0), xy2=c(1,0), colors=colors)
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<linearGradient x1="0" y1="0" x2="1" y2="0" id="genid3">
<stop offset="0%" stop-color="blue"/>
<stop offset="16%" stop-color="green"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="50%" stop-color="white"/>
<stop offset="66%" stop-color="orange"/>
<stop offset="83%" stop-color="red"/>
<stop offset="100%" stop-color="purple"/>
</linearGradient>
<g fill="url(#genid3)">
<ellipse cx="50" cy="100" rx="20" ry="80"/>
<ellipse cx="100" cy="100" rx="20" ry="80"/>
<ellipse cx="150" cy="100" rx="20" ry="80"/>
<ellipse cx="200" cy="100" rx="20" ry="80"/>
<ellipse cx="250" cy="100" rx="20" ry="80"/>
<ellipse cx="300" cy="100" rx="20" ry="80"/>
<ellipse cx="350" cy="100" rx="20" ry="80"/>
<ellipse cx="400" cy="100" rx="20" ry="80"/>
<ellipse cx="450" cy="100" rx="20" ry="80"/>
<ellipse cx="500" cy="100" rx="20" ry="80"/>
<ellipse cx="550" cy="100" rx="20" ry="80"/>
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
test_that("test-Fill-6", {
colors=c('blue','green','white','orange','red')
svgR( 
  wh=c(600, 200), 
  ellipse(cxy=c(250,100), rxy=c(200,80), 
          fill=radialGradient(
            colors=colors)     
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<radialGradient id="genid4">
<stop offset="0%" stop-color="blue"/>
<stop offset="25%" stop-color="green"/>
<stop offset="50%" stop-color="white"/>
<stop offset="75%" stop-color="orange"/>
<stop offset="100%" stop-color="red"/>
</radialGradient>
<ellipse fill="url(#genid4)" cx="250" cy="100" rx="200" ry="80"/>
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
test_that("test-Fill-7", {
colors=c('white', 'green', 'blue')
WH=c(600, 200)
S=190 # Size of square
svgR( 
  wh=WH, 
  rect(cxy=WH/2, wh=c(190,190), stroke='black', stroke.width=3,
      fill=radialGradient( 
        cxy=c(.5,.5), 
        r=.5,
        fxy=c(.6,.6)+c(0,0),
        colors=colors)     
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<radialGradient r="0.5" cx="0.5" cy="0.5" fx="0.6" fy="0.6" id="genid5">
<stop offset="0%" stop-color="white"/>
<stop offset="50%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</radialGradient>
<rect stroke="black" stroke-width="3" fill="url(#genid5)" width="190" height="190" x="205" y="5"/>
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
test_that("test-Fill-8", {
colors=c('white', 'green', 'blue')
WH=c(600, 200)
S=190 # Size of square
svgR( 
  wh=WH, 
  rect(cxy=WH/2, wh=c(S,S), stroke='black', stroke.width=3,
    fill=radialGradient( gradientUnits="userSpaceOnUse",
            cxy=WH/2, 
            r=.5*S,
            fxy=WH/2+.1*S,
            colors=colors)     
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<radialGradient gradientUnits="userSpaceOnUse" r="95" cx="300" cy="100" fx="319" fy="119" id="genid6">
<stop offset="0%" stop-color="white"/>
<stop offset="50%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</radialGradient>
<rect stroke="black" stroke-width="3" fill="url(#genid6)" width="190" height="190" x="205" y="5"/>
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
test_that("test-Fill-9", {
WH=c(600, 200) # window rect
svgR( wh=WH,
  ellipse( cxy=c(250,100), rxy=c(200,80), 
    fill=pattern( xy=c(10,10), wh=c(40,40), patternUnits="userSpaceOnUse",
                  circle(cxy=c(10,10), r=10, fill='blue')
         )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<pattern patternUnits="userSpaceOnUse" width="40" height="40" x="10" y="10" id="genid7">
<circle r="10" fill="blue" cx="10" cy="10"/>
</pattern>
<ellipse fill="url(#genid7)" cx="250" cy="100" rx="200" ry="80"/>
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
test_that("test-Fill-10", {
WH=c(600, 200) # window rect
svgR( wh=WH,
  g(
    pattern(
        id="pattern2", xy=c(10,10), wh=c(40,40), patternUnits="userSpaceOnUse" ,
        circle(cxy=c(10,10), r=10, fill='red')
    ),
    ellipse( cxy=c(250,100), rxy=c(200,80), fill="url(#pattern2)")
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<g>
<pattern id="pattern2" patternUnits="userSpaceOnUse" width="40" height="40" x="10" y="10">
<circle r="10" fill="red" cx="10" cy="10"/>
</pattern>
<ellipse fill="url(#pattern2)" cx="250" cy="100" rx="200" ry="80"/>
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
test_that("test-Fill-11", {
WH=c(600, 200) # window rect
colors=c('white','yellow','orange','green', 'blue','black')
svgR( wh=WH,
  ellipse( cxy=c(250,100), rxy=c(200,80), 
    fill=pattern( xy=c(10,10), wh=c(40,40), patternUnits="userSpaceOnUse",
                  rect(cxy=c(20,20), wh=c(40,40), 
                       fill=radialGradient(  colors=colors)
                  )
         )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<pattern patternUnits="userSpaceOnUse" width="40" height="40" x="10" y="10" id="genid9">
<radialGradient id="genid8">
<stop offset="0%" stop-color="white"/>
<stop offset="20%" stop-color="yellow"/>
<stop offset="40%" stop-color="orange"/>
<stop offset="60%" stop-color="green"/>
<stop offset="80%" stop-color="blue"/>
<stop offset="100%" stop-color="black"/>
</radialGradient>
<rect fill="url(#genid8)" width="40" height="40" x="0" y="0"/>
</pattern>
<ellipse fill="url(#genid9)" cx="250" cy="100" rx="200" ry="80"/>
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
test_that("test-Fill-12", {
WH=c(600, 300) # window rect
colors1=c('white','yellow','orange','green', 'blue','black')
colors2=c('blue','green','orange','yellow','orange', 'green','blue')
svgR( wh=WH,
  text( cxy=c(150,100), font.size=300, "R", stroke='green',
        fill=pattern( xy=c(0,0), wh=c(20,20), patternUnits="userSpaceOnUse",
                  text("R", cxy=c(10,10), stroke='red')
        )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="300">
<pattern patternUnits="userSpaceOnUse" width="20" height="20" x="0" y="0" id="genid10">
<text stroke="red" text-anchor="middle" dominant-baseline="central" x="10" y="10">R</text>
</pattern>
<text font-size="300" stroke="green" fill="url(#genid10)" text-anchor="middle" dominant-baseline="central" x="150" y="100">R</text>
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
# test-Fill-13 Ommited!!!

# -----------------------------------------------------



