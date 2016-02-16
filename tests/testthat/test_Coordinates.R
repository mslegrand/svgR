context("Coordinates")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
# test-Coordinates-1 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-Coordinates-2", {
svgR(wh=c(100,50), 
     use(filter=filter( feFlood(flood.color='lightblue') )) #flood svg with lightBlue
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="100" height="50">
<filter id="genid2">
<feFlood flood-color="lightblue"/>
</filter>
<use filter="url(#genid2)"/>
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
test_that("test-Coordinates-3", {
svgR(wh=c("2in","1in"), 
     use(filter=filter( feFlood(flood.color='lightblue') )) #flood svg with lightBlue
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="2in" height="1in">
<filter id="genid3">
<feFlood flood-color="lightblue"/>
</filter>
<use filter="url(#genid3)"/>
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
# test-Coordinates-4 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-Coordinates-5", {
WH<-c(300,300)
svgR(wh=WH, 
  circle(cxy=c(0,0),r=100, fill="pink", stroke='red'),
  text('Big  Data', xy=c(-40, 50), font.size=20),
  text('Small Data', xy=c(50, 50), font.size=10)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="300" height="300">
<circle r="100" fill="pink" stroke="red" cx="0" cy="0"/>
<text font-size="20" x="-40" y="50">Big  Data</text>
<text font-size="10" x="50" y="50">Small Data</text>
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
test_that("test-Coordinates-6", {
WH<-c(300,300)
svgR(wh=WH, viewBox=c(-WH,2*WH),
  #use(filter=filter( feFlood(flood.color='blue') )),
  circle(cxy=c(0,0),r=100, fill="pink", stroke='red'),
  text('Big  Data', xy=c(-40, 50), font.size=20),
  text('Small Data', xy=c(50, 50), font.size=10)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" viewBox="-300,-300,600,600" width="300" height="300">
<circle r="100" fill="pink" stroke="red" cx="0" cy="0"/>
<text font-size="20" x="-40" y="50">Big  Data</text>
<text font-size="10" x="50" y="50">Small Data</text>
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
test_that("test-Coordinates-7", {
WH<-c(300,300)
svgR(wh=WH, viewBox=c(.1*WH,.5*WH),
  #use(filter=filter( feFlood(flood.color='blue') )),
  circle(cxy=c(0,0),r=100, fill="pink", stroke='red'),
  text('Big  Data', xy=c(-40, 50), font.size=20),
  text('Small Data', xy=c(50, 50), font.size=10)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" viewBox="30,30,150,150" width="300" height="300">
<circle r="100" fill="pink" stroke="red" cx="0" cy="0"/>
<text font-size="20" x="-40" y="50">Big  Data</text>
<text font-size="10" x="50" y="50">Small Data</text>
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
# test-Coordinates-8 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-Coordinates-9 Ommited!!!

# -----------------------------------------------------



