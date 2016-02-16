context("animate-animateMotion")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-animate-animateMotion-1", {
WH<-c(800,150)
svgR( 
     text("Straight line", xy=c(30,30), font.size=25, fill="blue", font='black'),
     circle( cxy=c(20,WH[2]/2-15), r=10, stroke="black", fill="yellow",
      animateMotion(from=c(0,0), to=c(WH[1]-40,0), 
                    begin=0, dur=2, fill="remove") 
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<text font-size="25" fill="blue" font="black" x="30" y="30">Straight line</text>
<circle r="10" stroke="black" fill="yellow" cx="20" cy="60">
<animateMotion from="0,0" to="760,0" begin="0" dur="2" fill="remove"/>
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
test_that("test-animate-animateMotion-2", {
WH<-c(800,150)
y0<-WH[2]/2
r <-WH[2]/4
x = seq(100,800, by=20)
y = y0 + r*sin((x-100/40))
pts<-rbind('T',x,y)
d<-c('M', c(60,y0),"Q",c(70,y0), c(80,y0), pts)
dur=10
svgR( 
     text("Flat", xy=c(30,30), font.size=25, fill="blue", font='black'),
     path(d=d , stroke='lightblue', stroke.width=3, fill='none'), 
     text("data", cxy=c(0,0),  
        stroke="black", 
      animateMotion(path=d,  
                    begin=0, dur=dur, fill="remove") 
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<text font-size="25" fill="blue" font="black" x="30" y="30">Flat</text>
<path d="M 60 75 Q 70 75 80 75 T 100 70.8599166040536 T 120 39.2843409575058 T 140 49.9902438337761 T 160 90.3035933189685 T 180 112.499999995741 T 200 90.3025613135595 T 220 49.9894015479859 T 240 39.284685519471 T 260 70.8610401089582 T 280 107.33724390833 T 300 105.53145822599 T 320 67.5814369377324 T 340 38.4137767537244 T 360 52.5582002296572 T 380 93.270031404106 T 400 112.353143939909 T 420 87.2162645843147 T 440 47.6173329385414 T 460 40.4349849509059 T 480 74.1719418457681 T 500 108.889183691333 T 520 103.487194062096 T 540 64.3610420849434 T 560 37.8296701748594 T 580 55.3018682484023 T 600 96.0934213870129 T 620 111.91382553222 T 640 84.0343186782031 T 660 45.4596612543411 T 680 41.8559166378079 T 700 77.4893269949423 T 720 110.17578274744 T 740 101.219884904008 T 760 61.2239466368352 T 780 37.5365945758088 T 800 58.1997659070549" stroke="lightblue" stroke-width="3" fill="none"/>
<text stroke="black" text-anchor="middle" dominant-baseline="central" x="0" y="0">data<animateMotion path="M 60 75 Q 70 75 80 75 T 100 70.8599166040536 T 120 39.2843409575058 T 140 49.9902438337761 T 160 90.3035933189685 T 180 112.499999995741 T 200 90.3025613135595 T 220 49.9894015479859 T 240 39.284685519471 T 260 70.8610401089582 T 280 107.33724390833 T 300 105.53145822599 T 320 67.5814369377324 T 340 38.4137767537244 T 360 52.5582002296572 T 380 93.270031404106 T 400 112.353143939909 T 420 87.2162645843147 T 440 47.6173329385414 T 460 40.4349849509059 T 480 74.1719418457681 T 500 108.889183691333 T 520 103.487194062096 T 540 64.3610420849434 T 560 37.8296701748594 T 580 55.3018682484023 T 600 96.0934213870129 T 620 111.91382553222 T 640 84.0343186782031 T 660 45.4596612543411 T 680 41.8559166378079 T 700 77.4893269949423 T 720 110.17578274744 T 740 101.219884904008 T 760 61.2239466368352 T 780 37.5365945758088 T 800 58.1997659070549" begin="0" dur="10" fill="remove"/></text>
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
test_that("test-animate-animateMotion-3", {
WH<-c(800,150)
y0<-WH[2]/2
r <-WH[2]/4
x = seq(100,800, by=20)
y = y0 + r*sin((x-100/40))
pts<-rbind('t',diff(x),diff(y) )
d<-c('m', c(0,0),"q",c(10,0), c(20,0), pts)
dur=10
svgR( 
     text("Flat", xy=c(30,30), font.size=25, fill="blue", font='black'),
     path(d=c('M', c(60,y0),d) , 
     stroke='lightblue', stroke.width=3, fill='none'), 
     text("data", cxy=c(60,y0),  
        stroke="black", 
      animateMotion(path=d,  
                    begin=0, dur=dur, fill="remove") 
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<text font-size="25" fill="blue" font="black" x="30" y="30">Flat</text>
<path d="M 60 75 m 0 0 q 10 0 20 0 t 20 -31.5755756465478 t 20 10.7059028762703 t 20 40.3133494851924 t 20 22.1964066767721 t 20 -22.197438682181 t 20 -40.3131597655736 t 20 -10.7047160285149 t 20 31.5763545894872 t 20 36.4762037993723 t 20 -1.80578568234053 t 20 -37.9500212882575 t 20 -29.167660184008 t 20 14.1444234759328 t 20 40.7118311744488 t 20 19.0831125358028 t 20 -25.136879355594 t 20 -39.5989316457734 t 20 -7.1823479876355 t 20 33.7369568948623 t 20 34.7172418455653 t 20 -5.40198962923731 t 20 -39.1261519771528 t 20 -26.5313719100839 t 20 17.4721980735428 t 20 40.7915531386106 t 20 15.8204041452067 t 20 -27.8795068540165 t 20 -38.574657423862 t 20 -3.60374461653325 t 20 35.6334103571344 t 20 32.6864557524974 t 20 -8.9558978434317 t 20 -39.9959382671728 t 20 -23.6873520610264 t 20 20.6631713312461" stroke="lightblue" stroke-width="3" fill="none"/>
<text stroke="black" text-anchor="middle" dominant-baseline="central" x="60" y="75">data<animateMotion path="m 0 0 q 10 0 20 0 t 20 -31.5755756465478 t 20 10.7059028762703 t 20 40.3133494851924 t 20 22.1964066767721 t 20 -22.197438682181 t 20 -40.3131597655736 t 20 -10.7047160285149 t 20 31.5763545894872 t 20 36.4762037993723 t 20 -1.80578568234053 t 20 -37.9500212882575 t 20 -29.167660184008 t 20 14.1444234759328 t 20 40.7118311744488 t 20 19.0831125358028 t 20 -25.136879355594 t 20 -39.5989316457734 t 20 -7.1823479876355 t 20 33.7369568948623 t 20 34.7172418455653 t 20 -5.40198962923731 t 20 -39.1261519771528 t 20 -26.5313719100839 t 20 17.4721980735428 t 20 40.7915531386106 t 20 15.8204041452067 t 20 -27.8795068540165 t 20 -38.574657423862 t 20 -3.60374461653325 t 20 35.6334103571344 t 20 32.6864557524974 t 20 -8.9558978434317 t 20 -39.9959382671728 t 20 -23.6873520610264 t 20 20.6631713312461" begin="0" dur="10" fill="remove"/></text>
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
test_that("test-animate-animateMotion-4", {
WH<-c(800,150)
y0<-WH[2]/2
r <-WH[2]/4
x = seq(100,800, by=20)
y = y0 + r*sin((x-100/40))
pts<-rbind('T',x-60,y-y0)
d<-c('M', c(0,0),"Q",c(10,0), c(20,0), pts)
svgR( 
    text("Auto", xy=c(30,30), font.size=25, fill="blue", font='black'),
    g(
      path(d=d , stroke='lightblue', stroke.width=3, fill='none'), 
      text("data", cxy=c(0,0),  
        stroke="black", 
        animateMotion(path=d,  
                      begin=0, dur=10, fill="remove", rotate='auto') 
      ),
      transform=list(translate=c(60,y0))
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="860">
<text font-size="25" fill="blue" font="black" x="30" y="30">Auto</text>
<g transform="translate(60,75)">
<path d="M 0 0 Q 10 0 20 0 T 40 -4.14008339594636 T 60 -35.7156590424942 T 80 -25.0097561662239 T 100 15.3035933189685 T 120 37.4999999957406 T 140 15.3025613135595 T 160 -25.0105984520141 T 180 -35.715314480529 T 200 -4.13895989104184 T 220 32.3372439083304 T 240 30.5314582259899 T 260 -7.41856306226762 T 280 -36.5862232462756 T 300 -22.4417997703428 T 320 18.270031404106 T 340 37.3531439399088 T 360 12.2162645843147 T 380 -27.3826670614586 T 400 -34.5650150490941 T 420 -0.828058154231883 T 440 33.8891836913335 T 460 28.4871940620962 T 480 -10.6389579150566 T 500 -37.1703298251406 T 520 -19.6981317515977 T 540 21.0934213870129 T 560 36.9138255322196 T 580 9.03431867820311 T 600 -29.5403387456589 T 620 -33.1440833621921 T 640 2.48932699494226 T 660 35.1757827474397 T 680 26.219884904008 T 700 -13.7760533631648 T 720 -37.4634054241912 T 740 -16.8002340929451" stroke="lightblue" stroke-width="3" fill="none"/>
<text stroke="black" text-anchor="middle" dominant-baseline="central" x="0" y="0">data<animateMotion path="M 0 0 Q 10 0 20 0 T 40 -4.14008339594636 T 60 -35.7156590424942 T 80 -25.0097561662239 T 100 15.3035933189685 T 120 37.4999999957406 T 140 15.3025613135595 T 160 -25.0105984520141 T 180 -35.715314480529 T 200 -4.13895989104184 T 220 32.3372439083304 T 240 30.5314582259899 T 260 -7.41856306226762 T 280 -36.5862232462756 T 300 -22.4417997703428 T 320 18.270031404106 T 340 37.3531439399088 T 360 12.2162645843147 T 380 -27.3826670614586 T 400 -34.5650150490941 T 420 -0.828058154231883 T 440 33.8891836913335 T 460 28.4871940620962 T 480 -10.6389579150566 T 500 -37.1703298251406 T 520 -19.6981317515977 T 540 21.0934213870129 T 560 36.9138255322196 T 580 9.03431867820311 T 600 -29.5403387456589 T 620 -33.1440833621921 T 640 2.48932699494226 T 660 35.1757827474397 T 680 26.219884904008 T 700 -13.7760533631648 T 720 -37.4634054241912 T 740 -16.8002340929451" begin="0" dur="10" fill="remove" rotate="auto"/></text>
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
# test-animate-animateMotion-5 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-animate-animateMotion-6 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-animate-animateMotion-7 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-animate-animateMotion-8 Ommited!!!

# -----------------------------------------------------



