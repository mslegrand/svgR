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
test_that("test-overView-8", {
nodeMapping<-data.frame(
parent=c( 1,1,1,1,1, 2, 2, 5, 5, 5, 5),
child= c( 2,3,4,5,6, 7, 8,9, 10, 11, 12)
)
WH<-c(800,500)
nodeLabels<-c('elements', 'graphical', 'containers', 'animators', 'modifiers', 'other', 
'shape related', 'text related', 'filters', 'gradients', 'masks', 'markers')
svgR(wh=WH,
  svgRTree(nodeMapping, nodeLabels)
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="500">
<defs>
<marker id="triangle" viewBox="0,0,10,10" markerWidth="20" markerHeight="26" refx="2" refy="3" orient="auto" markerUnits="userSpaceOnUse">
<path d="M0,0 L0,6 L9,3 z"/>
</marker>
</defs>
<g stroke-width="2">
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="1" y="134.636363636364"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="61" y="144.636363636364">elements</text>
</g>
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="211" y="18.5"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="271" y="28.5">graphical</text>
</g>
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="211" y="71"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="271" y="81">containers</text>
</g>
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="211" y="106"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="271" y="116">animators</text>
</g>
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="211" y="193.5"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="271" y="203.5">modifiers</text>
</g>
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="211" y="281"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="271" y="291">other</text>
</g>
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="421" y="1"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="481" y="11">shape related</text>
</g>
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="421" y="36"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="481" y="46">text related</text>
</g>
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="421" y="141"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="481" y="151">filters</text>
</g>
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="421" y="176"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="481" y="186">gradients</text>
</g>
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="421" y="211"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="481" y="221">masks</text>
</g>
<g stroke-width="1" stroke="darkblue">
<rect fill="lightblue" stroke="darkblue" rx="5" ry="5" width="120" height="20" x="421" y="246"/>
<text font-size="14" text-anchor="middle" dominant-baseline="central" x="481" y="256">markers</text>
</g>
<path d="M 121 144.636363636364 C 177.25 144.636363636364 139.75 28.5 196 28.5" stroke="black" fill="none" marker-end="url(#triangle)"/>
<path d="M 121 144.636363636364 C 177.25 144.636363636364 139.75 81 196 81" stroke="black" fill="none" marker-end="url(#triangle)"/>
<path d="M 121 144.636363636364 C 177.25 144.636363636364 139.75 116 196 116" stroke="black" fill="none" marker-end="url(#triangle)"/>
<path d="M 121 144.636363636364 C 177.25 144.636363636364 139.75 203.5 196 203.5" stroke="black" fill="none" marker-end="url(#triangle)"/>
<path d="M 121 144.636363636364 C 177.25 144.636363636364 139.75 291 196 291" stroke="black" fill="none" marker-end="url(#triangle)"/>
<path d="M 331 28.5 C 387.25 28.5 349.75 11 406 11" stroke="black" fill="none" marker-end="url(#triangle)"/>
<path d="M 331 28.5 C 387.25 28.5 349.75 46 406 46" stroke="black" fill="none" marker-end="url(#triangle)"/>
<path d="M 331 203.5 C 387.25 203.5 349.75 151 406 151" stroke="black" fill="none" marker-end="url(#triangle)"/>
<path d="M 331 203.5 C 387.25 203.5 349.75 186 406 186" stroke="black" fill="none" marker-end="url(#triangle)"/>
<path d="M 331 203.5 C 387.25 203.5 349.75 221 406 221" stroke="black" fill="none" marker-end="url(#triangle)"/>
<path d="M 331 203.5 C 387.25 203.5 349.75 256 406 256" stroke="black" fill="none" marker-end="url(#triangle)"/>
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



