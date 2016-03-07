context("animate-animateTransform")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-animate-animateTransform-1", {
WH<-c(800,200)
dur=5
svgR( 
    text( "Animate Transform:  type=translate", xy=c(30,40), fill='darkblue', font.size=20),
    rect( xy=c(80,80), wh=c(40,40), fill='lightblue', stroke='blue', opacity=0.5,
      animateTransform(attributeName="transform", type='translate',
              from=c(0,0), to=c(600,0), 
              begin=0, dur=dur
      )
    )    
)->res
expected_res<-"<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' ev='http://www.w3.org/2001/xml-events' width='1150' height='860'>\n  <text fill='darkblue' font-size='20' x='30' y='40'>Animate Transform:  type=translate</text>\n  <rect fill='lightblue' stroke='blue' opacity='0.5' width='40' height='40' x='80' y='80'>\n      <animateTransform attributeName='transform' type='translate' from='0,0' to='600,0' begin='0' dur='5'/>\n  </rect>\n</svg>"
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
test_that("test-animate-animateTransform-2", {
WH<-c(800,250)
svgR( 
  text( "Animate Transform Rotation", xy=c(25,25), fill='blue', font.size=20),
  polygon( points=c( c(.5,.5), c(.55,.6), c(.45,.6))*(WH+c(0,-20)),
    fill='#80FFFF',stroke='red',
    animateTransform(attributeName="transform", type='rotate',
            from=c(0,WH/2), to=c(360,WH/2), 
            begin=0, dur=2, 
            repeatCount=5 
    )
   )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<text fill="blue" font-size="20" x="25" y="25">Animate Transform Rotation</text>
<polygon points="400 115 440 138 360 138" fill="#80FFFF" stroke="red">
<animateTransform attributeName="transform" type="rotate" from="0,400,125" to="360,400,125" begin="0" dur="2" repeatCount="5"/>
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
test_that("test-animate-animateTransform-3", {
WH<-c(800,150)
N<-12
fop<-.07*(2 + (1:N)*(8-2)/N) 
dur=1.25
rc=5
svgR( 
  text( "I'm busy", xy=c(300,80), fill='red', font.size=60, visibility='hidden',
    set(attributeName="visibility", to="visible",begin=0, dur=dur*rc)
  ),
  g(
    lapply(1:N, function(i){
      rect( xy=c(150,50),wh=c(3,10), fill='blue', fill.opacity=fop[i],
          transform=list( rotate=c(i*360/N, 150, 50), translate=c(0,10))
      )
    }),
    animateTransform(attributeName="transform", type='rotate',
            from=c(0,150,50), to=c(360,150,50), 
            begin=0, dur=dur, 
            repeatCount=rc 
    )
  )
)->res
expected_res<-"<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' ev='http://www.w3.org/2001/xml-events' width='1150' height='860'>\n  <text fill='red' font-size='60' visibility='hidden' x='300' y='80'>\n      I'm busy\n      <set attributeName='visibility' to='visible' begin='0' dur='6.25'/>\n  </text>\n  <g>\n      <rect fill='blue' fill-opacity='0.175' transform='rotate(30,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <rect fill='blue' fill-opacity='0.21' transform='rotate(60,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <rect fill='blue' fill-opacity='0.245' transform='rotate(90,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <rect fill='blue' fill-opacity='0.28' transform='rotate(120,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <rect fill='blue' fill-opacity='0.315' transform='rotate(150,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <rect fill='blue' fill-opacity='0.35' transform='rotate(180,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <rect fill='blue' fill-opacity='0.385' transform='rotate(210,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <rect fill='blue' fill-opacity='0.42' transform='rotate(240,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <rect fill='blue' fill-opacity='0.455' transform='rotate(270,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <rect fill='blue' fill-opacity='0.49' transform='rotate(300,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <rect fill='blue' fill-opacity='0.525' transform='rotate(330,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <rect fill='blue' fill-opacity='0.56' transform='rotate(360,150,50) translate(0,10)' width='3' height='10' x='150' y='50'/>\n      <animateTransform attributeName='transform' type='rotate' from='0,150,50' to='360,150,50' begin='0' dur='1.25' repeatCount='5'/>\n  </g>\n</svg>"
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
test_that("test-animate-animateTransform-4", {
WH<-c(800,250)
dur=5
rect.wh=c(50,50)
svgR( 
  svg( wh=WH, xy=c(0,0),
    text( "Scaling, with the origin as the fixed point", xy=c(30,30), fill='red', font.size=50, visibility='hidden'),
    rect( xy=c(100,50),wh=rect.wh, fill='lightblue', stroke='blue', opacity=.6,
      animateTransform(attributeName="transform", type='scale',
              from=c(1,1), to=c(2,2), 
              begin=0, dur=dur
      )
    )    
  )

)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<svg width="800" height="250" x="0" y="0">
<text fill="red" font-size="50" visibility="hidden" x="30" y="30">Scaling, with the origin as the fixed point</text>
<rect fill="lightblue" stroke="blue" opacity="0.6" width="50" height="50" x="100" y="50">
<animateTransform attributeName="transform" type="scale" from="1,1" to="2,2" begin="0" dur="5"/>
</rect>
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
test_that("test-animate-animateTransform-5", {
WH<-c(800,250)
dur=5
pt<-WH/2
alpha<-c(3,2)
rect.wh=c(50,50)
svgR( 
  svg( wh=WH, xy=c(0,0),
    text( "Transform ", xy=c(30,30), fill='red', font.size=50, visibility='hidden'),
    g(
      rect( xy=pt-rect.wh/2, wh=rect.wh, fill='lightblue', stroke='blue', opacity=.6,
        animateTransform(attributeName="transform", type='scale', 
              from=c(1,1), to=alpha, 
              begin=0, dur=dur
        )
      ),
      animateTransform(attributeName="transform", type='translate', additive='sum',
        from=c(0,0), to=(c(1,1)-alpha)*pt, 
        begin=0, dur=dur
      )     
    )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<svg width="800" height="250" x="0" y="0">
<text fill="red" font-size="50" visibility="hidden" x="30" y="30">Transform </text>
<g>
<rect fill="lightblue" stroke="blue" opacity="0.6" width="50" height="50" x="375" y="100">
<animateTransform attributeName="transform" type="scale" from="1,1" to="3,2" begin="0" dur="5"/>
</rect>
<animateTransform attributeName="transform" type="translate" additive="sum" from="0,0" to="-800,-125" begin="0" dur="5"/>
</g>
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
test_that("test-animate-animateTransform-6", {
WH<-c(800,250)
dur=5
pt<-WH/2
rect.wh=c(50,50)
alpha<-c(3,2)
svgR( 
  svg( wh=WH, xy=c(0,0), 
    text( "Transform ", xy=c(30,30), fill='red', font.size=50, visibility='hidden'),
    svg( viewBox=c(-pt, WH),
    # all contained coordinates are relative to xy=pt
      circle(cxy=c(0,0), r=200, fill='red', opacity=.3),
      rect( cxy=c(0,0), wh=rect.wh, fill='lightgreen', stroke='blue', opacity=.6,
        animateTransform(attributeName="transform", type='scale', 
              from=c(1,1), to=alpha, 
              begin=0, dur=dur
        )
      ) 
    )   
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<svg width="800" height="250" x="0" y="0">
<text fill="red" font-size="50" visibility="hidden" x="30" y="30">Transform </text>
<svg viewBox="-400,-125,800,250">
<circle r="200" fill="red" opacity="0.3" cx="0" cy="0"/>
<rect fill="lightgreen" stroke="blue" opacity="0.6" width="50" height="50" x="-25" y="-25">
<animateTransform attributeName="transform" type="scale" from="1,1" to="3,2" begin="0" dur="5"/>
</rect>
</svg>
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
test_that("test-animate-animateTransform-7", {
WH<-c(800,250)
dur=5
pt<-WH/2
alpha<-c(3,2)
svgR( 
  svg( wh=WH, xy=c(0,0),
    text( "Transform ", xy=c(30,30), fill='red', font.size=50, visibility='hidden'),
    g(
      rect( cxy=pt, wh=c(50,50), fill='lightblue', stroke='blue', opacity=.6,
        animateTransform(attributeName="transform", type='scale', 
              from=c(1,1), to=alpha, 
              begin=0, dur=dur
        )
      ),
      animateTransform(attributeName="transform", type='translate', additive='sum',
        from=c(0,0), to=(c(1,1)-alpha)*pt, 
        begin=0, dur=dur
      )     
    )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<svg width="800" height="250" x="0" y="0">
<text fill="red" font-size="50" visibility="hidden" x="30" y="30">Transform </text>
<g>
<rect fill="lightblue" stroke="blue" opacity="0.6" width="50" height="50" x="375" y="100">
<animateTransform attributeName="transform" type="scale" from="1,1" to="3,2" begin="0" dur="5"/>
</rect>
<animateTransform attributeName="transform" type="translate" additive="sum" from="0,0" to="-800,-125" begin="0" dur="5"/>
</g>
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
test_that("test-animate-animateTransform-8", {
WH<-c(800,250)
svgR( 
  text( "Animate Transform skewX", xy=c(400,25), fill='blue', font.size=20),
  rect( xy=c(0,0), wh=c(100,100), fill='lightblue', stroke='blue', opacity=.6,
    animateTransform(attributeName="transform", type='skewX',
            from=0, to=45, 
            begin=0, dur=5 
            
    )
   )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<text fill="blue" font-size="20" x="400" y="25">Animate Transform skewX</text>
<rect fill="lightblue" stroke="blue" opacity="0.6" width="100" height="100" x="0" y="0">
<animateTransform attributeName="transform" type="skewX" from="0" to="45" begin="0" dur="5"/>
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
test_that("test-animate-animateTransform-9", {
WH<-c(800,250)
svgR( 
  text( "Animate Transform skewY", xy=c(400,25), fill='blue', font.size=20),
  rect( xy=c(0,0), wh=c(100,100), fill='lightblue', stroke='blue', opacity=.6,
    animateTransform(attributeName="transform", type='skewY',
            from=0, to=45, 
            begin=0, dur=5 
            
    )
   )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<text fill="blue" font-size="20" x="400" y="25">Animate Transform skewY</text>
<rect fill="lightblue" stroke="blue" opacity="0.6" width="100" height="100" x="0" y="0">
<animateTransform attributeName="transform" type="skewY" from="0" to="45" begin="0" dur="5"/>
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
test_that("test-animate-animateTransform-10", {
WH<-c(800,260)
rect.wh<-c(100,100)
pt<-WH/2
dur=5
svgR( 
  text( "Animate Transform skewX", xy=c(400,25), fill='blue', font.size=20),
    svg( viewBox=c(-pt, WH),
    # all contained coordinates are relative to xy=pt
      rect( cxy=c(0,0), wh=rect.wh, fill='lightgreen', stroke='blue', opacity=.6,
        animateTransform(attributeName="transform", type='skewX', 
              from=0, to=45, 
              begin=0, dur=dur
        )
      ) 
    )  
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<text fill="blue" font-size="20" x="400" y="25">Animate Transform skewX</text>
<svg viewBox="-400,-130,800,260">
<rect fill="lightgreen" stroke="blue" opacity="0.6" width="100" height="100" x="-50" y="-50">
<animateTransform attributeName="transform" type="skewX" from="0" to="45" begin="0" dur="5"/>
</rect>
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



