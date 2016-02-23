context("caseStudy_lighting")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-caseStudy_lighting-1", {
# 
WH=c(800,400)
R<-.4*WH[2]
svgR(wh=WH+c(0,30),
    circle( cxy=WH/2, r= R,
      filter=filter(
        feGaussianBlur( in1="SourceAlpha", stdDeviation=R/2)
      )
    ),
    text("Step 1: A Gaussian blur", cxy=c(.5,1)*WH-c(0,15), stroke='black')
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="430">
<filter id="genid2">
<feGaussianBlur in="SourceAlpha" stdDeviation="80"/>
</filter>
<circle r="160" filter="url(#genid2)" cx="400" cy="200"/>
<text stroke="black" text-anchor="middle" dominant-baseline="central" x="400" y="385">Step 1: A Gaussian blur</text>
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
test_that("test-caseStudy_lighting-2", {
# 
WH=c(800,400)
R<-.4*WH[2]
svgR(wh=WH+c(0,30),
    circle( cxy=WH/2, r= R,
      filter=filter(
        feGaussianBlur( in1="SourceAlpha", stdDeviation=R/2)
      ),
      clip.path=clipPath(circle(cxy=WH/2, r=R))
    ),
    text("Step 2: Add clip path", cxy=c(.5,1)*WH-c(0,15), stroke='black')
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="430">
<filter id="genid3">
<feGaussianBlur in="SourceAlpha" stdDeviation="80"/>
</filter>
<clipPath id="genid4">
<circle r="160" cx="400" cy="200"/>
</clipPath>
<circle r="160" filter="url(#genid3)" clip-path="url(#genid4)" cx="400" cy="200"/>
<text stroke="black" text-anchor="middle" dominant-baseline="central" x="400" y="385">Step 2: Add clip path</text>
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
test_that("test-caseStudy_lighting-3", {
# 
WH=c(800,400)
R<-.4*WH[2]
svgR(wh=WH,
    circle( cxy=WH/2, r= R,  
      filter=filter( 
        feDiffuseLighting( lighting.color="#44BBFF",  
          diffuseConstant=1,
          surfaceScale=R,
          in1=feGaussianBlur(in1="SourceAlpha", stdDeviation=.5*R),
          feDistantLight( elevation= 60, azimuth=90 )
        )
      ),
      clip.path=clipPath(circle(cxy=WH/2,r=R))
    ),
    text("Step 3: Add diffuse colored light", cxy=c(.5,1)*WH-c(0,15), stroke='black')
  )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="400">
<filter id="genid6">
<feGaussianBlur in="SourceAlpha" stdDeviation="80" result="genid5"/>
<feDiffuseLighting lighting-color="#44BBFF" diffuseConstant="1" surfaceScale="160" in="genid5">
<feDistantLight elevation="60" azimuth="90"/>
</feDiffuseLighting>
</filter>
<clipPath id="genid7">
<circle r="160" cx="400" cy="200"/>
</clipPath>
<circle r="160" filter="url(#genid6)" clip-path="url(#genid7)" cx="400" cy="200"/>
<text stroke="black" text-anchor="middle" dominant-baseline="central" x="400" y="385">Step 3: Add diffuse colored light</text>
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
test_that("test-caseStudy_lighting-4", {
# 
WH=c(800,400)
R<-.4*WH[2]
svgR(wh=WH,
    circle( cxy=WH/2, r= R,  
      filter=filter( 
        xy=-.4*c(1,1), wh=1.8*c(1,1), #in percentage
        feDiffuseLighting( lighting.color="#44BBFF",  
          diffuseConstant=1,
          surfaceScale=R,
          in1=feGaussianBlur(in1="SourceAlpha", stdDeviation=.5*R),
          feDistantLight( elevation= 60, azimuth=90 )
        )
      ),
      clip.path=clipPath(circle(cxy=WH/2,r=R))
    ),
    text("Step 4: Add diffuse colored light", cxy=c(.5,1)*WH-c(0,15), stroke='black')
  )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="400">
<filter width="1.8" height="1.8" x="-0.4" y="-0.4" id="genid9">
<feGaussianBlur in="SourceAlpha" stdDeviation="80" result="genid8"/>
<feDiffuseLighting lighting-color="#44BBFF" diffuseConstant="1" surfaceScale="160" in="genid8">
<feDistantLight elevation="60" azimuth="90"/>
</feDiffuseLighting>
</filter>
<clipPath id="genid10">
<circle r="160" cx="400" cy="200"/>
</clipPath>
<circle r="160" filter="url(#genid9)" clip-path="url(#genid10)" cx="400" cy="200"/>
<text stroke="black" text-anchor="middle" dominant-baseline="central" x="400" y="385">Step 4: Add diffuse colored light</text>
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
test_that("test-caseStudy_lighting-5", {
# 
WH=c(800,400)
R<-.4*WH[2]
svgR(wh=WH,
    circle( cxy=WH/2, r= R,  
      filter=filter( 
        xy=-.4*c(1,1), wh=1.8*c(1,1), #in percentage
        feGaussianBlur(
          stdDeviation=5,
          in1=feDiffuseLighting( lighting.color="#44BBFF",  
            diffuseConstant=1,
            surfaceScale=R,
            in1=feGaussianBlur(in1="SourceAlpha", stdDeviation=.5*R),
            feDistantLight( elevation= 60, azimuth=90 )
          )        
        )
      ),
      clip.path=clipPath(circle(cxy=WH/2,r=R))
    ),
    text("Step 4: Smooth with Gaussian Blur", cxy=c(.5,1)*WH-c(0,15), stroke='black')
  )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="400">
<filter width="1.8" height="1.8" x="-0.4" y="-0.4" id="genid13">
<feGaussianBlur in="SourceAlpha" stdDeviation="80" result="genid11"/>
<feDiffuseLighting lighting-color="#44BBFF" diffuseConstant="1" surfaceScale="160" in="genid11" result="genid12">
<feDistantLight elevation="60" azimuth="90"/>
</feDiffuseLighting>
<feGaussianBlur stdDeviation="5" in="genid12"/>
</filter>
<clipPath id="genid14">
<circle r="160" cx="400" cy="200"/>
</clipPath>
<circle r="160" filter="url(#genid13)" clip-path="url(#genid14)" cx="400" cy="200"/>
<text stroke="black" text-anchor="middle" dominant-baseline="central" x="400" y="385">Step 4: Smooth with Gaussian Blur</text>
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
test_that("test-caseStudy_lighting-6", {
# 
WH=c(800,400)
R<-.4*WH[2]
phi<-pi/4
spot.xyz<- c(WH/2,0)+ 2*R*c(0,-sin(phi),cos(phi))
spot.ptsAt<-c(WH/2,0)+ R*c(0,-sin(phi),cos(phi))
svgR(wh=WH,
    circle( cxy=WH/2, r= R,  stroke="none",  fill = "#000068",
      filter=filter( 
        xy=-.4*c(1,1), wh=1.8*c(1,1), #in percentage
        feGaussianBlur(
          stdDeviation=5,
          in1=feComposite( operator="arithmetic", k1234=c(0,1,1,0),
            in1=feDiffuseLighting( lighting.color="#44BBFF",  
                diffuseConstant=1,
                surfaceScale=R,
                in1=feGaussianBlur(in1="SourceAlpha", stdDeviation=.5*R),
                feDistantLight( elevation= 60, azimuth=90 )
            ),
            in2= feDiffuseLighting( lighting.color="#white",  
                diffuseConstant=.8,
                surfaceScale=R,
                in1=feGaussianBlur(in1="SourceAlpha", stdDeviation=.5*R),
                feSpotLight( xyz=spot.xyz, pointsAtXYZ=spot.ptsAt, limitingConeAngle=30 )
            )
          )
        ) 
      ),
      clip.path=clipPath(circle(cxy=WH/2,r=R))
    ),
    text("Step 5: A Spot Light", cxy=c(.5,1)*WH-c(0,15), stroke='black')
  )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="400">
<filter width="1.8" height="1.8" x="-0.4" y="-0.4" id="genid20">
<feGaussianBlur in="SourceAlpha" stdDeviation="80" result="genid15"/>
<feDiffuseLighting lighting-color="#44BBFF" diffuseConstant="1" surfaceScale="160" in="genid15" result="genid17">
<feDistantLight elevation="60" azimuth="90"/>
</feDiffuseLighting>
<feGaussianBlur in="SourceAlpha" stdDeviation="80" result="genid16"/>
<feDiffuseLighting lighting-color="#white" diffuseConstant="0.8" surfaceScale="160" in="genid16" result="genid18">
<feSpotLight limitingConeAngle="30" pointsAtX="400" pointsAtY="86.8629150101524" pointsAtZ="113.137084989848" x="400" y="-26.2741699796952" z="226.274169979695"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid17" in2="genid18" k1="0" k2="1" k3="1" k4="0" result="genid19"/>
<feGaussianBlur stdDeviation="5" in="genid19"/>
</filter>
<clipPath id="genid21">
<circle r="160" cx="400" cy="200"/>
</clipPath>
<circle r="160" stroke="none" fill="#000068" filter="url(#genid20)" clip-path="url(#genid21)" cx="400" cy="200"/>
<text stroke="black" text-anchor="middle" dominant-baseline="central" x="400" y="385">Step 5: A Spot Light</text>
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
test_that("test-caseStudy_lighting-7", {
# 
WH=c(800,400)
R<-.4*WH[2]
phi<-pi/4
spot.xyz<- c(WH/2,0)+ 2*R*c(0,-sin(phi),cos(phi))
spot.ptsAt<-c(WH/2,0)+ R*c(0,-sin(phi),cos(phi))
RXY<-c(1,.2)*R
svgR(wh=WH,
    ellipse(cxy=WH/2+c(0,R), rxy=RXY, opacity=.5,
      filter=filter( feGaussianBlur(in1="SourceAlpha", stdDeviation=5))
    ),
    circle( cxy=WH/2, r= R,  stroke="none",  fill = "#000068",
      filter=filter( 
        xy=-.4*c(1,1), wh=1.8*c(1,1), #in percentage
        feGaussianBlur(
          stdDeviation=5,
          in1=feComposite( operator="arithmetic", k1234=c(0,1,1,0),
            in1=feDiffuseLighting( lighting.color="#44BBFF",  
                diffuseConstant=1,
                surfaceScale=R,
                in1=feGaussianBlur(in1="SourceAlpha", stdDeviation=.5*R),
                feDistantLight( elevation= 60, azimuth=90 )
            ),
            in2= feDiffuseLighting( lighting.color="#white",  
                diffuseConstant=.8,
                surfaceScale=R,
                in1=feGaussianBlur(in1="SourceAlpha", stdDeviation=.5*R),
                feSpotLight( xyz=spot.xyz, pointsAtXYZ=spot.ptsAt, limitingConeAngle=30 )
            )
          )
        ) 
      ),
      clip.path=clipPath(circle(cxy=WH/2,r=R))
    ),
    text("Step 6: Shadow", cxy=c(.5,1)*WH-c(0,15), stroke='black')
  )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="400">
<filter id="genid22">
<feGaussianBlur in="SourceAlpha" stdDeviation="5"/>
</filter>
<ellipse opacity="0.5" filter="url(#genid22)" cx="400" cy="360" rx="160" ry="32"/>
<filter width="1.8" height="1.8" x="-0.4" y="-0.4" id="genid28">
<feGaussianBlur in="SourceAlpha" stdDeviation="80" result="genid23"/>
<feDiffuseLighting lighting-color="#44BBFF" diffuseConstant="1" surfaceScale="160" in="genid23" result="genid25">
<feDistantLight elevation="60" azimuth="90"/>
</feDiffuseLighting>
<feGaussianBlur in="SourceAlpha" stdDeviation="80" result="genid24"/>
<feDiffuseLighting lighting-color="#white" diffuseConstant="0.8" surfaceScale="160" in="genid24" result="genid26">
<feSpotLight limitingConeAngle="30" pointsAtX="400" pointsAtY="86.8629150101524" pointsAtZ="113.137084989848" x="400" y="-26.2741699796952" z="226.274169979695"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid25" in2="genid26" k1="0" k2="1" k3="1" k4="0" result="genid27"/>
<feGaussianBlur stdDeviation="5" in="genid27"/>
</filter>
<clipPath id="genid29">
<circle r="160" cx="400" cy="200"/>
</clipPath>
<circle r="160" stroke="none" fill="#000068" filter="url(#genid28)" clip-path="url(#genid29)" cx="400" cy="200"/>
<text stroke="black" text-anchor="middle" dominant-baseline="central" x="400" y="385">Step 6: Shadow</text>
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
test_that("test-caseStudy_lighting-8", {
# 
WH=c(800,400)
R<-.4*WH[2]
phi<-pi/4
spot.xyz<- c(WH/2,0)+ 2*R*c(0,-sin(phi),cos(phi))
spot.ptsAt<-c(WH/2,0)+ R*c(0,-sin(phi),cos(phi))
RXY<-c(1,.2)*R
svgR(wh=WH,
    ellipse(cxy=WH/2+c(0,R), rxy=RXY, fill="#888888", 
      filter=filter( feGaussianBlur(in1="SourceGraphic", stdDeviation=5))
    ),
    circle( cxy=WH/2, r= R,  stroke="none",  fill = "#000068",
      filter=filter( 
        xy=-.4*c(1,1), wh=1.8*c(1,1), #in percentage
        feGaussianBlur(
          stdDeviation=5,
          in1=feComposite( operator="arithmetic", k1234=c(0,1,1,0),
            in1=feDiffuseLighting( lighting.color="#44BBFF",  
                diffuseConstant=1,
                surfaceScale=R,
                in1=feGaussianBlur(in1="SourceAlpha", stdDeviation=.5*R),
                feDistantLight( elevation= 60, azimuth=90 )
            ),
            in2= feDiffuseLighting( lighting.color="#white",  
                diffuseConstant=.8,
                surfaceScale=R,
                in1=feGaussianBlur(in1="SourceAlpha", stdDeviation=.5*R),
                feSpotLight( xyz=spot.xyz, pointsAtXYZ=spot.ptsAt, limitingConeAngle=30 )
            )
          )
        ) 
      ),
      clip.path=clipPath(circle(cxy=WH/2,r=R))
    ),
    text("R",cxy=WH/2, stroke="white", font.size=200, fill="white")
  )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="400">
<filter id="genid30">
<feGaussianBlur in="SourceGraphic" stdDeviation="5"/>
</filter>
<ellipse fill="#888888" filter="url(#genid30)" cx="400" cy="360" rx="160" ry="32"/>
<filter width="1.8" height="1.8" x="-0.4" y="-0.4" id="genid36">
<feGaussianBlur in="SourceAlpha" stdDeviation="80" result="genid31"/>
<feDiffuseLighting lighting-color="#44BBFF" diffuseConstant="1" surfaceScale="160" in="genid31" result="genid33">
<feDistantLight elevation="60" azimuth="90"/>
</feDiffuseLighting>
<feGaussianBlur in="SourceAlpha" stdDeviation="80" result="genid32"/>
<feDiffuseLighting lighting-color="#white" diffuseConstant="0.8" surfaceScale="160" in="genid32" result="genid34">
<feSpotLight limitingConeAngle="30" pointsAtX="400" pointsAtY="86.8629150101524" pointsAtZ="113.137084989848" x="400" y="-26.2741699796952" z="226.274169979695"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid33" in2="genid34" k1="0" k2="1" k3="1" k4="0" result="genid35"/>
<feGaussianBlur stdDeviation="5" in="genid35"/>
</filter>
<clipPath id="genid37">
<circle r="160" cx="400" cy="200"/>
</clipPath>
<circle r="160" stroke="none" fill="#000068" filter="url(#genid36)" clip-path="url(#genid37)" cx="400" cy="200"/>
<text stroke="white" font-size="200" fill="white" text-anchor="middle" dominant-baseline="central" x="400" y="200">R</text>
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
# test-caseStudy_lighting-9 Ommited!!!

# -----------------------------------------------------



