context("filter-Lighting")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-filter-Lighting-1", {
## 
WH=c(400, 300) # window rect
elevation<-20 #seq(10,30, length.out=4) # in degrees
azimuth<-180 #seq(0,270, length.out=4) # in degrees
WH2<-WH-c(100,0)
fill<-"#400088"
font.size<-300
cxy<-WH2/2
cxy2= c(.5,.9)*WH2
std<-4
svgR( wh=WH,
    rect(xy=c(0,0),wh=WH2, fill='black'),
    text( "R",   cxy=cxy, font.size=font.size,  stroke="none", 
        fill = fill,
        filter=filter(
          feComposite( operator="arithmetic", k1234=c(0, 1, 1, 0),
            in1=feComposite( 
              operator="arithmetic", k1234=c(0, .8, 1,0),
              in1=feDiffuseLighting( lighting.color="white", diffuseConstant=.2,
                  in1=feGaussianBlur( stdDeviation=std),
                  specularExponent=30,
                  feDistantLight(elevation=elevation, azimuth=azimuth)
              ),
              in2= "SourceGraphic"
            ),
            in2=feSpecularLighting( lighting.color="white",  surfaceScale=10,
                  in1=feGaussianBlur( stdDeviation=std),
                  specularExponent=30,
                  feDistantLight(elevation=elevation, azimuth=azimuth)
            )
          )
        ),
        clip.path=clipPath( text( "R",   cxy=cxy, font.size=font.size) )
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="400" height="300">
<rect fill="black" width="300" height="300" x="0" y="0"/>
<filter id="genid7">
<feGaussianBlur stdDeviation="4" result="genid2"/>
<feDiffuseLighting lighting-color="white" diffuseConstant="0.2" in="genid2" specularExponent="30" result="genid3">
<feDistantLight elevation="20" azimuth="180"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid3" in2="SourceGraphic" k1="0" k2="0.8" k3="1" k4="0" result="genid5"/>
<feGaussianBlur stdDeviation="4" result="genid4"/>
<feSpecularLighting lighting-color="white" surfaceScale="10" in="genid4" specularExponent="30" result="genid6">
<feDistantLight elevation="20" azimuth="180"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid5" in2="genid6" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid8">
<text font-size="300" text-anchor="middle" dominant-baseline="central" x="150" y="150">R</text>
</clipPath>
<text font-size="300" stroke="none" fill="#400088" filter="url(#genid7)" clip-path="url(#genid8)" text-anchor="middle" dominant-baseline="central" x="150" y="150">R</text>
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
test_that("test-filter-Lighting-2", {
# 
WH=c(800, 400) # window rect
R<-150
svgR( wh=WH, 
    circle( cxy=WH/2, r= R,  stroke="black" , stroke.width=5, 
        fill = radialGradient( fxy=c(.5,.5), r=1, spreadMethod='pad',
          stop( offset=1/6,    stop.opacity=1),
          stop( offset=1/3,    stop.opacity=0)
        )
    )
 )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="400">
<radialGradient r="1" spreadMethod="pad" fx="0.5" fy="0.5" id="genid9">
<stop offset="0.166666666666667" stop-opacity="1"/>
<stop offset="0.333333333333333" stop-opacity="0"/>
</radialGradient>
<circle r="150" stroke="black" stroke-width="5" fill="url(#genid9)" cx="400" cy="200"/>
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
# test-filter-Lighting-3 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-filter-Lighting-4", {
# 
WH=c(800, 400) # window rect
R<-150
svgR( wh=WH, 
    circle( cxy=WH/2, r= R/2,  
      filter=filter( xy=c(-20,-20), wh=c(R,R)+40, feGaussianBlur( stdDeviation=20 ))
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="400">
<filter width="190" height="190" x="-20" y="-20" id="genid10">
<feGaussianBlur stdDeviation="20"/>
</filter>
<circle r="75" filter="url(#genid10)" cx="400" cy="200"/>
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
# test-filter-Lighting-5 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-filter-Lighting-6", {
# 
WH=c(800, 300) # window rect
R<-70
elevation<-40 #in degrees
azimuth<-270 # in degrees
svgR( wh=WH,
  g(
    rect(cxy=WH/2, wh=WH, opacity=0),
    circle( cxy=c(.35,.5)*WH, r= R,  stroke="black" , stroke.width=1, 
      fill = radialGradient( fxy=c(.5,.5), r=1, spreadMethod='pad',
        stop( offset=1/6,    stop.opacity=1),
        stop( offset=1/3,    stop.opacity=.0)
      )
    ),
    circle( cxy=c(.65,.5)*WH, r= R/2,  
      filter=filter( xy=c(-20,-20), wh=c(R,R)+40, feGaussianBlur( stdDeviation=20 ))
    ),
    filter=filter(
            feComposite( 
              operator="arithmetic", k1234=c(0,.9,1,0),
              in1=feSpecularLighting( lighting.color="white",  surfaceScale=15,
                  in1="SourceGraphic",
                  specularExponent=10,
                  feDistantLight(elevation=elevation, azimuth=azimuth)
              ),
              in2=  feFlood( flood.color='#357A55')
            )
    )
  ),
  text('Combining to create a single surface', cxy=c(.5,.1)*WH, font.size=25),
  text('Portion made using a Radial Gradient',cxy=c(.25,.9)*WH),
  text('Portion made using a Gaussian Blur',  cxy=c(.75,.9)*WH)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="300">
<filter id="genid15">
<feSpecularLighting lighting-color="white" surfaceScale="15" in="SourceGraphic" specularExponent="10" result="genid13">
<feDistantLight elevation="40" azimuth="270"/>
</feSpecularLighting>
<feFlood flood-color="#357A55" result="genid14"/>
<feComposite operator="arithmetic" in="genid13" in2="genid14" k1="0" k2="0.9" k3="1" k4="0"/>
</filter>
<g filter="url(#genid15)">
<rect opacity="0" width="800" height="300" x="0" y="0"/>
<radialGradient r="1" spreadMethod="pad" fx="0.5" fy="0.5" id="genid11">
<stop offset="0.166666666666667" stop-opacity="1"/>
<stop offset="0.333333333333333" stop-opacity="0"/>
</radialGradient>
<circle r="70" stroke="black" stroke-width="1" fill="url(#genid11)" cx="280" cy="150"/>
<filter width="110" height="110" x="-20" y="-20" id="genid12">
<feGaussianBlur stdDeviation="20"/>
</filter>
<circle r="35" filter="url(#genid12)" cx="520" cy="150"/>
</g>
<text font-size="25" text-anchor="middle" dominant-baseline="central" x="400" y="30">Combining to create a single surface</text>
<text text-anchor="middle" dominant-baseline="central" x="200" y="270">Portion made using a Radial Gradient</text>
<text text-anchor="middle" dominant-baseline="central" x="600" y="270">Portion made using a Gaussian Blur</text>
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
# test-filter-Lighting-7 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-filter-Lighting-8 Ommited!!!

# -----------------------------------------------------






# -----------------------------------------------------
# test-filter-Lighting-12 Ommited!!!

# -----------------------------------------------------



# # -----------------------------------------------------
# test_that("test-filter-Lighting-13", {
# # 
# path<-"./"
# source(paste0(path,"Util.R"))
# WH=c(800, 300) # window rect
# 
# R<-100
# S<-50
# Y<-WH[2]-S
# X<-WH[1]
# mid<-newId()
# murl<-paste0('url(#',mid,')')
# eta<-.3*(pi/2-pi/3)
# theta<-pi/2-pi/8
# beta<-(eta-theta)/2
# dX<-Y*tan(theta)
# lightPath<-c(  c(X/2-dX, 0), c(X/2, Y), c(X/2+dX,0) )
# normVecs=c(
# c(X/2,Y), c(X/2,Y) - R*c(-sin(theta), cos(theta)),
# c(X/2,Y), c(X/2,Y) - R*c(0,1),
# c(X/2,Y), c(X/2,Y) - R*c(sin(theta), cos(theta)),
# c(X/2,Y), c(X/2,Y) - R*c(-sin(eta), cos(eta)),
# c(X/2,Y), c(X/2,Y) - R*c(-sin(beta), cos(beta))
# )
# tcxy<-matrix(
# c(
# c(X/2,Y) - 1.2*R*c(-sin(theta), cos(theta)),
# c(X/2,Y) - 1.2*R*c(0,1),
# c(X/2,Y) - 1.2*R*c(sin(theta), cos(theta)),
# c(X/2,Y) - 1.2*R*c(-sin(eta), cos(eta)),
# c(X/2,Y) - 1.2*R*c(-sin(beta), cos(beta))
# ),2,5
# )
# txt<-c("r","n","i","v", "h")
# polyPts<- c( c(X/2,Y), c(X/2,Y) + R*c(sin(beta), -cos(beta) ), c(X/2,Y) + R*c(0, -cos(beta) ))
# 
# 
# svgR( wh=WH, 
#   
#   rect(xy=c(0,Y),wh=c(X,S/2), fill='lightblue'),
#   polyline(points=lightPath, stroke.width=4, fill='none', stroke='orange', stroke.dasharray=2),
#   text(xy=c(20,20), "source", stroke="orange"),
#   text(xy=c(X-80,20), "reflection", stroke="orange"),
#   #viewer
#   line(xy1=c(X/2,Y ), xy2=c(X/2,Y) + .8*Y*c(sin(eta), -cos(eta) ), stroke.width=4,  stroke='grey', stroke.dasharray=6, opacity=.5),
#   text( cxy=c(X/2,Y) + .9*Y*c(sin(eta), -cos(eta) ), "eye of viewer", stroke='grey', opacity=.5  ),
# 
# # half circle
#   pie( cxy=c(X/2,Y), theta1=pi/2-theta, theta2=pi/2+theta, r=R/3, stroke="red", stroke.width=2, opacity=.5, fill="pink"),
# # unit normal
#   matrix2Arrows(normVecs, stroke='black'),
#   lapply(1:5, function(i){
#     text(txt[i],cxy=tcxy[,i], stroke='black')
#   }),
# 
#   polygon(
#     points=polyPts, 
#     fill='lightgreen', opacity=.5
#   ),
#  
#   brace(
#     c(.55*X,Y) + .5*R*c(0, -cos(beta) ),
#     c(X/2,Y) + R*c(0, -cos(beta) ),
#     c(X/2,Y)   ,
#     stroke= 'green'
#   ) ,
#   text("h.n", xy= c(.55*X,Y) + .5*R*c(0, -cos(beta) ), stroke='lightgreen')
# 
# # unit to light
# # unit to reflection
# # label angle from normal
# #sun?
# #eye?
# )->res
# expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="300">
# <rect fill="lightblue" width="800" height="25" x="0" y="250"/>
# <polyline points="-203.553390593274 0 400 250 1003.55339059327 0" stroke-width="4" fill="none" stroke="orange" stroke-dasharray="2"/>
# <text stroke="orange" x="20" y="20">source</text>
# <text stroke="orange" x="720" y="20">reflection</text>
# <line stroke-width="4" stroke="grey" stroke-dasharray="6" opacity="0.5" x1="400" y1="250" x2="431.286893008046" y2="52.4623318809724"/>
# <text stroke="grey" opacity="0.5" text-anchor="middle" dominant-baseline="central" x="435.197754634052" y="27.770123366094">eye of viewer</text>
# <path d="M 430.795984417043 237.24388558783 A 33.3333333333333 33.3333333333333 0 0 0 369.204015582957 237.24388558783 L 400 250 Z" stroke="red" fill="pink" stroke-width="2" opacity="0.5"/>
# <defs>
# <marker id="docId2" viewBox="0,0,10,10" markerWidth="6" markerHeight="6" orient="auto" refX="1" refY="5">
# <path d="M 0 0 L 10 5 L 0 10 z"/>
# </marker>
# </defs>
# <line stroke="black" marker-end="url(#docId2)" x1="400" y1="250" x2="492.387953251129" y2="211.731656763491"/>
# <line stroke="black" marker-end="url(#docId2)" x1="400" y1="250" x2="400" y2="150"/>
# <line stroke="black" marker-end="url(#docId2)" x1="400" y1="250" x2="307.612046748871" y2="211.731656763491"/>
# <line stroke="black" marker-end="url(#docId2)" x1="400" y1="250" x2="415.643446504023" y2="151.231165940486"/>
# <line stroke="black" marker-end="url(#docId2)" x1="400" y1="250" x2="351.137875850305" y2="162.75039929272"/>
# <text stroke="black" text-anchor="middle" dominant-baseline="central" x="510.865543901354" y="204.077988116189">r</text>
# <text stroke="black" text-anchor="middle" dominant-baseline="central" x="400" y="130">n</text>
# <text stroke="black" text-anchor="middle" dominant-baseline="central" x="289.134456098646" y="204.077988116189">i</text>
# <text stroke="black" text-anchor="middle" dominant-baseline="central" x="418.772135804828" y="131.477399128583">v</text>
# <text stroke="black" text-anchor="middle" dominant-baseline="central" x="341.365451020365" y="145.300479151264">h</text>
# <polygon points="400 250 351.137875850305 162.75039929272 400 162.75039929272" fill="lightgreen" opacity="0.5"/>
# <path d="M 440 206.37519964636 C 400 206.37519964636 440 162.75039929272 400 162.75039929272" stroke="green" fill="none" stroke-width="1"/>
# <path d="M 440 206.37519964636 C 400 206.37519964636 440 250 400 250" stroke="green" fill="none" stroke-width="1"/>
# <text stroke="lightgreen" x="440" y="206.37519964636">h.n</text>
# </svg>'
#     res <- as.character(res)
#     rlines <- str_trim(strsplit(res, "\n")[[1]])
#     elines <- str_trim(strsplit(expected_res, "\n")[[1]])
#     expect_equal(length(rlines), length(elines))
#     for (i in length(rlines)) {
#         expect_identical(rlines[i], elines[i])
#     }
# })
# # -----------------------------------------------------
# 




# -----------------------------------------------------
test_that("test-filter-Lighting-17", {
# 
WH<-c(800, 200) # window rect
cxy<-rbind(seq(0,WH[1],length.out=2*4+1)[2*(1:4)],WH[2]/2)
txt<-c("No Light","feDistantLight","fePointLight","feSpotLight")
lighting %<c-% function(lightsource){
  filter( feComposite( operator="arithmetic", k1234=c(1,0,0,0),
    in1="SourceGraphic",
    in2=feDiffuseLighting(in1="SourceGraphic", light.color="white", lightsource)
  ))
}
svgR( wh=WH,
    circle(cxy=cxy[,1], r=50, fill="green"), 
    circle(cxy=cxy[,2], r=50, fill="green", 
      filter=lighting(feDistantLight(azimuth=240, elevation=20) )
    ),     
    circle(cxy=cxy[,3], r=50, fill="green", 
      filter=lighting(fePointLight( xyz=20*c(-1,-1,1)+ c(cxy[,3],0) ) )
    ),     
    circle(cxy=cxy[,4], r=50, fill="green", 
      filter=lighting( feSpotLight(  xyz=20*c(-1,-1,1) + c(cxy[,4],0), 
        limitingConeAngle=20,pointsAtXYZ=20*c(1,1,0) + c(cxy[,4],0)
      ))
    ),
    lapply(1:4, function(i)text(txt[i], cxy=c(cxy[1,i], WH[2]-20)))
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<circle r="50" fill="green" cx="100" cy="100"/>
<filter id="genid136">
<feDiffuseLighting in="SourceGraphic" light-color="white" result="genid135">
<feDistantLight azimuth="240" elevation="20"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="SourceGraphic" in2="genid135" k1="1" k2="0" k3="0" k4="0"/>
</filter>
<circle r="50" fill="green" filter="url(#genid136)" cx="300" cy="100"/>
<filter id="genid138">
<feDiffuseLighting in="SourceGraphic" light-color="white" result="genid137">
<fePointLight x="480" y="80" z="20"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="SourceGraphic" in2="genid137" k1="1" k2="0" k3="0" k4="0"/>
</filter>
<circle r="50" fill="green" filter="url(#genid138)" cx="500" cy="100"/>
<filter id="genid140">
<feDiffuseLighting in="SourceGraphic" light-color="white" result="genid139">
<feSpotLight limitingConeAngle="20" pointsAtX="720" pointsAtY="120" pointsAtZ="0" x="680" y="80" z="20"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="SourceGraphic" in2="genid139" k1="1" k2="0" k3="0" k4="0"/>
</filter>
<circle r="50" fill="green" filter="url(#genid140)" cx="700" cy="100"/>
<text text-anchor="middle" dominant-baseline="central" x="100" y="180">No Light</text>
<text text-anchor="middle" dominant-baseline="central" x="300" y="180">feDistantLight</text>
<text text-anchor="middle" dominant-baseline="central" x="500" y="180">fePointLight</text>
<text text-anchor="middle" dominant-baseline="central" x="700" y="180">feSpotLight</text>
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
# test-filter-Lighting-20 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-filter-Lighting-21", {
# 
W<-800
GDIM=c(5,3) # = num cols , num rows
vMargin<-90 #spacing for Title, and spaceing at bottom
WH=c(W, 2*vMargin + 1.3*W*GDIM[2]/GDIM[1])  # compute WH of svg
R<-.5*(W/GDIM[1]) 
X<-seq(0, WH[1], length.out=GDIM[1]+1)
Y<-seq(vMargin,WH[2]-vMargin, length.out=GDIM[2]+1)
diffuseConstant<-.6
CXY<-expand.grid( 
  apply(rbind(X[1:(length(X)-1)], X[2:length(X)] ), 2, mean),
  apply(rbind(Y[1:(length(Y)-1)], Y[2:length(Y)] ), 2, mean)
)
phitheta<-expand.grid(
  seq( pi/6,  pi/2, length.out=GDIM[1]),  # phi
  seq( 0, -pi/2,  length.out=GDIM[2])    # theta
)
rho<-2*R
svgR(wh=WH,
    text("Varying fePointLight Position with feDiffuseLighting", font.size=22, cxy=c(WH[1]/2,40)),
    text("(Spherical Coord, angles in radians, origin at object center)", font.size=16, cxy=c(WH[1]/2,65)),
    text(paste0("(diffuseConstant=",diffuseConstant, ")"), font.size=12, cxy=c(WH[1]/2,85)),
    lapply(1:nrow(CXY), function(i){
      xyz=rho*c(
        sin(phitheta[i,1])*cos(phitheta[i,2]), 
        sin(phitheta[i,1])*sin(phitheta[i,2]), 
        cos(phitheta[i,1])
      )
      g( transform=list(translate=CXY[i,]),
        circle( cxy=c(0,0), r= R-10,  stroke="black" , stroke.width=5, 
            fill = "darkgreen",
            filter=filter(
                feComposite( 
                  operator="arithmetic", k1234=c(0,1,1,0),
                  in1=feDiffuseLighting( lighting.color="white",  surfaceScale=(5/7)*R, 
                      diffuseConstant=diffuseConstant,
                      in1=feGaussianBlur( stdDeviation=10),
                      fePointLight( xyz= xyz) 
                  ),
                  in2=  "SourceGraphic"
                )
            ),
            clip.path=clipPath(circle(cxy=c(0,0),r=R-8))
        ),
        lapply(1:3, function(j){ 
          text(
            paste0( mathSymbol(c("\\phi", "\\theta", "\\rho")[j]), '= ',
            format(c(phitheta[i,], rho)[j],digits=3)), cxy=c(0, R-14+j*16),  font.size=12
          )
        })
      )
    })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="804">
<text font-size="22" text-anchor="middle" dominant-baseline="central" x="400" y="40">Varying fePointLight Position with feDiffuseLighting</text>
<text font-size="16" text-anchor="middle" dominant-baseline="central" x="400" y="65">(Spherical Coord, angles in radians, origin at object center)</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="400" y="85">(diffuseConstant=0.6)</text>
<g transform="translate(80,194)">
<filter id="genid343">
<feGaussianBlur stdDeviation="10" result="genid341"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid341" result="genid342">
<fePointLight x="80" y="0" z="138.56406460551"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid342" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid344">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid343)" clip-path="url(#genid344)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,194)">
<filter id="genid347">
<feGaussianBlur stdDeviation="10" result="genid345"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid345" result="genid346">
<fePointLight x="113.137084989848" y="0" z="113.137084989848"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid346" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid348">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid347)" clip-path="url(#genid348)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,194)">
<filter id="genid351">
<feGaussianBlur stdDeviation="10" result="genid349"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid349" result="genid350">
<fePointLight x="138.56406460551" y="0" z="80"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid350" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid352">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid351)" clip-path="url(#genid352)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.05</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,194)">
<filter id="genid355">
<feGaussianBlur stdDeviation="10" result="genid353"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid353" result="genid354">
<fePointLight x="154.548132206251" y="0" z="41.4110472164033"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid354" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid356">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid355)" clip-path="url(#genid356)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.31</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,194)">
<filter id="genid359">
<feGaussianBlur stdDeviation="10" result="genid357"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid357" result="genid358">
<fePointLight x="160" y="0" z="9.79717439317883e-15"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid358" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid360">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid359)" clip-path="url(#genid360)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(80,402)">
<filter id="genid363">
<feGaussianBlur stdDeviation="10" result="genid361"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid361" result="genid362">
<fePointLight x="56.5685424949238" y="-56.5685424949238" z="138.56406460551"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid362" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid364">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid363)" clip-path="url(#genid364)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,402)">
<filter id="genid367">
<feGaussianBlur stdDeviation="10" result="genid365"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid365" result="genid366">
<fePointLight x="80" y="-80" z="113.137084989848"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid366" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid368">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid367)" clip-path="url(#genid368)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,402)">
<filter id="genid371">
<feGaussianBlur stdDeviation="10" result="genid369"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid369" result="genid370">
<fePointLight x="97.9795897113271" y="-97.9795897113271" z="80"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid370" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid372">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid371)" clip-path="url(#genid372)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.05</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,402)">
<filter id="genid375">
<feGaussianBlur stdDeviation="10" result="genid373"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid373" result="genid374">
<fePointLight x="109.282032302755" y="-109.282032302755" z="41.4110472164033"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid374" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid376">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid375)" clip-path="url(#genid376)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.31</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,402)">
<filter id="genid379">
<feGaussianBlur stdDeviation="10" result="genid377"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid377" result="genid378">
<fePointLight x="113.137084989848" y="-113.137084989848" z="9.79717439317883e-15"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid378" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid380">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid379)" clip-path="url(#genid380)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(80,610)">
<filter id="genid383">
<feGaussianBlur stdDeviation="10" result="genid381"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid381" result="genid382">
<fePointLight x="4.89858719658941e-15" y="-80" z="138.56406460551"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid382" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid384">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid383)" clip-path="url(#genid384)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,610)">
<filter id="genid387">
<feGaussianBlur stdDeviation="10" result="genid385"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid385" result="genid386">
<fePointLight x="6.92764844988395e-15" y="-113.137084989848" z="113.137084989848"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid386" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid388">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid387)" clip-path="url(#genid388)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,610)">
<filter id="genid391">
<feGaussianBlur stdDeviation="10" result="genid389"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid389" result="genid390">
<fePointLight x="8.48460190979926e-15" y="-138.56406460551" z="80"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid390" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid392">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid391)" clip-path="url(#genid392)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.05</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,610)">
<filter id="genid395">
<feGaussianBlur stdDeviation="10" result="genid393"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid393" result="genid394">
<fePointLight x="9.46334377102936e-15" y="-154.548132206251" z="41.4110472164033"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid394" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid396">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid395)" clip-path="url(#genid396)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.31</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,610)">
<filter id="genid399">
<feGaussianBlur stdDeviation="10" result="genid397"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid397" result="genid398">
<fePointLight x="9.79717439317883e-15" y="-160" z="9.79717439317883e-15"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid398" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid400">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid399)" clip-path="url(#genid400)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
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
test_that("test-filter-Lighting-22", {
# 
W<-800
GDIM=c(5,3) # = num cols , num rows
vMargin<-90 #spacing for Title, and spaceing at bottom
WH=c(W, 2*vMargin + 1.3*W*GDIM[2]/GDIM[1])  # compute WH of svg
R<-.5*(W/GDIM[1]) 
X<-seq(0, WH[1], length.out=GDIM[1]+1)
Y<-seq(vMargin,WH[2]-vMargin, length.out=GDIM[2]+1)
specularConstant<-.6
specularExponent<-10
CXY<-expand.grid( 
  apply(rbind(X[1:(length(X)-1)], X[2:length(X)] ), 2, mean),
  apply(rbind(Y[1:(length(Y)-1)], Y[2:length(Y)] ), 2, mean)
)
phitheta<-expand.grid(
  seq( pi/6,  pi/2, length.out=GDIM[1]),  # phi
  seq( 0, -pi/2,  length.out=GDIM[2])    # theta
)
rho<-2*R
svgR(wh=WH,
    text("Varying fePointLight Position with feSpecularLighting", font.size=22, cxy=c(WH[1]/2,40)),
    text("(Spherical Coord, angles in radians, origin at object center)", font.size=16, cxy=c(WH[1]/2,65)),
    text(paste0("(specularConstant=",specularConstant,", specularExponent=",specularExponent), font.size=12, cxy=c(WH[1]/2,85)),
    lapply(1:nrow(CXY), function(i){
      xyz=rho*c(
        sin(phitheta[i,1])*cos(phitheta[i,2]), 
        sin(phitheta[i,1])*sin(phitheta[i,2]), 
        cos(phitheta[i,1])
      )
      g( transform=list(translate=CXY[i,]),
        circle( cxy=c(0,0), r= R-10,  stroke="black" , stroke.width=5, 
            fill = "darkgreen",
            filter=filter(
                feComposite( 
                  operator="arithmetic", k1234=c(0,1,1,0),
                  in1=feSpecularLighting( lighting.color="white",  surfaceScale=(5/7)*R, 
                      specularExponent=specularExponent,
                      specularConstant=specularConstant,
                      in1=feGaussianBlur( stdDeviation=10),
                      fePointLight( xyz= xyz) 
                  ),
                  in2=  "SourceGraphic"
                )
            ),
            clip.path=clipPath(circle(cxy=c(0,0),r=R-8))
        ),
        lapply(1:3, function(j){ 
          text(
            paste0( mathSymbol(c("\\phi", "\\theta", "\\rho")[j]), '= ',
            format(c(phitheta[i,], rho)[j],digits=3)), cxy=c(0, R-14+j*16),  font.size=12
          )
        })
      )
    })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="804">
<text font-size="22" text-anchor="middle" dominant-baseline="central" x="400" y="40">Varying fePointLight Position with feSpecularLighting</text>
<text font-size="16" text-anchor="middle" dominant-baseline="central" x="400" y="65">(Spherical Coord, angles in radians, origin at object center)</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="400" y="85">(specularConstant=0.6, specularExponent=10</text>
<g transform="translate(80,194)">
<filter id="genid403">
<feGaussianBlur stdDeviation="10" result="genid401"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid401" result="genid402">
<fePointLight x="80" y="0" z="138.56406460551"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid402" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid404">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid403)" clip-path="url(#genid404)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,194)">
<filter id="genid407">
<feGaussianBlur stdDeviation="10" result="genid405"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid405" result="genid406">
<fePointLight x="113.137084989848" y="0" z="113.137084989848"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid406" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid408">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid407)" clip-path="url(#genid408)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,194)">
<filter id="genid411">
<feGaussianBlur stdDeviation="10" result="genid409"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid409" result="genid410">
<fePointLight x="138.56406460551" y="0" z="80"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid410" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid412">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid411)" clip-path="url(#genid412)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.05</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,194)">
<filter id="genid415">
<feGaussianBlur stdDeviation="10" result="genid413"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid413" result="genid414">
<fePointLight x="154.548132206251" y="0" z="41.4110472164033"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid414" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid416">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid415)" clip-path="url(#genid416)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.31</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,194)">
<filter id="genid419">
<feGaussianBlur stdDeviation="10" result="genid417"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid417" result="genid418">
<fePointLight x="160" y="0" z="9.79717439317883e-15"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid418" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid420">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid419)" clip-path="url(#genid420)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(80,402)">
<filter id="genid423">
<feGaussianBlur stdDeviation="10" result="genid421"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid421" result="genid422">
<fePointLight x="56.5685424949238" y="-56.5685424949238" z="138.56406460551"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid422" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid424">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid423)" clip-path="url(#genid424)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,402)">
<filter id="genid427">
<feGaussianBlur stdDeviation="10" result="genid425"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid425" result="genid426">
<fePointLight x="80" y="-80" z="113.137084989848"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid426" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid428">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid427)" clip-path="url(#genid428)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,402)">
<filter id="genid431">
<feGaussianBlur stdDeviation="10" result="genid429"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid429" result="genid430">
<fePointLight x="97.9795897113271" y="-97.9795897113271" z="80"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid430" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid432">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid431)" clip-path="url(#genid432)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.05</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,402)">
<filter id="genid435">
<feGaussianBlur stdDeviation="10" result="genid433"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid433" result="genid434">
<fePointLight x="109.282032302755" y="-109.282032302755" z="41.4110472164033"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid434" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid436">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid435)" clip-path="url(#genid436)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.31</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,402)">
<filter id="genid439">
<feGaussianBlur stdDeviation="10" result="genid437"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid437" result="genid438">
<fePointLight x="113.137084989848" y="-113.137084989848" z="9.79717439317883e-15"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid438" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid440">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid439)" clip-path="url(#genid440)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(80,610)">
<filter id="genid443">
<feGaussianBlur stdDeviation="10" result="genid441"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid441" result="genid442">
<fePointLight x="4.89858719658941e-15" y="-80" z="138.56406460551"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid442" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid444">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid443)" clip-path="url(#genid444)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,610)">
<filter id="genid447">
<feGaussianBlur stdDeviation="10" result="genid445"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid445" result="genid446">
<fePointLight x="6.92764844988395e-15" y="-113.137084989848" z="113.137084989848"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid446" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid448">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid447)" clip-path="url(#genid448)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,610)">
<filter id="genid451">
<feGaussianBlur stdDeviation="10" result="genid449"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid449" result="genid450">
<fePointLight x="8.48460190979926e-15" y="-138.56406460551" z="80"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid450" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid452">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid451)" clip-path="url(#genid452)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.05</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,610)">
<filter id="genid455">
<feGaussianBlur stdDeviation="10" result="genid453"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid453" result="genid454">
<fePointLight x="9.46334377102936e-15" y="-154.548132206251" z="41.4110472164033"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid454" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid456">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid455)" clip-path="url(#genid456)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.31</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,610)">
<filter id="genid459">
<feGaussianBlur stdDeviation="10" result="genid457"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid457" result="genid458">
<fePointLight x="9.79717439317883e-15" y="-160" z="9.79717439317883e-15"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid458" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid460">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid459)" clip-path="url(#genid460)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
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
test_that("test-filter-Lighting-23", {
# 
R<-100
W<-400
H<-200
WH=c(W,H)  # compute WH of svg
PtAt<- WH*c(.5,.75)
L.wh<-(H/5)*c(4,-3)
L0<-PtAt + L.wh
theta<-pi/6
alpha<-atan(L.wh[1]/L.wh[2])

A<-L0- L.wh[2] * c( tan(alpha+theta/2), 1 )
B<-L0- L.wh[2] * c( tan(alpha-theta/2), 1 )
rxy<-L.wh[2] * tan(alpha+theta/2)*c(1,.1)

svgR(wh=WH,
  g(  
    rect(xy=c(0,0), wh=c(W,H), fill='grey', stroke='black'),
    #azis
    line(xy1=c(0,PtAt[2]), xy2=c(W,PtAt[2]), stroke='black', stroke.width=2, stroke.dasharray=6),
    line(xy1=PtAt, xy2=c(1,0)*PtAt, stroke='black', stroke.width=2, stroke.dasharray=6),
    line(xy1=PtAt ,xy2=PtAt+.25*H*c(-1,1), stroke='black', stroke.width=2, stroke.dasharray=6),
    text("X", xy=c(W-20,PtAt[2]-5) ),
    text("Y", xy=PtAt+.25*H*c(-1,1)+c(30,-10) ),
    text("Z", xy=PtAt*c(1,0)+c(10,20) ),
    # pole 
    line(xy1=L0-c(0,L.wh[2]) , xy2=L0, stroke='black', stroke.width=1),
    circle(cxy=L0 , r=3,  fill='white'),
    # center of light beam
    line(xy1=PtAt, xy2=L0, stroke='white', stroke.width=3),
    # light beam
    polygon(points=c(L0,A,B) ,fill="white", opacity=.3),

    g( transform=list(translate=(A+B)/2),
      ellipse(cxy=c(0,0), rxy=rxy, fill="white", opacity=.5)
    )
  )
  
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="400" height="200">
<g>
<rect fill="grey" stroke="black" width="400" height="200" x="0" y="0"/>
<line stroke="black" stroke-width="2" stroke-dasharray="6" x1="0" y1="150" x2="400" y2="150"/>
<line stroke="black" stroke-width="2" stroke-dasharray="6" x1="200" y1="150" x2="200" y2="0"/>
<line stroke="black" stroke-width="2" stroke-dasharray="6" x1="200" y1="150" x2="150" y2="200"/>
<text x="380" y="145">X</text>
<text x="180" y="190">Y</text>
<text x="210" y="20">Z</text>
<line stroke="black" stroke-width="1" x1="360" y1="150" x2="360" y2="30"/>
<circle r="3" fill="white" cx="360" cy="30"/>
<line stroke="white" stroke-width="3" x1="200" y1="150" x2="360" y2="30"/>
<polygon points="360 30 265.8061311958 150 61.0368511866682 150" fill="white" opacity="0.3"/>
<g transform="translate(163.421491191234,150)">
<ellipse fill="white" opacity="0.5" cx="0" cy="0" rx="94.1938688042004" ry="9.41938688042004"/>
</g>
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
test_that("test-filter-Lighting-26", {
# 
W<-800
GDIM=c(5,3) # = num cols , num rows
vMargin<-90 #spacing for Title, and spaceing at bottom
WH=c(W, 2*vMargin + 1.3*W*GDIM[2]/GDIM[1])  # compute WH of svg
R<-.5*(W/GDIM[1]) 
X<-seq(0, WH[1], length.out=GDIM[1]+1)
Y<-seq(vMargin,WH[2]-vMargin, length.out=GDIM[2]+1)
diffuseConstant<-.6
CXY<-expand.grid( 
  apply(rbind(X[1:(length(X)-1)], X[2:length(X)] ), 2, mean),
  apply(rbind(Y[1:(length(Y)-1)], Y[2:length(Y)] ), 2, mean)
)
phitheta<-expand.grid(
  seq( pi/6,  pi/4, length.out=GDIM[1]),  # phi
  seq( 0, -pi/2,  length.out=GDIM[2])    # theta
)
rho<-2*R
surfaceScale<-(5/7)*R
svgR(wh=WH,
    text("Varying feSpotLight Position with feDiffuseLighting", font.size=22, cxy=c(WH[1]/2,40)),
    text("(Spherical Coord, angles in radians, origin at object center)", font.size=16, cxy=c(WH[1]/2,65)),
    text(paste0("(diffuseConstant=",diffuseConstant, ") pointing at center"), font.size=12, cxy=c(WH[1]/2,85)),
    lapply(1:nrow(CXY), function(i){
      xyz=rho*c(
        sin(phitheta[i,1])*cos(phitheta[i,2]), 
        sin(phitheta[i,1])*sin(phitheta[i,2]), 
        cos(phitheta[i,1])
      )
      g( transform=list(translate=CXY[i,]),
        circle( cxy=c(0,0), r= R-10,  stroke="black" , stroke.width=5, 
            fill = "darkgreen",
            filter=filter(
                feComposite( 
                  operator="arithmetic", k1234=c(0,1,1,0),
                  in1=feDiffuseLighting( lighting.color="white",  surfaceScale=surfaceScale, 
                      diffuseConstant=diffuseConstant,
                      in1=feGaussianBlur( stdDeviation=10),
                      feSpotLight( xyz= xyz, pointsAtXYZ= -c(1,1,0)*xyz, #+
                      #c(0,0,surfaceScale), 
                      limitingConeAngle=15 ) 
                  ),
                  in2=  "SourceGraphic"
                )
            ),
            clip.path=clipPath(circle(cxy=c(0,0),r=R-8))
        ),
        lapply(1:3, function(j){ 
          text(
            paste0( mathSymbol(c("\\phi", "\\theta", "\\rho")[j]), '= ',
            format(c(phitheta[i,], rho)[j],digits=3)), cxy=c(0, R-14+j*16),  font.size=12
          )
        })
      )
    })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="804">
<text font-size="22" text-anchor="middle" dominant-baseline="central" x="400" y="40">Varying feSpotLight Position with feDiffuseLighting</text>
<text font-size="16" text-anchor="middle" dominant-baseline="central" x="400" y="65">(Spherical Coord, angles in radians, origin at object center)</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="400" y="85">(diffuseConstant=0.6) pointing at center</text>
<g transform="translate(80,194)">
<filter id="genid479">
<feGaussianBlur stdDeviation="10" result="genid477"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid477" result="genid478">
<feSpotLight limitingConeAngle="15" pointsAtX="-80" pointsAtY="0" pointsAtZ="0" x="80" y="0" z="138.56406460551"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid478" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid480">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid479)" clip-path="url(#genid480)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,194)">
<filter id="genid483">
<feGaussianBlur stdDeviation="10" result="genid481"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid481" result="genid482">
<feSpotLight limitingConeAngle="15" pointsAtX="-88.8912372831363" pointsAtY="0" pointsAtZ="0" x="88.8912372831363" y="0" z="133.035137968407"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid482" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid484">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid483)" clip-path="url(#genid484)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.589</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,194)">
<filter id="genid487">
<feGaussianBlur stdDeviation="10" result="genid485"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid485" result="genid486">
<feSpotLight limitingConeAngle="15" pointsAtX="-97.4018286413953" pointsAtY="0" pointsAtZ="0" x="97.4018286413953" y="0" z="126.936534446598"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid486" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid488">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid487)" clip-path="url(#genid488)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.654</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,194)">
<filter id="genid491">
<feGaussianBlur stdDeviation="10" result="genid489"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid489" result="genid490">
<feSpotLight limitingConeAngle="15" pointsAtX="-105.495330416011" pointsAtY="0" pointsAtZ="0" x="105.495330416011" y="0" z="120.294369196636"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid490" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid492">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid491)" clip-path="url(#genid492)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.72</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,194)">
<filter id="genid495">
<feGaussianBlur stdDeviation="10" result="genid493"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid493" result="genid494">
<feSpotLight limitingConeAngle="15" pointsAtX="-113.137084989848" pointsAtY="0" pointsAtZ="0" x="113.137084989848" y="0" z="113.137084989848"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid494" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid496">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid495)" clip-path="url(#genid496)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(80,402)">
<filter id="genid499">
<feGaussianBlur stdDeviation="10" result="genid497"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid497" result="genid498">
<feSpotLight limitingConeAngle="15" pointsAtX="-56.5685424949238" pointsAtY="56.5685424949238" pointsAtZ="0" x="56.5685424949238" y="-56.5685424949238" z="138.56406460551"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid498" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid500">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid499)" clip-path="url(#genid500)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,402)">
<filter id="genid503">
<feGaussianBlur stdDeviation="10" result="genid501"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid501" result="genid502">
<feSpotLight limitingConeAngle="15" pointsAtX="-62.8555966709682" pointsAtY="62.8555966709682" pointsAtZ="0" x="62.8555966709682" y="-62.8555966709682" z="133.035137968407"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid502" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid504">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid503)" clip-path="url(#genid504)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.589</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,402)">
<filter id="genid507">
<feGaussianBlur stdDeviation="10" result="genid505"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid505" result="genid506">
<feSpotLight limitingConeAngle="15" pointsAtX="-68.8734935323007" pointsAtY="68.8734935323007" pointsAtZ="0" x="68.8734935323007" y="-68.8734935323007" z="126.936534446598"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid506" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid508">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid507)" clip-path="url(#genid508)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.654</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,402)">
<filter id="genid511">
<feGaussianBlur stdDeviation="10" result="genid509"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid509" result="genid510">
<feSpotLight limitingConeAngle="15" pointsAtX="-74.5964635206768" pointsAtY="74.5964635206768" pointsAtZ="0" x="74.5964635206768" y="-74.5964635206768" z="120.294369196636"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid510" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid512">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid511)" clip-path="url(#genid512)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.72</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,402)">
<filter id="genid515">
<feGaussianBlur stdDeviation="10" result="genid513"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid513" result="genid514">
<feSpotLight limitingConeAngle="15" pointsAtX="-80" pointsAtY="80" pointsAtZ="0" x="80" y="-80" z="113.137084989848"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid514" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid516">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid515)" clip-path="url(#genid516)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(80,610)">
<filter id="genid519">
<feGaussianBlur stdDeviation="10" result="genid517"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid517" result="genid518">
<feSpotLight limitingConeAngle="15" pointsAtX="-4.89858719658941e-15" pointsAtY="80" pointsAtZ="0" x="4.89858719658941e-15" y="-80" z="138.56406460551"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid518" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid520">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid519)" clip-path="url(#genid520)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,610)">
<filter id="genid523">
<feGaussianBlur stdDeviation="10" result="genid521"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid521" result="genid522">
<feSpotLight limitingConeAngle="15" pointsAtX="-5.44301846055204e-15" pointsAtY="88.8912372831363" pointsAtZ="0" x="5.44301846055204e-15" y="-88.8912372831363" z="133.035137968407"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid522" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid524">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid523)" clip-path="url(#genid524)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.589</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,610)">
<filter id="genid527">
<feGaussianBlur stdDeviation="10" result="genid525"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid525" result="genid526">
<feSpotLight limitingConeAngle="15" pointsAtX="-5.96414188383919e-15" pointsAtY="97.4018286413953" pointsAtZ="0" x="5.96414188383919e-15" y="-97.4018286413953" z="126.936534446598"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid526" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid528">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid527)" clip-path="url(#genid528)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.654</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,610)">
<filter id="genid531">
<feGaussianBlur stdDeviation="10" result="genid529"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid529" result="genid530">
<feSpotLight limitingConeAngle="15" pointsAtX="-6.45972593594801e-15" pointsAtY="105.495330416011" pointsAtZ="0" x="6.45972593594801e-15" y="-105.495330416011" z="120.294369196636"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid530" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid532">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid531)" clip-path="url(#genid532)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.72</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,610)">
<filter id="genid535">
<feGaussianBlur stdDeviation="10" result="genid533"/>
<feDiffuseLighting lighting-color="white" surfaceScale="57.1428571428571" diffuseConstant="0.6" in="genid533" result="genid534">
<feSpotLight limitingConeAngle="15" pointsAtX="-6.92764844988395e-15" pointsAtY="113.137084989848" pointsAtZ="0" x="6.92764844988395e-15" y="-113.137084989848" z="113.137084989848"/>
</feDiffuseLighting>
<feComposite operator="arithmetic" in="genid534" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid536">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid535)" clip-path="url(#genid536)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
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
test_that("test-filter-Lighting-27", {
# 
W<-800
GDIM=c(5,3) # = num cols , num rows
vMargin<-90 #spacing for Title, and spaceing at bottom
WH=c(W, 2*vMargin + 1.3*W*GDIM[2]/GDIM[1])  # compute WH of svg
R<-.5*(W/GDIM[1]) 
X<-seq(0, WH[1], length.out=GDIM[1]+1)
Y<-seq(vMargin,WH[2]-vMargin, length.out=GDIM[2]+1)
specularConstant<-.6
specularExponent<-10
CXY<-expand.grid( 
  apply(rbind(X[1:(length(X)-1)], X[2:length(X)] ), 2, mean),
  apply(rbind(Y[1:(length(Y)-1)], Y[2:length(Y)] ), 2, mean)
)
phitheta<-expand.grid(
  seq( pi/6,  pi/4, length.out=GDIM[1]),  # phi
  seq( 0, -pi/2,  length.out=GDIM[2])    # theta
)
rho<-2*R
surfaceScale<-(5/7)*R
svgR(wh=WH,
    text("Varying feSpotLight Position with feSpecularLighting", font.size=22, cxy=c(WH[1]/2,40)),
    text("(Spherical Coord, angles in radians, origin at object center)", font.size=16, cxy=c(WH[1]/2,65)),
    text(paste0("(specularConstant=",specularConstant,", specularExponent=",specularExponent), font.size=12, cxy=c(WH[1]/2,85)),
    lapply(1:nrow(CXY), function(i){
      xyz=rho*c(
        sin(phitheta[i,1])*cos(phitheta[i,2]), 
        sin(phitheta[i,1])*sin(phitheta[i,2]), 
        cos(phitheta[i,1])
      )
      g( transform=list(translate=CXY[i,]),
        circle( cxy=c(0,0), r= R-10,  stroke="black" , stroke.width=5, 
            fill = "darkgreen",
            filter=filter(
                feComposite( 
                  operator="arithmetic", k1234=c(0,1,1,0),
                  in1=feSpecularLighting( lighting.color="white",  surfaceScale=surfaceScale, 
                      specularExponent=specularExponent,
                      specularConstant=specularConstant,
                      in1=feGaussianBlur( stdDeviation=10),
                      feSpotLight( xyz= xyz, pointsAtXYZ= -c(1,1,0)*xyz, limitingConeAngle=15) 
                  ),
                  in2=  "SourceGraphic"
                )
            ),
            clip.path=clipPath(circle(cxy=c(0,0),r=R-8))
        ),
        lapply(1:3, function(j){ 
          text(
            paste0( mathSymbol(c("\\phi", "\\theta", "\\rho")[j]), '= ',
            format(c(phitheta[i,], rho)[j],digits=3)), cxy=c(0, R-14+j*16),  font.size=12
          )
        })
      )
    })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="804">
<text font-size="22" text-anchor="middle" dominant-baseline="central" x="400" y="40">Varying feSpotLight Position with feSpecularLighting</text>
<text font-size="16" text-anchor="middle" dominant-baseline="central" x="400" y="65">(Spherical Coord, angles in radians, origin at object center)</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="400" y="85">(specularConstant=0.6, specularExponent=10</text>
<g transform="translate(80,194)">
<filter id="genid539">
<feGaussianBlur stdDeviation="10" result="genid537"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid537" result="genid538">
<feSpotLight limitingConeAngle="15" pointsAtX="-80" pointsAtY="0" pointsAtZ="0" x="80" y="0" z="138.56406460551"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid538" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid540">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid539)" clip-path="url(#genid540)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,194)">
<filter id="genid543">
<feGaussianBlur stdDeviation="10" result="genid541"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid541" result="genid542">
<feSpotLight limitingConeAngle="15" pointsAtX="-88.8912372831363" pointsAtY="0" pointsAtZ="0" x="88.8912372831363" y="0" z="133.035137968407"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid542" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid544">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid543)" clip-path="url(#genid544)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.589</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,194)">
<filter id="genid547">
<feGaussianBlur stdDeviation="10" result="genid545"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid545" result="genid546">
<feSpotLight limitingConeAngle="15" pointsAtX="-97.4018286413953" pointsAtY="0" pointsAtZ="0" x="97.4018286413953" y="0" z="126.936534446598"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid546" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid548">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid547)" clip-path="url(#genid548)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.654</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,194)">
<filter id="genid551">
<feGaussianBlur stdDeviation="10" result="genid549"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid549" result="genid550">
<feSpotLight limitingConeAngle="15" pointsAtX="-105.495330416011" pointsAtY="0" pointsAtZ="0" x="105.495330416011" y="0" z="120.294369196636"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid550" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid552">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid551)" clip-path="url(#genid552)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.72</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,194)">
<filter id="genid555">
<feGaussianBlur stdDeviation="10" result="genid553"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid553" result="genid554">
<feSpotLight limitingConeAngle="15" pointsAtX="-113.137084989848" pointsAtY="0" pointsAtZ="0" x="113.137084989848" y="0" z="113.137084989848"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid554" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid556">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid555)" clip-path="url(#genid556)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= 0</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(80,402)">
<filter id="genid559">
<feGaussianBlur stdDeviation="10" result="genid557"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid557" result="genid558">
<feSpotLight limitingConeAngle="15" pointsAtX="-56.5685424949238" pointsAtY="56.5685424949238" pointsAtZ="0" x="56.5685424949238" y="-56.5685424949238" z="138.56406460551"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid558" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid560">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid559)" clip-path="url(#genid560)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,402)">
<filter id="genid563">
<feGaussianBlur stdDeviation="10" result="genid561"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid561" result="genid562">
<feSpotLight limitingConeAngle="15" pointsAtX="-62.8555966709682" pointsAtY="62.8555966709682" pointsAtZ="0" x="62.8555966709682" y="-62.8555966709682" z="133.035137968407"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid562" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid564">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid563)" clip-path="url(#genid564)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.589</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,402)">
<filter id="genid567">
<feGaussianBlur stdDeviation="10" result="genid565"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid565" result="genid566">
<feSpotLight limitingConeAngle="15" pointsAtX="-68.8734935323007" pointsAtY="68.8734935323007" pointsAtZ="0" x="68.8734935323007" y="-68.8734935323007" z="126.936534446598"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid566" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid568">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid567)" clip-path="url(#genid568)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.654</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,402)">
<filter id="genid571">
<feGaussianBlur stdDeviation="10" result="genid569"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid569" result="genid570">
<feSpotLight limitingConeAngle="15" pointsAtX="-74.5964635206768" pointsAtY="74.5964635206768" pointsAtZ="0" x="74.5964635206768" y="-74.5964635206768" z="120.294369196636"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid570" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid572">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid571)" clip-path="url(#genid572)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.72</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,402)">
<filter id="genid575">
<feGaussianBlur stdDeviation="10" result="genid573"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid573" result="genid574">
<feSpotLight limitingConeAngle="15" pointsAtX="-80" pointsAtY="80" pointsAtZ="0" x="80" y="-80" z="113.137084989848"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid574" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid576">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid575)" clip-path="url(#genid576)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(80,610)">
<filter id="genid579">
<feGaussianBlur stdDeviation="10" result="genid577"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid577" result="genid578">
<feSpotLight limitingConeAngle="15" pointsAtX="-4.89858719658941e-15" pointsAtY="80" pointsAtZ="0" x="4.89858719658941e-15" y="-80" z="138.56406460551"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid578" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid580">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid579)" clip-path="url(#genid580)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.524</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(240,610)">
<filter id="genid583">
<feGaussianBlur stdDeviation="10" result="genid581"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid581" result="genid582">
<feSpotLight limitingConeAngle="15" pointsAtX="-5.44301846055204e-15" pointsAtY="88.8912372831363" pointsAtZ="0" x="5.44301846055204e-15" y="-88.8912372831363" z="133.035137968407"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid582" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid584">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid583)" clip-path="url(#genid584)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.589</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(400,610)">
<filter id="genid587">
<feGaussianBlur stdDeviation="10" result="genid585"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid585" result="genid586">
<feSpotLight limitingConeAngle="15" pointsAtX="-5.96414188383919e-15" pointsAtY="97.4018286413953" pointsAtZ="0" x="5.96414188383919e-15" y="-97.4018286413953" z="126.936534446598"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid586" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid588">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid587)" clip-path="url(#genid588)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.654</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(560,610)">
<filter id="genid591">
<feGaussianBlur stdDeviation="10" result="genid589"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid589" result="genid590">
<feSpotLight limitingConeAngle="15" pointsAtX="-6.45972593594801e-15" pointsAtY="105.495330416011" pointsAtZ="0" x="6.45972593594801e-15" y="-105.495330416011" z="120.294369196636"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid590" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid592">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid591)" clip-path="url(#genid592)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.72</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
</g>
<g transform="translate(720,610)">
<filter id="genid595">
<feGaussianBlur stdDeviation="10" result="genid593"/>
<feSpecularLighting lighting-color="white" surfaceScale="57.1428571428571" specularExponent="10" specularConstant="0.6" in="genid593" result="genid594">
<feSpotLight limitingConeAngle="15" pointsAtX="-6.92764844988395e-15" pointsAtY="113.137084989848" pointsAtZ="0" x="6.92764844988395e-15" y="-113.137084989848" z="113.137084989848"/>
</feSpecularLighting>
<feComposite operator="arithmetic" in="genid594" in2="SourceGraphic" k1="0" k2="1" k3="1" k4="0"/>
</filter>
<clipPath id="genid596">
<circle r="72" cx="0" cy="0"/>
</clipPath>
<circle r="70" stroke="black" stroke-width="5" fill="darkgreen" filter="url(#genid595)" clip-path="url(#genid596)" cx="0" cy="0"/>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="82">ϕ= 0.785</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="98">θ= -1.57</text>
<text font-size="12" text-anchor="middle" dominant-baseline="central" x="0" y="114">ρ= 160</text>
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



