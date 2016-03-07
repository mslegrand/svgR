context("animate-main")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-animate-main-1", {
# not run
svgR( wh=c(600, 100), 
  line( xy1=c(0,50), xy2=c(600,50), 
    stroke.width=20, stroke.dasharray=8, stroke.dashoffset=16, stroke="lightblue",   
    animate(attributeName="stroke.dashoffset", from=16, to=0 , dur=0.5,   repeatCount="indefinite")
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<line stroke-width="20" stroke-dasharray="8" stroke-dashoffset="16" stroke="lightblue" x1="0" y1="50" x2="600" y2="50">
<animate attributeName="stroke-dashoffset" from="16" to="0" dur="0.5" repeatCount="indefinite"/>
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
test_that("test-animate-main-2", {
WH<-c(800,300)
txt<-c(
  "All circles will turn orange after 10 seconds",
  "The first will go back to green after 1 second",
  "The second will go back to green after 2 seconds",
  "The third will remain orange"
)
labs<-c("orange 1 sec","orange 2 sec","forever orange")
cxy<-rbind(WH[1]*c(.3,.5,.7), WH[2]*c(.7,.7,.7))
svgR( wh=WH,
      text("RELOAD BROWSER:", xy=c(0,40), font.size=25),
      lapply(1:4, function(i){ text(txt[i], xy=c(250,i*20+20), font.size=16)}),
      circle(id="setCir1e1", r=70, fill='lightgreen', cxy=cxy[,1],
          set( attributeName="fill", to="orange", begin=10, dur=1 )),
      circle(id="setCir1e1", r=70, fill='lightgreen', cxy=cxy[,2],
          set( attributeName="fill", to="orange", begin=10, end=12 )),
      circle(id="setCir1e1", r=70, fill='lightgreen', cxy=cxy[,3],
          set( attributeName="fill", to="orange", begin=10 )),
      lapply(1:3, function(i)text( labs[i], cxy=cxy[,i], font.size=16 ))
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="300">
<text font-size="25" x="0" y="40">RELOAD BROWSER:</text>
<text font-size="16" x="250" y="40">All circles will turn orange after 10 seconds</text>
<text font-size="16" x="250" y="60">The first will go back to green after 1 second</text>
<text font-size="16" x="250" y="80">The second will go back to green after 2 seconds</text>
<text font-size="16" x="250" y="100">The third will remain orange</text>
<circle id="setCir1e1" r="70" fill="lightgreen" cx="240" cy="210">
<set attributeName="fill" to="orange" begin="10" dur="1"/>
</circle>
<circle id="setCir1e1" r="70" fill="lightgreen" cx="400" cy="210">
<set attributeName="fill" to="orange" begin="10" end="12"/>
</circle>
<circle id="setCir1e1" r="70" fill="lightgreen" cx="560" cy="210">
<set attributeName="fill" to="orange" begin="10"/>
</circle>
<text font-size="16" text-anchor="middle" dominant-baseline="central" x="240" y="210">orange 1 sec</text>
<text font-size="16" text-anchor="middle" dominant-baseline="central" x="400" y="210">orange 2 sec</text>
<text font-size="16" text-anchor="middle" dominant-baseline="central" x="560" y="210">forever orange</text>
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
test_that("test-animate-main-3", {
WH<-c(800,200)
svgR( wh=WH,
    text("Circle turns orange on mouse over", xy=c(20,20), font.size=20),
    circle( cxy=WH/2, r=70, stroke="black", fill="lightgreen",
      set( attributeName="fill", 
           to="orange", begin="mouseover", end="mouseout") 
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<text font-size="20" x="20" y="20">Circle turns orange on mouse over</text>
<circle r="70" stroke="black" fill="lightgreen" cx="400" cy="100">
<set attributeName="fill" to="orange" begin="mouseover" end="mouseout"/>
</circle>
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
test_that("test-animate-main-4", {
WH<-c(800,200)
svgR( wh=WH,
    text("Circle turns orange on mouse out", xy=c(20,20), font.size=20),
         circle( cxy=WH/2, r=70, stroke="black", fill="lightgreen",
      set( attributeName="fill", 
           to="orange", begin="mouseout", end="mouseover") 
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<text font-size="20" x="20" y="20">Circle turns orange on mouse out</text>
<circle r="70" stroke="black" fill="lightgreen" cx="400" cy="100">
<set attributeName="fill" to="orange" begin="mouseout" end="mouseover"/>
</circle>
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
test_that("test-animate-main-5", {
WH<-c(800,200)
svgR( wh=WH,
    text("Circle turns orange for 1 second on mouse click", xy=c(20,20), font.size=20),
    circle( cxy=WH/2, r=70, stroke="black", fill="lightgreen",
      set( attributeName="fill", 
           to="orange", begin="click", dur=1) 
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<text font-size="20" x="20" y="20">Circle turns orange for 1 second on mouse click</text>
<circle r="70" stroke="black" fill="lightgreen" cx="400" cy="100">
<set attributeName="fill" to="orange" begin="click" dur="1"/>
</circle>
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
test_that("test-animate-main-6", {
WH<-c(800,200)
svgR( wh=WH,
  text("Circle turns orange for 1 second on button press", xy=c(20,20), font.size=20),
  g( id='greenButton',
    rect( cxy=c(60,WH[2]/2), wh=c(100,20) , stroke="black", fill="green", 
    set(  attributeName="fill", 
           to="lightgreen", begin="greenButton.click", dur=.25) 
    ),
    text('Press Me', cxy=c(60,WH[2]/2), stroke="white")
  ),
    #
    circle( cxy=WH/2, r=70, stroke="black", fill="lightgreen",
      set( attributeName="fill", 
           to="orange", begin="greenButton.click", dur=1) 
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<text font-size="20" x="20" y="20">Circle turns orange for 1 second on button press</text>
<g id="greenButton">
<rect stroke="black" fill="green" width="100" height="20" x="10" y="90">
<set attributeName="fill" to="lightgreen" begin="greenButton.click" dur="0.25"/>
</rect>
<text stroke="white" text-anchor="middle" dominant-baseline="central" x="60" y="100">Press Me</text>
</g>
<circle r="70" stroke="black" fill="lightgreen" cx="400" cy="100">
<set attributeName="fill" to="orange" begin="greenButton.click" dur="1"/>
</circle>
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
test_that("test-animate-main-7", {
WH<-c(800,200)
svgR( wh=WH,
   circle( cxy=c(.1,.5)*WH, r=20, stroke="black", fill="lightgreen",
      set( id = 'circEvent0', attributeName="fill", 
           to="orange", begin="click", dur=.1) 
    ),
   circle( cxy=c(.3,.5)*WH, r=20, stroke="black", fill="lightgreen",
      set( id = 'circEvent1', attributeName="r", 
           to="50", begin="circEvent0.end", dur=.1) 
    ),
   circle( cxy=c(.5,.5)*WH, r=20, stroke="black", fill="lightgreen",
      set( id = 'circEvent2', attributeName="r", 
           to="50", begin="circEvent1.end", dur=.1) 
    ),
   circle( cxy=c(.7,.5)*WH, r=20, stroke="black", fill="lightgreen",
      set( id = 'circEvent3', attributeName="r", 
           to="50", begin="circEvent2.end", dur=.1) 
    ),
    text("Click left most circle to start chain reaction", xy=c(20,20), font.size=20
    )
     

)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<circle r="20" stroke="black" fill="lightgreen" cx="80" cy="100">
<set id="circEvent0" attributeName="fill" to="orange" begin="click" dur="0.1"/>
</circle>
<circle r="20" stroke="black" fill="lightgreen" cx="240" cy="100">
<set id="circEvent1" attributeName="r" to="50" begin="circEvent0.end" dur="0.1"/>
</circle>
<circle r="20" stroke="black" fill="lightgreen" cx="400" cy="100">
<set id="circEvent2" attributeName="r" to="50" begin="circEvent1.end" dur="0.1"/>
</circle>
<circle r="20" stroke="black" fill="lightgreen" cx="560" cy="100">
<set id="circEvent3" attributeName="r" to="50" begin="circEvent2.end" dur="0.1"/>
</circle>
<text font-size="20" x="20" y="20">Click left most circle to start chain reaction</text>
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
test_that("test-animate-main-8", {
WH<-c(800,200)
svgR( wh=WH,
    text("Click circle to start chain reaction", xy=c(20,20), font.size=20),
    circle( cxy=c(.1,.5)*WH, r=20, stroke="black", fill="lightgreen",
      set( id = 'eventchain0', attributeName="fill", 
           to="orange", begin="click", dur=.05) 
    ),
    lapply( 1:20, function(i){
    polygon(
      points=c(0,20, 20,0, 0,-20),
      transform=paste0("translate(", 80+i*30,",100)"),
      fill="lightblue",stroke="black",
      set( id=paste0("eventchain",i),attributeName="fill", 
           to="red",  dur=.05,
           begin=paste0("eventchain",i-1,".end")
      )      
    )})

)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<text font-size="20" x="20" y="20">Click circle to start chain reaction</text>
<circle r="20" stroke="black" fill="lightgreen" cx="80" cy="100">
<set id="eventchain0" attributeName="fill" to="orange" begin="click" dur="0.05"/>
</circle>
<polygon points="0 20 20 0 0 -20" transform="translate(110,100)" fill="lightblue" stroke="black">
<set id="eventchain1" attributeName="fill" to="red" dur="0.05" begin="eventchain0.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(140,100)" fill="lightblue" stroke="black">
<set id="eventchain2" attributeName="fill" to="red" dur="0.05" begin="eventchain1.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(170,100)" fill="lightblue" stroke="black">
<set id="eventchain3" attributeName="fill" to="red" dur="0.05" begin="eventchain2.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(200,100)" fill="lightblue" stroke="black">
<set id="eventchain4" attributeName="fill" to="red" dur="0.05" begin="eventchain3.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(230,100)" fill="lightblue" stroke="black">
<set id="eventchain5" attributeName="fill" to="red" dur="0.05" begin="eventchain4.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(260,100)" fill="lightblue" stroke="black">
<set id="eventchain6" attributeName="fill" to="red" dur="0.05" begin="eventchain5.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(290,100)" fill="lightblue" stroke="black">
<set id="eventchain7" attributeName="fill" to="red" dur="0.05" begin="eventchain6.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(320,100)" fill="lightblue" stroke="black">
<set id="eventchain8" attributeName="fill" to="red" dur="0.05" begin="eventchain7.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(350,100)" fill="lightblue" stroke="black">
<set id="eventchain9" attributeName="fill" to="red" dur="0.05" begin="eventchain8.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(380,100)" fill="lightblue" stroke="black">
<set id="eventchain10" attributeName="fill" to="red" dur="0.05" begin="eventchain9.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(410,100)" fill="lightblue" stroke="black">
<set id="eventchain11" attributeName="fill" to="red" dur="0.05" begin="eventchain10.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(440,100)" fill="lightblue" stroke="black">
<set id="eventchain12" attributeName="fill" to="red" dur="0.05" begin="eventchain11.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(470,100)" fill="lightblue" stroke="black">
<set id="eventchain13" attributeName="fill" to="red" dur="0.05" begin="eventchain12.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(500,100)" fill="lightblue" stroke="black">
<set id="eventchain14" attributeName="fill" to="red" dur="0.05" begin="eventchain13.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(530,100)" fill="lightblue" stroke="black">
<set id="eventchain15" attributeName="fill" to="red" dur="0.05" begin="eventchain14.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(560,100)" fill="lightblue" stroke="black">
<set id="eventchain16" attributeName="fill" to="red" dur="0.05" begin="eventchain15.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(590,100)" fill="lightblue" stroke="black">
<set id="eventchain17" attributeName="fill" to="red" dur="0.05" begin="eventchain16.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(620,100)" fill="lightblue" stroke="black">
<set id="eventchain18" attributeName="fill" to="red" dur="0.05" begin="eventchain17.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(650,100)" fill="lightblue" stroke="black">
<set id="eventchain19" attributeName="fill" to="red" dur="0.05" begin="eventchain18.end"/>
</polygon>
<polygon points="0 20 20 0 0 -20" transform="translate(680,100)" fill="lightblue" stroke="black">
<set id="eventchain20" attributeName="fill" to="red" dur="0.05" begin="eventchain19.end"/>
</polygon>
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
# test-animate-main-9 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-animate-main-10 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-animate-main-11 Ommited!!!

# -----------------------------------------------------



