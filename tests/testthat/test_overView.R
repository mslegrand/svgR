context("overView")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-overView-1", {
svgR( wh=c(100,50),
  text( xy=c(20,10), "line 1", 
    tspan(dy=10, "line2 ")
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="100" height="50">
<text x="20" y="10">line 1<tspan dy="10">line2 </tspan></text>
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
# test-overView-2 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-overView-3 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-overView-4 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-overView-5 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-overView-6 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-overView-7 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-overView-8 Ommited!!!

# -----------------------------------------------------



