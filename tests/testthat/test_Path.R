context("Path")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-Path-1", {
WH<-c(600,200)
svgR( wh=WH, 
      path(d=c("M", 180,90, "L", 150,142,90,142,60,90,90,38,150,38) , stroke='red', fill='none') )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<path d="M 180 90 L 150 142 90 142 60 90 90 38 150 38" stroke="red" fill="none"/>
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
test_that("test-Path-2", {
WH<-c(600,200)
svgR( wh=WH, 
      path(d=c("m", 180,90, "l", -30,52,-60,0,-30,-52,30,-52,60,0 ) , stroke='green', fill='none') )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<path d="m 180 90 l -30 52 -60 0 -30 -52 30 -52 60 0" stroke="green" fill="none"/>
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
test_that("test-Path-3", {
WH<-c(600,200)
svgR( wh=WH, 
      path(d=c("m", 180,90, "l", -30,52,-60,0,-30,-52,30,-52,60,0, "Z" ) , stroke='blue', fill='none') )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<path d="m 180 90 l -30 52 -60 0 -30 -52 30 -52 60 0 Z" stroke="blue" fill="none"/>
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
test_that("test-Path-4", {
theta=20
startPt=c(300,75)
endPt<-startPt+c(0,50)
rxy=c(100,50)
laf0=0
laf1=1
sf0=0
sf1=1
WH<-c(600, 200)
svgR( wh=WH, fill="none",
      stroke.width=3,
      path(d=c("M", startPt, "A", rxy, theta, laf0, sf0, endPt ) , stroke='red') ,
      path(d=c("M", startPt, "A", rxy, theta, laf0, sf1, endPt ) , stroke='blue') ,
      path(d=c("M", startPt, "A", rxy, theta, laf1, sf0, endPt ) , stroke='green') ,
      path(d=c("M", startPt, "A", rxy, theta, laf1, sf1, endPt ) , stroke='orange'),
      line( xy1=startPt, xy2=startPt-c(0,40), stroke.width=1, stroke='black'),
      line( xy1=endPt, xy2=endPt+c(0,40), stroke.width=1, stroke='black'),
      text("start pt", cxy=startPt-c(0,50), font.size=12, stroke='black', stroke.width=1),
      text("end pt",   cxy=endPt+c(0,50), font.size=12, stroke='black', stroke.width=1),
      text("sf=0 on this side", xy=c(WH[1]-100,50), font.size=12, stroke='black', stroke.width=1),
      text("sf=1 on this side", xy=c(50,WH[2]-50),  font.size=12, stroke='black', stroke.width=1)

)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" fill="none" stroke-width="3" width="600" height="200">
<path d="M 300 75 A 100 50 20 0 0 300 125" stroke="red"/>
<path d="M 300 75 A 100 50 20 0 1 300 125" stroke="blue"/>
<path d="M 300 75 A 100 50 20 1 0 300 125" stroke="green"/>
<path d="M 300 75 A 100 50 20 1 1 300 125" stroke="orange"/>
<line stroke-width="1" stroke="black" x1="300" y1="75" x2="300" y2="35"/>
<line stroke-width="1" stroke="black" x1="300" y1="125" x2="300" y2="165"/>
<text font-size="12" stroke="black" stroke-width="1" text-anchor="middle" dominant-baseline="central" x="300" y="25">start pt</text>
<text font-size="12" stroke="black" stroke-width="1" text-anchor="middle" dominant-baseline="central" x="300" y="175">end pt</text>
<text font-size="12" stroke="black" stroke-width="1" x="500" y="50">sf=0 on this side</text>
<text font-size="12" stroke="black" stroke-width="1" x="50" y="150">sf=1 on this side</text>
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
test_that("test-Path-5", {
P0=c(200,50)
P1=c(300,150)
C0<-c(100,100)
WH<-c(600,200)
svgR( wh=WH, 
  path(d=c("M",P0, "Q", C0,  P1) , stroke='red',
  stroke.width=3, fill='none') ,
  g( 
    stroke='blue',
    line(xy1=P0,xy2=C0),
    line(xy2=P1,xy1=C0)
  ),
  g(
    stroke="black",
    text("P0",cxy=P0 ),
    text("C0",cxy=C0),
    text("P1", cxy=P1)
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<path d="M 200 50 Q 100 100 300 150" stroke="red" stroke-width="3" fill="none"/>
<g stroke="blue">
<line x1="200" y1="50" x2="100" y2="100"/>
<line x1="100" y1="100" x2="300" y2="150"/>
</g>
<g stroke="black">
<text text-anchor="middle" dominant-baseline="central" x="200" y="50">P0</text>
<text text-anchor="middle" dominant-baseline="central" x="100" y="100">C0</text>
<text text-anchor="middle" dominant-baseline="central" x="300" y="150">P1</text>
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
test_that("test-Path-6", {
Pt0=c(200,50)
Pt1=c(300,150)
C0<-c(100,100)
C1<-2*Pt1 -C0
Pt2=c(400,50)
svgR( wh=c(600, 250), 
      path(d=c("M",Pt0, "Q", C0,  Pt1 , "T", Pt2) , stroke='red', stroke.width=3, fill='none') ,
      #path(d=c("T", endPt2) , stroke='green', fill='none') ,
      g( 
        stroke='blue',
        line(xy1=Pt0,xy2=C0),
        line(xy2=Pt1,xy1=C0),
        line(xy1=Pt1,xy2=C1),
        line(xy2=Pt2,xy1=C1)
      ),
      g(
        stroke="black",
        text("P0",cxy=Pt0 ),
        text("C0",cxy=C0),
        text("C1",cxy=C1),
        text("P2",cxy=Pt2),
        text("P1", cxy=Pt1)
      )
    )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="250">
<path d="M 200 50 Q 100 100 300 150 T 400 50" stroke="red" stroke-width="3" fill="none"/>
<g stroke="blue">
<line x1="200" y1="50" x2="100" y2="100"/>
<line x1="100" y1="100" x2="300" y2="150"/>
<line x1="300" y1="150" x2="500" y2="200"/>
<line x1="500" y1="200" x2="400" y2="50"/>
</g>
<g stroke="black">
<text text-anchor="middle" dominant-baseline="central" x="200" y="50">P0</text>
<text text-anchor="middle" dominant-baseline="central" x="100" y="100">C0</text>
<text text-anchor="middle" dominant-baseline="central" x="500" y="200">C1</text>
<text text-anchor="middle" dominant-baseline="central" x="400" y="50">P2</text>
<text text-anchor="middle" dominant-baseline="central" x="300" y="150">P1</text>
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
test_that("test-Path-7", {
P0=c(200,50)
P1=c(300,150)
C0<-c(100,100)
C1<-c(400,100)
svgR( wh=c(600, 200), 
      path(d=c("M",P0, "C", C0, C1, P1) , stroke='red', stroke.width=3, fill='none') ,
      g( 
        stroke='blue',
        line(xy1=P0,xy2=C0),
        line(xy2=P1,xy1=C1)
      ),
      g(
        stroke="black",
        text("P0",cxy=P0 ),
        text("C0",cxy=C0),
        text("C1",cxy=C1),
        text("P1", cxy=P1)
      )
    )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<path d="M 200 50 C 100 100 400 100 300 150" stroke="red" stroke-width="3" fill="none"/>
<g stroke="blue">
<line x1="200" y1="50" x2="100" y2="100"/>
<line x1="400" y1="100" x2="300" y2="150"/>
</g>
<g stroke="black">
<text text-anchor="middle" dominant-baseline="central" x="200" y="50">P0</text>
<text text-anchor="middle" dominant-baseline="central" x="100" y="100">C0</text>
<text text-anchor="middle" dominant-baseline="central" x="400" y="100">C1</text>
<text text-anchor="middle" dominant-baseline="central" x="300" y="150">P1</text>
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
test_that("test-Path-8", {
P0=c(200,50)
C1=c(300,150)
C0<-c(100,100)
P1<-c(400,100)
svgR( wh=c(600, 200), 
      path(d=c("M",P0, "C", C0, C1, P1) , stroke='red', stroke.width=3, fill='none') ,
      g( 
        stroke='blue',
        line(xy1=P0,xy2=C0),
        line(xy2=P1,xy1=C1)
      ),
      g(
        stroke="black",
        text("P0",cxy=P0 ),
        text("C0",cxy=C0),
        text("C1",cxy=C1),
        text("P1", cxy=P1)
      )
    )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<path d="M 200 50 C 100 100 300 150 400 100" stroke="red" stroke-width="3" fill="none"/>
<g stroke="blue">
<line x1="200" y1="50" x2="100" y2="100"/>
<line x1="300" y1="150" x2="400" y2="100"/>
</g>
<g stroke="black">
<text text-anchor="middle" dominant-baseline="central" x="200" y="50">P0</text>
<text text-anchor="middle" dominant-baseline="central" x="100" y="100">C0</text>
<text text-anchor="middle" dominant-baseline="central" x="300" y="150">C1</text>
<text text-anchor="middle" dominant-baseline="central" x="400" y="100">P1</text>
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
test_that("test-Path-9", {
P0<-c(350,30)
P1<-c(400,150)
P2<-c(200,250)
  
C0<-P0+c(-100,50)  
C1<-P1+c(100,-50) 
C2<-P2+c(-80,-100)

R2<-2*P1-C1 #used only to display the reflected control point

svgR( wh=c(600, 300), 
      #The path of interest
      path(d=c("M",P0, "C", C0, C1, P1, "S", C2, P2) , stroke='red', stroke.width=3, fill='none') ,
      
      g( # lines to illustrate control points
        stroke='blue',
        line(xy1=P0,xy2=C0),
        line(xy2=P1,xy1=C1),
        line(xy1=P1,xy2=R2),
        line(xy2=P2,xy1=C2)
      ),
      g( # labeling of control points
        stroke="black",
        text("P0",cxy=P0 ),
        text("C0",cxy=C0),
        text("C1",cxy=C1),
        text("P1", cxy=P1),
        text("C2",cxy=C2),
        text("R2",cxy=R2),
        text("P2", cxy=P2)
      )
    )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="300">
<path d="M 350 30 C 250 80 500 100 400 150 S 120 150 200 250" stroke="red" stroke-width="3" fill="none"/>
<g stroke="blue">
<line x1="350" y1="30" x2="250" y2="80"/>
<line x1="500" y1="100" x2="400" y2="150"/>
<line x1="400" y1="150" x2="300" y2="200"/>
<line x1="120" y1="150" x2="200" y2="250"/>
</g>
<g stroke="black">
<text text-anchor="middle" dominant-baseline="central" x="350" y="30">P0</text>
<text text-anchor="middle" dominant-baseline="central" x="250" y="80">C0</text>
<text text-anchor="middle" dominant-baseline="central" x="500" y="100">C1</text>
<text text-anchor="middle" dominant-baseline="central" x="400" y="150">P1</text>
<text text-anchor="middle" dominant-baseline="central" x="120" y="150">C2</text>
<text text-anchor="middle" dominant-baseline="central" x="300" y="200">R2</text>
<text text-anchor="middle" dominant-baseline="central" x="200" y="250">P2</text>
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
test_that("test-Path-10", {
svgR( wh=c(800, 200), 
      g( stroke.width=3, fill="transparent",
        path(d = c("M",100, 0, "C", 100, 100, 200, 0, 200, 100), stroke='red' ), 
        path(d = c("M",200, 0, "c", 0, 100, 100, 0, 100, 100),  stroke='pink'), 
        path(d = c("M",300, 0, "c", 0, 100, 100, 0, 100, 100),  stroke='purple'), 
        path(d = c("M",400, 0, "c", 0, 100, 100, 0, 100, 200),  stroke='green'), 
        path(d = c("M",500, 0, "c", 0, 100, 100, 0, 100, 200),  stroke='blue'), 
        path(d = c("M",600, 0, "c", 0, 300, 100, -100, 100, 200),  stroke='orange')
      )
 )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<g stroke-width="3" fill="transparent">
<path d="M 100 0 C 100 100 200 0 200 100" stroke="red"/>
<path d="M 200 0 c 0 100 100 0 100 100" stroke="pink"/>
<path d="M 300 0 c 0 100 100 0 100 100" stroke="purple"/>
<path d="M 400 0 c 0 100 100 0 100 200" stroke="green"/>
<path d="M 500 0 c 0 100 100 0 100 200" stroke="blue"/>
<path d="M 600 0 c 0 300 100 -100 100 200" stroke="orange"/>
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



