context("Shapes")


assign("attr.no", 1, envir=environment(svgR:::genId))
# -----------------------------------------------------
test_that("test-Shapes-1", {
WH<-c(600, 100) # window rect
svgR( wh=WH,
      line( xy1=c(50,50), xy2=c(500,50), stroke='black')
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<line stroke="black" x1="50" y1="50" x2="500" y2="50"/>
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
test_that("test-Shapes-2", {
WH<-c(600, 100) # window rect
svgR( wh=WH,
      line( xy1=c(50,50), xy2=c(500,50), stroke='red')
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<line stroke="red" x1="50" y1="50" x2="500" y2="50"/>
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
test_that("test-Shapes-3", {
WH<-c(600, 100) # window rect
svgR( wh=WH,
      line( xy1=c(50,50), xy2=c(500,50), stroke='#00FF00', stroke.width=10)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<line stroke="#00FF00" stroke-width="10" x1="50" y1="50" x2="500" y2="50"/>
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
test_that("test-Shapes-4", {
WH<-c(600, 100) # window rect
svgR( wh=WH,
      line( xy1=c(50,50), xy2=c(500,50), stroke='rgb(0,0,255)', stroke.dasharray=8 )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<line stroke="rgb(0,0,255)" stroke-dasharray="8" x1="50" y1="50" x2="500" y2="50"/>
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
test_that("test-Shapes-5", {
WH<-c(600, 100) # window rect
svgR( wh=WH,
      polyline( 
        points=rbind(seq(from=20, to=500, by=50),c(20,80)), 
        stroke='#FF00AA', stroke.dasharray=8, fill='none' )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<polyline points="20,20 70,80 120,20 170,80 220,20 270,80 320,20 370,80 420,20 470,80" stroke="#FF00AA" stroke-dasharray="8" fill="none"/>
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
test_that("test-Shapes-6", {
WH<-c(600, 100) # window rect
points<-lapply((0:7)*(2*pi)/8, function(theta){
  c(100,50)+40*c(cos(theta),sin(theta))
} )
svgR( wh=WH,
      polygon( 
        points=points, stroke='red', fill='none' )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<polygon points="140,50 128.284271247462,78.2842712474619 100,90 71.7157287525381,78.2842712474619 60,50 71.7157287525381,21.7157287525381 100,10 128.284271247462,21.7157287525381" stroke="red" fill="none"/>
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
test_that("test-Shapes-7", {
WH<-c(600, 100) # window rect
points<-lapply(0:7, function(i){
  theta<-i*(2*pi)/8
  c(100,50)+20*(1+i%%2)*c(cos(theta),sin(theta))
} )
svgR( wh=WH,
      polygon( 
        points=points, stroke='blue', fill='pink' )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<polygon points="120,50 128.284271247462,78.2842712474619 100,70 71.7157287525381,78.2842712474619 80,50 71.7157287525381,21.7157287525381 100,30 128.284271247462,21.7157287525381" stroke="blue" fill="pink"/>
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
test_that("test-Shapes-8", {
WH<-c(600, 100) # window rect
points<-lapply(0:15, function(i){
  theta<-i*2*pi/16
  c(100,50)+20*(1+i%%2)*c(cos(theta),sin(theta))
} )
svgR( wh=WH,
      polygon( points=points, fill='orange' )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<polygon points="120,50 136.955181300451,65.3073372946036 114.142135623731,64.142135623731 115.307337294604,86.9551813004515 100,70 84.6926627053964,86.9551813004515 85.857864376269,64.142135623731 63.0448186995485,65.3073372946036 80,50 63.0448186995485,34.6926627053964 85.857864376269,35.857864376269 84.6926627053964,13.0448186995485 100,30 115.307337294604,13.0448186995485 114.142135623731,35.857864376269 136.955181300451,34.6926627053964" fill="orange"/>
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
test_that("test-Shapes-9", {
WH<-c(600, 100) # window rect
svgR( wh=WH,
      rect( xy=c(50,20), wh=c(100,40), stroke='blue', fill='none' )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<rect stroke="blue" fill="none" width="100" height="40" x="50" y="20"/>
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
test_that("test-Shapes-10", {
WH<-c(600, 150) # window rect
svgR( wh=WH,
  circle( cxy=c(120,60), r=25, stroke='blue', fill='none' )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="150">
<circle r="25" stroke="blue" fill="none" cx="120" cy="60"/>
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
test_that("test-Shapes-11", {
WH<-c(600, 150) # window rect
cxy<-c(120,60)
dx<-10
svgR( wh=WH,
  circle( cxy=cxy, r=1*dx*sqrt(2), stroke='blue', fill='none' ),
  circle( cxy=cxy, r=2*dx*sqrt(2), stroke='blue', fill='none' ),
  circle( cxy=cxy, r=3*dx*sqrt(2), stroke='blue', fill='none' ),
  rect(cxy=cxy, wh=1*dx*c(2,2), stroke='red',fill='none'),
  rect(cxy=cxy, wh=2*dx*c(2,2), stroke='red',fill='none'),
  rect(cxy=cxy, wh=3*dx*c(2,2), stroke='red',fill='none')
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="150">
<circle r="14.142135623731" stroke="blue" fill="none" cx="120" cy="60"/>
<circle r="28.2842712474619" stroke="blue" fill="none" cx="120" cy="60"/>
<circle r="42.4264068711929" stroke="blue" fill="none" cx="120" cy="60"/>
<rect stroke="red" fill="none" width="20" height="20" x="110" y="50"/>
<rect stroke="red" fill="none" width="40" height="40" x="100" y="40"/>
<rect stroke="red" fill="none" width="60" height="60" x="90" y="30"/>
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
test_that("test-Shapes-12", {
WH<-c(600, 200) # window rect
cxy<-c(120,100)
dx<-10
n<-6
svgR( wh=WH,
  lapply(1:n, function(i)circle( cxy=cxy, r=i*dx*sqrt(2), stroke='blue', fill='none' )),
  lapply(1:n, function(i)rect(cxy=cxy, wh=i*dx*c(2,2), stroke='red',fill='none'))
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<circle r="14.142135623731" stroke="blue" fill="none" cx="120" cy="100"/>
<circle r="28.2842712474619" stroke="blue" fill="none" cx="120" cy="100"/>
<circle r="42.4264068711929" stroke="blue" fill="none" cx="120" cy="100"/>
<circle r="56.5685424949238" stroke="blue" fill="none" cx="120" cy="100"/>
<circle r="70.7106781186548" stroke="blue" fill="none" cx="120" cy="100"/>
<circle r="84.8528137423857" stroke="blue" fill="none" cx="120" cy="100"/>
<rect stroke="red" fill="none" width="20" height="20" x="110" y="90"/>
<rect stroke="red" fill="none" width="40" height="40" x="100" y="80"/>
<rect stroke="red" fill="none" width="60" height="60" x="90" y="70"/>
<rect stroke="red" fill="none" width="80" height="80" x="80" y="60"/>
<rect stroke="red" fill="none" width="100" height="100" x="70" y="50"/>
<rect stroke="red" fill="none" width="120" height="120" x="60" y="40"/>
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
test_that("test-Shapes-13", {
WH<-c(600, 150) # window rect
cxy=c(200,75)
rxy<-c(50,30)
svgR( wh=WH,
  rect(cxy=cxy, wh=2*rxy, stroke='blue', fill='yellow'),
  ellipse(cxy=cxy, rxy=rxy, stroke='green', fill='orange' )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="150">
<rect stroke="blue" fill="yellow" width="100" height="60" x="150" y="45"/>
<ellipse stroke="green" fill="orange" cx="200" cy="75" rx="50" ry="30"/>
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



