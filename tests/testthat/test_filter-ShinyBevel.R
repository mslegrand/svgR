context("filter-ShinyBevel")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-filter-ShinyBevel-1", {
WH=c(800, 200) # window rect
svgR( wh=WH,
  text( "R Rocks!", cxy=c(400,100), fill="darkblue", font.size=190, font.face='bold',
    filter = filter(
      feMerge( 
         feMergeNode(in1="SourceGraphic"),
         feMergeNode(
           in1=feComposite( operator='in',
                in1=feSpecularLighting( surfaceScale=6,
                                        specularConstant=1,
                                        specularExponent=30,
                                        lighting.color="white",
                                        in1=feGaussianBlur(
                                          stdDeviation=5,
                                          in1="SourceAlpha"),
                                        fePointLight(xyz=c(40,-30,200))
                                        ),
                in2="SourceAlpha"
                )
           )
         )
    )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<filter id="genid5">
<feGaussianBlur stdDeviation="5" in="SourceAlpha" result="genid2"/>
<feSpecularLighting surfaceScale="6" specularConstant="1" specularExponent="30" lighting-color="white" in="genid2" result="genid3">
<fePointLight x="40" y="-30" z="200"/>
</feSpecularLighting>
<feComposite operator="in" in="genid3" in2="SourceAlpha" result="genid4"/>
<feMerge>
<feMergeNode in="SourceGraphic"/>
<feMergeNode in="genid4"/>
</feMerge>
</filter>
<text fill="darkblue" font-size="190" font-face="bold" filter="url(#genid5)" text-anchor="middle" dominant-baseline="central" x="400" y="100">R Rocks!</text>
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
# test-filter-ShinyBevel-2 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-filter-ShinyBevel-3 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-filter-ShinyBevel-4 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-filter-ShinyBevel-5 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-filter-ShinyBevel-6 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-filter-ShinyBevel-7 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-filter-ShinyBevel-8 Ommited!!!

# -----------------------------------------------------



