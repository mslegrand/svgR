context("text")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-text-1", {
WH=c(800, 400) # window rect
r=WH[2]/2
svgR( wh=WH,
  g(
    circle(cxy=WH/2, stroke.width=8, stroke="red", r=r),
    text('Data Rules', cxy=WH/2, font.size=80, stroke="red") 
    ) 
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="400">
<g>
<circle stroke-width="8" stroke="red" r="200" cx="400" cy="200"/>
<text font-size="80" stroke="red" text-anchor="middle" dominant-baseline="central" x="400" y="200">Data Rules</text>
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
test_that("test-text-2", {
y<-40
fontName<-c("serif","sans-serif","cursive","fantasy","Arial","Times New Roman","Verdana", "Comic Sans")
WH=c(800,200)
svgR( wh=WH,
      font.size=40, stroke='black',  stroke.width=0.5,
      lapply(1:8, function(i){
        text(fontName[i], xy=c(40+400*(i%%2), 40*floor((i+1)/2)), font.family=fontName[i], fill=rrgb())
      })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" font-size="40" stroke="black" stroke-width="0.5" width="800" height="200">
<text font-family="serif" fill="rgb(137,24,13)" x="440" y="40">serif</text>
<text font-family="sans-serif" fill="rgb(21,13,65)" x="40" y="40">sans-serif</text>
<text font-family="cursive" fill="rgb(171,37,255)" x="440" y="80">cursive</text>
<text font-family="fantasy" fill="rgb(62,37,233)" x="40" y="80">fantasy</text>
<text font-family="Arial" fill="rgb(124,24,200)" x="440" y="120">Arial</text>
<text font-family="Times New Roman" fill="rgb(189,200,149)" x="40" y="120">Times New Roman</text>
<text font-family="Verdana" fill="rgb(161,236,139)" x="440" y="160">Verdana</text>
<text font-family="Comic Sans" fill="rgb(54,84,214)" x="40" y="160">Comic Sans</text>
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
test_that("test-text-3", {
y<-40
WH=c(800,120)
fontStyle=c("normal" , "italic" , "oblique", "inherit")
svgR( wh=WH,
      font.style= "inherit",
      font.size=40, stroke='black',  stroke.width=0.5,
      lapply(1:4, function(i){
        text(fontStyle[i], xy=c(40+400*(i%%2), 40*floor((i+1)/2)), font.style=fontStyle[i], fill=rrgb())
      })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" font-style="inherit" font-size="40" stroke="black" stroke-width="0.5" width="800" height="120">
<text font-style="normal" fill="rgb(102,216,163)" x="440" y="40">normal</text>
<text font-style="italic" fill="rgb(15,228,206)" x="40" y="40">italic</text>
<text font-style="oblique" fill="rgb(236,209,244)" x="440" y="80">oblique</text>
<text font-style="inherit" fill="rgb(173,201,121)" x="40" y="80">inherit</text>
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
# test-text-4 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-text-5 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-text-6", {
WH<-c(800,160)
svgR( wh=WH,
      text( xy=c(40,120), lapply(1:14, function(i){
        tspan( LETTERS[i] , font.size=i*10, fill=rrgb() )}
      ))
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="160">
<text x="40" y="120">
<tspan font-size="10" fill="rgb(172,4,173)">A</tspan>
<tspan font-size="20" fill="rgb(189,3,155)">B</tspan>
<tspan font-size="30" fill="rgb(162,84,247)">C</tspan>
<tspan font-size="40" fill="rgb(23,208,22)">D</tspan>
<tspan font-size="50" fill="rgb(231,136,210)">E</tspan>
<tspan font-size="60" fill="rgb(201,49,144)">F</tspan>
<tspan font-size="70" fill="rgb(17,176,147)">G</tspan>
<tspan font-size="80" fill="rgb(61,138,99)">H</tspan>
<tspan font-size="90" fill="rgb(196,13,63)">I</tspan>
<tspan font-size="100" fill="rgb(110,57,236)">J</tspan>
<tspan font-size="110" fill="rgb(183,172,255)">K</tspan>
<tspan font-size="120" fill="rgb(109,35,67)">L</tspan>
<tspan font-size="130" fill="rgb(35,73,239)">M</tspan>
<tspan font-size="140" fill="rgb(10,107,248)">N</tspan>
</text>
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
test_that("test-text-7", {
WH<-c(800,160)
svgR( wh=WH,
      text( xy=c(40,40), font.size=20, lapply(1:14, function(i){
        tspan( LETTERS[i] , dy=10*(i%%2), fill=rrgb() )}
      ))
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="160">
<text font-size="20" x="40" y="40">
<tspan dy="10" fill="rgb(125,27,235)">A</tspan>
<tspan dy="0" fill="rgb(52,220,46)">B</tspan>
<tspan dy="10" fill="rgb(96,62,154)">C</tspan>
<tspan dy="0" fill="rgb(157,96,224)">D</tspan>
<tspan dy="10" fill="rgb(64,248,182)">E</tspan>
<tspan dy="0" fill="rgb(116,58,105)">F</tspan>
<tspan dy="10" fill="rgb(22,222,82)">G</tspan>
<tspan dy="0" fill="rgb(109,164,119)">H</tspan>
<tspan dy="10" fill="rgb(35,118,135)">I</tspan>
<tspan dy="0" fill="rgb(12,78,242)">J</tspan>
<tspan dy="10" fill="rgb(99,208,183)">K</tspan>
<tspan dy="0" fill="rgb(4,215,242)">L</tspan>
<tspan dy="10" fill="rgb(216,159,218)">M</tspan>
<tspan dy="0" fill="rgb(61,138,130)">N</tspan>
</text>
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
# test-text-8 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-text-9 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-text-10", {
WH<-c(800, 600)
txt<-"The product of the circumferenc times the redius equals twice the area."
r=200
Pt1=WH/2+c(0,r)
Pt2=WH/2-c(0,r)
rxy=c(r,r)
svgR( wh=WH,
  defs( 
    path(id="C1",d=c("M", Pt1, "A", rxy, 0, 1, 0, Pt2, "A", rxy, 0, 1, 0, Pt1) , stroke='red')
  ), 
  text( textPath(txt, font.size=40, stroke='black', stroke.width=0.5, fill='red', xlink.href="#C1")),
  circle(cxy=WH/2, r=90, stroke='red', fill='orange')
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="600">
<defs>
<path id="C1" d="M 400 500 A 200 200 0 1 0 400 100 A 200 200 0 1 0 400 500" stroke="red"/>
</defs>
<text>
<textPath font-size="40" stroke="black" stroke-width="0.5" fill="red" xlink:href="#C1">The product of the circumferenc times the redius equals twice the area.</textPath>
</text>
<circle r="90" stroke="red" fill="orange" cx="400" cy="300"/>
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
test_that("test-text-11", {
WH<-c(800, 300)
txt<-"help, I'm getting dizzy!"
r=200
Pt1=WH/2+c(0,r)
Pt2=WH/2-c(0,r)
rxy=c(r,r)
svgR( wh=WH,
  defs( 
    path(id="spiralText",
         d = "M 50,50 A 20,20 0 0 1 90,50 A 40,40 0 0 1 10,50 A 60,60 0 0 1 130,50",
         stroke='blue')
  ), 
  text( textPath(txt, font.size=30, stroke='black', stroke.width=0.5, fill='red', xlink.href="#spiralText"),
        transform=list(translate=c(100,100))
  )
)->res
expected_res<-"<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ev=\"http://www.w3.org/2001/xml-events\" width=\"800\" height=\"300\">
<defs>
<path id=\"spiralText\" d=\"M 50,50 A 20,20 0 0 1 90,50 A 40,40 0 0 1 10,50 A 60,60 0 0 1 130,50\" stroke=\"blue\"/>
</defs>
<text transform=\"translate(100,100)\">
<textPath font-size=\"30\" stroke=\"black\" stroke-width=\"0.5\" fill=\"red\" xlink:href=\"#spiralText\">help, I'm getting dizzy!</textPath>
</text>
</svg>"
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
test_that("test-text-12", {
WH=c(800,250)
svgR( wh=WH,
      text( "Reflections", xy=c(0,0), 
            font.size=100, font.weight="bold", 
            stroke='black',  stroke.width=0.5, fill='red',
            transform=list(translate=c(100,100))
            ),
      text( "Reflections", xy=c(0,0), 
            font.size=100, font.weight="bold", 
            stroke='black',  stroke.width=0.5, fill='pink',
            transform = list(translate=c(100, 100), scale=c(1, -1) ) 
          )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="250">
<text font-size="100" font-weight="bold" stroke="black" stroke-width="0.5" fill="red" transform="translate(100,100)" x="0" y="0">Reflections</text>
<text font-size="100" font-weight="bold" stroke="black" stroke-width="0.5" fill="pink" transform="translate(100,100) scale(1,-1)" x="0" y="0">Reflections</text>
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
test_that("test-text-13", {
WH<-c(200,600)
svgR( wh=WH,
      text( linearRegression ,  writing.mode="tb" , 
              font.size=100,
              xy=c(80, 80), fill='red',
              font.weight="bold", stroke='black',  stroke.width=0.5
      )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="200" height="600">
<text writing-mode="tb" font-size="100" fill="red" font-weight="bold" stroke="black" stroke-width="0.5" x="80" y="80">线性回归</text>
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
test_that("test-text-14", {
WH=c(800,100)
svgR( wh=WH,
      text( "Outlined Text", xy=c(60,80), 
            font.size=50, font.weight="bold", 
            stroke='black',  stroke.width=0.5, fill='none'),
      text( "Filled Text", xy=c(460,80), 
            font.size=50, font.weight="bold", 
            stroke='black',  stroke.width=0.5, fill='lightblue')
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<text font-size="50" font-weight="bold" stroke="black" stroke-width="0.5" fill="none" x="60" y="80">Outlined Text</text>
<text font-size="50" font-weight="bold" stroke="black" stroke-width="0.5" fill="lightblue" x="460" y="80">Filled Text</text>
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
test_that("test-text-15", {
WH=c(800,120)
svgR( wh=WH,
      text( "svgRRocks", xy=c(50,100), 
            font.size=100, font.weight="bold", 
            stroke='black',  stroke.width=0.5, fill='red')
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="120">
<text font-size="100" font-weight="bold" stroke="black" stroke-width="0.5" fill="red" x="50" y="100">svgRRocks</text>
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



