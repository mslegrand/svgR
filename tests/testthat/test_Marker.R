context("Marker")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-Marker-1", {
WH=c(600, 100) # window rect
svgR( wh=WH,
  line(xy1=c(20,50), xy2=c(300,50), 
    stroke='black', stroke.width=2, 
    marker.start=marker(viewBox=c(0, 0, 10, 10), refXY=c(1,5), 
      markerWidth=6, markerHeight=6, orient="auto",
      path( d="M 0 0 L 10 5 L 0 10 z" )
    ) 
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<marker viewBox="0,0,10,10" markerWidth="6" markerHeight="6" orient="auto" refX="1" refY="5" id="genid2">
<path d="M 0 0 L 10 5 L 0 10 z"/>
</marker>
<line stroke="black" stroke-width="2" marker-start="url(#genid2)" x1="20" y1="50" x2="300" y2="50"/>
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
test_that("test-Marker-2", {
WH=c(600, 100) # window rect
svgR( wh=WH,
  path(d="M100,20 l50,0 l0,50 l50,0", fill="none",
    stroke='black', stroke.width=2, 
    marker.mid=marker(viewBox=c(0, 0, 10, 10), refXY=c(4,4), 
      markerWidth=7, markerHeight=7, orient="auto",
      rect(xy=c(1,1),wh=c(5,5), fill='black')
    ) 
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<marker viewBox="0,0,10,10" markerWidth="7" markerHeight="7" orient="auto" refX="4" refY="4" id="genid3">
<rect fill="black" width="5" height="5" x="1" y="1"/>
</marker>
<path d="M100,20 l50,0 l0,50 l50,0" fill="none" stroke="black" stroke-width="2" marker-mid="url(#genid3)"/>
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
test_that("test-Marker-3", {
WH=c(600, 100) # window rect
svgR( wh=WH,
  line(xy1=c(20,50), xy2=c(300,50), 
    stroke='black', stroke.width=2, 
    marker.end=marker(viewBox=c(0, 0, 10, 10), refXY=c(1,5), 
      markerWidth=6, markerHeight=6, orient="auto",
      path( d=c("M", 0, 0, "L", 10, 5, "L", 0, 10, "z") )
    ) 
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<marker viewBox="0,0,10,10" markerWidth="6" markerHeight="6" orient="auto" refX="1" refY="5" id="genid4">
<path d="M 0 0 L 10 5 L 0 10 z"/>
</marker>
<line stroke="black" stroke-width="2" marker-end="url(#genid4)" x1="20" y1="50" x2="300" y2="50"/>
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
test_that("test-Marker-4", {
WH=c(600, 100) # window rect
svgR( wh=WH,
  path(d="M100,20 l50,0 l0,50 l50,0", fill="none",
    stroke='black', stroke.width=2, 
    marker.start=marker(viewBox=c(0, 0, 10, 10), refXY=c(1,5), 
      markerWidth=6, markerHeight=6, orient="auto",
      path( d="M 0 0 L 10 5 L 0 10 z" )
    ),
    marker.mid=marker(viewBox=c(0, 0, 10, 10), refXY=c(4,4), 
      markerWidth=7, markerHeight=7, orient="auto",
      rect(xy=c(1,1),wh=c(5,5), fill='black')
    ),
    marker.end=marker(viewBox=c(0, 0, 10, 10), refXY=c(1,5), 
      markerWidth=6, markerHeight=6, orient="auto",
      path( d=c("M", 0, 0, "L", 10, 5, "L", 0, 10, "z") )
    ) 
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<marker viewBox="0,0,10,10" markerWidth="6" markerHeight="6" orient="auto" refX="1" refY="5" id="genid5">
<path d="M 0 0 L 10 5 L 0 10 z"/>
</marker>
<marker viewBox="0,0,10,10" markerWidth="7" markerHeight="7" orient="auto" refX="4" refY="4" id="genid6">
<rect fill="black" width="5" height="5" x="1" y="1"/>
</marker>
<marker viewBox="0,0,10,10" markerWidth="6" markerHeight="6" orient="auto" refX="1" refY="5" id="genid7">
<path d="M 0 0 L 10 5 L 0 10 z"/>
</marker>
<path d="M100,20 l50,0 l0,50 l50,0" fill="none" stroke="black" stroke-width="2" marker-start="url(#genid7)" marker-mid="url(#genid6)" marker-end="url(#genid5)"/>
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
test_that("test-Marker-5", {
WH=c(600, 100) # window rect
svgR( wh=WH,
  path(d="M100,20 l50,0 l0,50 l50,0", fill="none",
    stroke='black', stroke.width=2, 
    marker.start=marker(viewBox=c(0, 0, 10, 10), refXY=c(1,5), 
      markerWidth=16, markerHeight=16, orient="auto",
      path( d=c( "M", c(0,0), "A", c(5,5), 0, 1,  1,  c(0,10),  "Z" ) )
    ),
    marker.mid=marker(viewBox=c(0, 0, 10, 10), refXY=c(4,4), 
      markerWidth=7, markerHeight=7, orient="auto",
      circle(cxy=c(5,5),r=5, fill='red')
    ),
    marker.end=marker(viewBox=c(0, 0, 20, 20), refXY=c(1,10), 
      markerWidth=16, markerHeight=20, orient="auto",
      path( fill="blue",
        d=c("M", c(0,0), 
            "A", c(20,20), 0, 0,  0,  c(10,10),
            "A", c(20,20), 0, 0,  0,  c(0,20),
            "Z") 
      )
    ) 
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<marker viewBox="0,0,20,20" markerWidth="16" markerHeight="20" orient="auto" refX="1" refY="10" id="genid8">
<path fill="blue" d="M 0 0 A 20 20 0 0 0 10 10 A 20 20 0 0 0 0 20 Z"/>
</marker>
<marker viewBox="0,0,10,10" markerWidth="7" markerHeight="7" orient="auto" refX="4" refY="4" id="genid9">
<circle r="5" fill="red" cx="5" cy="5"/>
</marker>
<marker viewBox="0,0,10,10" markerWidth="16" markerHeight="16" orient="auto" refX="1" refY="5" id="genid10">
<path d="M 0 0 A 5 5 0 1 1 0 10 Z"/>
</marker>
<path d="M100,20 l50,0 l0,50 l50,0" fill="none" stroke="black" stroke-width="2" marker-start="url(#genid10)" marker-mid="url(#genid9)" marker-end="url(#genid8)"/>
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
test_that("test-Marker-6", {
WH=c(600, 100) # window rect
svgR( wh=WH,
  defs(
    marker(id="marker.start", viewBox=c(0, 0, 10, 10), refXY=c(1,5), 
      markerWidth=16, markerHeight=16, orient="auto",
      path( d=c( "M", c(0,0), "A", c(5,5), 0, 1,  1,  c(0,10),  "Z" ) )
    ),
    marker(id="marker.mid", viewBox=c(0, 0, 10, 10), refXY=c(4,4), 
      markerWidth=7, markerHeight=7, orient="auto",
      circle(cxy=c(5,5),r=5, fill='red')
    ),
    marker(id="marker.end", viewBox=c(0, 0, 20, 20), refXY=c(1,10), 
      markerWidth=16, markerHeight=20, orient="auto",
      path( fill="blue",
        d=c("M", c(0,0), 
            "A", c(20,20), 0, 0,  0,  c(10,10),
            "A", c(20,20), 0, 0,  0,  c(0,20),
            "Z") 
      )
    ) 
  ),
  path(d="M100,20 l50,0 l0,50 l50,0", fill="none",
    stroke='black', stroke.width=2, 
    marker.start='url(#marker.start)',
    marker.end='url(#marker.end)',
    marker.mid='url(#marker.mid)'
  ),
  path(d = c("M",200, 20, "C", 250, 80, 380, 0, 400, 50, "L", 300, 80),  
    stroke='green', stroke.width=2, fill="none",
    marker.start='url(#marker.start)',
    marker.end='url(#marker.end)',
    marker.mid='url(#marker.mid)'
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<defs>
<marker id="marker.start" viewBox="0,0,10,10" markerWidth="16" markerHeight="16" orient="auto" refX="1" refY="5">
<path d="M 0 0 A 5 5 0 1 1 0 10 Z"/>
</marker>
<marker id="marker.mid" viewBox="0,0,10,10" markerWidth="7" markerHeight="7" orient="auto" refX="4" refY="4">
<circle r="5" fill="red" cx="5" cy="5"/>
</marker>
<marker id="marker.end" viewBox="0,0,20,20" markerWidth="16" markerHeight="20" orient="auto" refX="1" refY="10">
<path fill="blue" d="M 0 0 A 20 20 0 0 0 10 10 A 20 20 0 0 0 0 20 Z"/>
</marker>
</defs>
<path d="M100,20 l50,0 l0,50 l50,0" fill="none" stroke="black" stroke-width="2" marker-start="url(#marker.start)" marker-end="url(#marker.end)" marker-mid="url(#marker.mid)"/>
<path d="M 200 20 C 250 80 380 0 400 50 L 300 80" stroke="green" stroke-width="2" fill="none" marker-start="url(#marker.start)" marker-end="url(#marker.end)" marker-mid="url(#marker.mid)"/>
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



