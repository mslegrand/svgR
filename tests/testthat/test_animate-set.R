context("animate-set")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-animate-set-1", {
WH<-c(800,200)
svgR( wh=WH,
   text( 'svgR', xy=c(40,120),  font.size=100, stroke="black", fill="lightgreen",
      set(attributeName="fill", to="green",
          begin=0, 
          end=0
          )
    )
)->res
expected_res<-"<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' ev='http://www.w3.org/2001/xml-events' width='800' height='200'>\n  <text font-size='100' stroke='black' fill='lightgreen' x='40' y='120'>\n      svgR\n      <set attributeName='fill' to='green' begin='0' end='0'/>\n  </text>\n</svg>"
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
test_that("test-animate-set-2", {
WH<-c(800,200)
svgR( wh=WH,
   text( 'svgR', xy=c(40,120),  font.size=100, stroke="black", fill="lightgreen",
      set(attributeName="visibility", to="hidden",
          begin=0, 
          end=0
          )
    )
)->res
expected_res<-"<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' ev='http://www.w3.org/2001/xml-events' width='800' height='200'>\n  <text font-size='100' stroke='black' fill='lightgreen' x='40' y='120'>\n      svgR\n      <set attributeName='visibility' to='hidden' begin='0' end='0'/>\n  </text>\n</svg>"
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
# test-animate-set-3 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-animate-set-4", {
WH<-c(800,200)
svgR( wh=WH,
   text( 'svgR', xy=c(50,120),  font.size=100, stroke="black", fill="lightgreen",
      set(attributeName="x", to="550",
          begin=0, 
          end=0
          )
    )
)->res
expected_res<-"<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' ev='http://www.w3.org/2001/xml-events' width='800' height='200'>\n  <text font-size='100' stroke='black' fill='lightgreen' x='50' y='120'>\n      svgR\n      <set attributeName='x' to='550' begin='0' end='0'/>\n  </text>\n</svg>"
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
test_that("test-animate-set-5", {
 WH<-c(800,200)
 svgR( wh=WH,
    text( 'svgR', xy=c(50,120),  font.size=50, stroke="black", fill="lightgreen",
       set(attributeName="xy", to=c(200,50),
           begin=0, 
           end=0
           )
     )
)->res
expected_res<-"<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' ev='http://www.w3.org/2001/xml-events' width='800' height='200'>\n  <text font-size='50' stroke='black' fill='lightgreen' x='50' y='120'>\n      svgR\n      <set attributeName='x' to='200' begin='0' end='0'/>\n      <set attributeName='y' to='50' begin='0' end='0'/>\n  </text>\n</svg>"
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
test_that("test-animate-set-6", {
 WH<-c(800,200)
 svgR( wh=WH,
    rect(  xy=c(50,50),  wh=c(600,50), stroke="black", fill="lightgreen",
       set(attributeName="wh", to=c(200,100),
           begin=0, 
           end=0
           )
     )
 )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<rect stroke="black" fill="lightgreen" width="600" height="50" x="50" y="50">
<set attributeName="width" to="200" begin="0" end="0"/>
<set attributeName="height" to="100" begin="0" end="0"/>
</rect>
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
test_that("test-animate-set-7", {
WH<-c(800,300)
svgR( wh=WH,
    svg(xy=c(0,0),wh=c(200,200), viewBox=c(0,0,40,40),
      fill='lightgreen',
      rect(xy=c(1,1), wh=c(2,2), fill='red', stroke='black'),
      set(attributeName="viewBox", to=paste(0,0,4,4),
            begin=0, 
            end=0
      )
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="300">
<svg viewBox="0,0,40,40" fill="lightgreen" width="200" height="200" x="0" y="0">
<rect fill="red" stroke="black" width="2" height="2" x="1" y="1"/>
<set attributeName="viewBox" to="0 0 4 4" begin="0" end="0"/>
</svg>
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
test_that("test-animate-set-8", {
WH<-c(800,200)
svgR( wh=WH,
   line(  xy1=c(40,120), xy2=c(700,20), stroke.width=10 ,
         stroke="black", fill="lightgreen",
      set(attributeName="stroke", to="red",
          begin=0, 
          end=0
          )
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<line stroke-width="10" stroke="black" fill="lightgreen" x1="40" y1="120" x2="700" y2="20">
<set attributeName="stroke" to="red" begin="0" end="0"/>
</line>
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
test_that("test-animate-set-9", {
WH<-c(800,200)
attr<-c("stroke","stroke.width","stroke.dasharray", "stroke.linecap")
val<-c("red",20,50,"round")
svgR( wh=WH,
   line(  xy1=c(40,120), xy2=c(700,20), stroke.width=10 ,
         stroke="black", stroke.dasharray=100,
      lapply(1:4, function(i){
        set(attributeName=attr[i], to=val[i],
            begin=0, 
            end=0
            )
      })
   )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<line stroke-width="10" stroke="black" stroke-dasharray="100" x1="40" y1="120" x2="700" y2="20">
<set attributeName="stroke" to="red" begin="0" end="0"/>
<set attributeName="stroke-width" to="20" begin="0" end="0"/>
<set attributeName="stroke-dasharray" to="50" begin="0" end="0"/>
<set attributeName="stroke-linecap" to="round" begin="0" end="0"/>
</line>
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
# test-animate-set-10 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-animate-set-11", {
WH<-c(800,200)
svgR( wh=WH,
   text( 'svgR', xy=c(40,100),  font.size=100,  fill="lightgreen", stroke='black',
      set(attributeName="font.family", to="fantasy",
          begin=0, 
          end=0
          )
    )
)->res
expected_res<-"<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' ev='http://www.w3.org/2001/xml-events' width='800' height='200'>\n  <text font-size='100' fill='lightgreen' stroke='black' x='40' y='100'>\n      svgR\n      <set attributeName='font-family' to='fantasy' begin='0' end='0'/>\n  </text>\n</svg>"
    res <- as.character(res)
    rlines <- str_trim(strsplit(res, "\n")[[1]])
    elines <- str_trim(strsplit(expected_res, "\n")[[1]])
    expect_equal(length(rlines), length(elines))
    for (i in length(rlines)) {
        expect_identical(rlines[i], elines[i])
    }
})
# -----------------------------------------------------



