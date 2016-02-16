context("filter-Colors")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-filter-Colors-1", {
WH=c(800, 100) # window rect
svgR( wh=WH,
  use(
    filter=filter( feFlood(flood.color='yellow') )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<filter id="genid2">
<feFlood flood-color="yellow"/>
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
test_that("test-filter-Colors-2", {
WH=c(800, 100) # window rect
svgR( wh=WH,
  defs(
    filter(id='myFlood',
           feFlood(flood.color='yellow')
    )
  ),
  use(
    filter="url(#myFlood)"
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<defs>
<filter id="myFlood">
<feFlood flood-color="yellow"/>
</filter>
</defs>
<use filter="url(#myFlood)"/>
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
test_that("test-filter-Colors-3", {
WH=c(800, 100) # window rect
svgR( wh=WH,
    text('10 semi-transparent floods', xy=c(5,20), stroke="black", font.size=20),
    rect(cxy=WH/2, wh=c(1,.2)*WH, fill='blue'),
    lapply(1:10, 
      function(i){g(
           filter=filter( xy=c(i*60,10),  wh=c(30,90), feFlood(flood.color='yellow', flood.opacity='.5'))
           ) 
      }
      )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<text stroke="black" font-size="20" x="5" y="20">10 semi-transparent floods</text>
<rect fill="blue" width="800" height="20" x="0" y="40"/>
<filter width="30" height="90" x="60" y="10" id="genid3">
<feFlood flood-color="yellow" flood-opacity=".5"/>
</filter>
<g filter="url(#genid3)"/>
<filter width="30" height="90" x="120" y="10" id="genid4">
<feFlood flood-color="yellow" flood-opacity=".5"/>
</filter>
<g filter="url(#genid4)"/>
<filter width="30" height="90" x="180" y="10" id="genid5">
<feFlood flood-color="yellow" flood-opacity=".5"/>
</filter>
<g filter="url(#genid5)"/>
<filter width="30" height="90" x="240" y="10" id="genid6">
<feFlood flood-color="yellow" flood-opacity=".5"/>
</filter>
<g filter="url(#genid6)"/>
<filter width="30" height="90" x="300" y="10" id="genid7">
<feFlood flood-color="yellow" flood-opacity=".5"/>
</filter>
<g filter="url(#genid7)"/>
<filter width="30" height="90" x="360" y="10" id="genid8">
<feFlood flood-color="yellow" flood-opacity=".5"/>
</filter>
<g filter="url(#genid8)"/>
<filter width="30" height="90" x="420" y="10" id="genid9">
<feFlood flood-color="yellow" flood-opacity=".5"/>
</filter>
<g filter="url(#genid9)"/>
<filter width="30" height="90" x="480" y="10" id="genid10">
<feFlood flood-color="yellow" flood-opacity=".5"/>
</filter>
<g filter="url(#genid10)"/>
<filter width="30" height="90" x="540" y="10" id="genid11">
<feFlood flood-color="yellow" flood-opacity=".5"/>
</filter>
<g filter="url(#genid11)"/>
<filter width="30" height="90" x="600" y="10" id="genid12">
<feFlood flood-color="yellow" flood-opacity=".5"/>
</filter>
<g filter="url(#genid12)"/>
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
test_that("test-filter-Colors-4", {
WH=c(800, 100) # window rect
svgR( wh=WH,
    lapply(seq(from=0, to=360, by=16), 
      function(i){
        rect(xy=c(i*2,10), wh=c(30,32), fill='red',
           filter=filter( 
             feColorMatrix(
               type="hueRotate", values=i
             )  
           )
        )
      }
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<filter id="genid13">
<feColorMatrix type="hueRotate" values="0"/>
</filter>
<rect fill="red" filter="url(#genid13)" width="30" height="32" x="0" y="10"/>
<filter id="genid14">
<feColorMatrix type="hueRotate" values="16"/>
</filter>
<rect fill="red" filter="url(#genid14)" width="30" height="32" x="32" y="10"/>
<filter id="genid15">
<feColorMatrix type="hueRotate" values="32"/>
</filter>
<rect fill="red" filter="url(#genid15)" width="30" height="32" x="64" y="10"/>
<filter id="genid16">
<feColorMatrix type="hueRotate" values="48"/>
</filter>
<rect fill="red" filter="url(#genid16)" width="30" height="32" x="96" y="10"/>
<filter id="genid17">
<feColorMatrix type="hueRotate" values="64"/>
</filter>
<rect fill="red" filter="url(#genid17)" width="30" height="32" x="128" y="10"/>
<filter id="genid18">
<feColorMatrix type="hueRotate" values="80"/>
</filter>
<rect fill="red" filter="url(#genid18)" width="30" height="32" x="160" y="10"/>
<filter id="genid19">
<feColorMatrix type="hueRotate" values="96"/>
</filter>
<rect fill="red" filter="url(#genid19)" width="30" height="32" x="192" y="10"/>
<filter id="genid20">
<feColorMatrix type="hueRotate" values="112"/>
</filter>
<rect fill="red" filter="url(#genid20)" width="30" height="32" x="224" y="10"/>
<filter id="genid21">
<feColorMatrix type="hueRotate" values="128"/>
</filter>
<rect fill="red" filter="url(#genid21)" width="30" height="32" x="256" y="10"/>
<filter id="genid22">
<feColorMatrix type="hueRotate" values="144"/>
</filter>
<rect fill="red" filter="url(#genid22)" width="30" height="32" x="288" y="10"/>
<filter id="genid23">
<feColorMatrix type="hueRotate" values="160"/>
</filter>
<rect fill="red" filter="url(#genid23)" width="30" height="32" x="320" y="10"/>
<filter id="genid24">
<feColorMatrix type="hueRotate" values="176"/>
</filter>
<rect fill="red" filter="url(#genid24)" width="30" height="32" x="352" y="10"/>
<filter id="genid25">
<feColorMatrix type="hueRotate" values="192"/>
</filter>
<rect fill="red" filter="url(#genid25)" width="30" height="32" x="384" y="10"/>
<filter id="genid26">
<feColorMatrix type="hueRotate" values="208"/>
</filter>
<rect fill="red" filter="url(#genid26)" width="30" height="32" x="416" y="10"/>
<filter id="genid27">
<feColorMatrix type="hueRotate" values="224"/>
</filter>
<rect fill="red" filter="url(#genid27)" width="30" height="32" x="448" y="10"/>
<filter id="genid28">
<feColorMatrix type="hueRotate" values="240"/>
</filter>
<rect fill="red" filter="url(#genid28)" width="30" height="32" x="480" y="10"/>
<filter id="genid29">
<feColorMatrix type="hueRotate" values="256"/>
</filter>
<rect fill="red" filter="url(#genid29)" width="30" height="32" x="512" y="10"/>
<filter id="genid30">
<feColorMatrix type="hueRotate" values="272"/>
</filter>
<rect fill="red" filter="url(#genid30)" width="30" height="32" x="544" y="10"/>
<filter id="genid31">
<feColorMatrix type="hueRotate" values="288"/>
</filter>
<rect fill="red" filter="url(#genid31)" width="30" height="32" x="576" y="10"/>
<filter id="genid32">
<feColorMatrix type="hueRotate" values="304"/>
</filter>
<rect fill="red" filter="url(#genid32)" width="30" height="32" x="608" y="10"/>
<filter id="genid33">
<feColorMatrix type="hueRotate" values="320"/>
</filter>
<rect fill="red" filter="url(#genid33)" width="30" height="32" x="640" y="10"/>
<filter id="genid34">
<feColorMatrix type="hueRotate" values="336"/>
</filter>
<rect fill="red" filter="url(#genid34)" width="30" height="32" x="672" y="10"/>
<filter id="genid35">
<feColorMatrix type="hueRotate" values="352"/>
</filter>
<rect fill="red" filter="url(#genid35)" width="30" height="32" x="704" y="10"/>
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
test_that("test-filter-Colors-5", {
WH=c(800, 100) # window rect
svgR( wh=WH,
    lapply(seq(from=0, to=360, by=16), 
      function(i){
        rect(xy=c(i*2,10), wh=c(30,96), 
          fill=linearGradient( xy1=c(0,0), xy2=c(0,1),
            colors=c('red','yellow','green','blue')),
           filter=filter( 
             feColorMatrix(
               type="hueRotate", values=i
             )  
           )
        )
      }
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<filter id="genid36">
<feColorMatrix type="hueRotate" values="0"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid37">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid37)" filter="url(#genid36)" width="30" height="96" x="0" y="10"/>
<filter id="genid38">
<feColorMatrix type="hueRotate" values="16"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid39">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid39)" filter="url(#genid38)" width="30" height="96" x="32" y="10"/>
<filter id="genid40">
<feColorMatrix type="hueRotate" values="32"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid41">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid41)" filter="url(#genid40)" width="30" height="96" x="64" y="10"/>
<filter id="genid42">
<feColorMatrix type="hueRotate" values="48"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid43">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid43)" filter="url(#genid42)" width="30" height="96" x="96" y="10"/>
<filter id="genid44">
<feColorMatrix type="hueRotate" values="64"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid45">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid45)" filter="url(#genid44)" width="30" height="96" x="128" y="10"/>
<filter id="genid46">
<feColorMatrix type="hueRotate" values="80"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid47">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid47)" filter="url(#genid46)" width="30" height="96" x="160" y="10"/>
<filter id="genid48">
<feColorMatrix type="hueRotate" values="96"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid49">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid49)" filter="url(#genid48)" width="30" height="96" x="192" y="10"/>
<filter id="genid50">
<feColorMatrix type="hueRotate" values="112"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid51">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid51)" filter="url(#genid50)" width="30" height="96" x="224" y="10"/>
<filter id="genid52">
<feColorMatrix type="hueRotate" values="128"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid53">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid53)" filter="url(#genid52)" width="30" height="96" x="256" y="10"/>
<filter id="genid54">
<feColorMatrix type="hueRotate" values="144"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid55">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid55)" filter="url(#genid54)" width="30" height="96" x="288" y="10"/>
<filter id="genid56">
<feColorMatrix type="hueRotate" values="160"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid57">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid57)" filter="url(#genid56)" width="30" height="96" x="320" y="10"/>
<filter id="genid58">
<feColorMatrix type="hueRotate" values="176"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid59">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid59)" filter="url(#genid58)" width="30" height="96" x="352" y="10"/>
<filter id="genid60">
<feColorMatrix type="hueRotate" values="192"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid61">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid61)" filter="url(#genid60)" width="30" height="96" x="384" y="10"/>
<filter id="genid62">
<feColorMatrix type="hueRotate" values="208"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid63">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid63)" filter="url(#genid62)" width="30" height="96" x="416" y="10"/>
<filter id="genid64">
<feColorMatrix type="hueRotate" values="224"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid65">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid65)" filter="url(#genid64)" width="30" height="96" x="448" y="10"/>
<filter id="genid66">
<feColorMatrix type="hueRotate" values="240"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid67">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid67)" filter="url(#genid66)" width="30" height="96" x="480" y="10"/>
<filter id="genid68">
<feColorMatrix type="hueRotate" values="256"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid69">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid69)" filter="url(#genid68)" width="30" height="96" x="512" y="10"/>
<filter id="genid70">
<feColorMatrix type="hueRotate" values="272"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid71">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid71)" filter="url(#genid70)" width="30" height="96" x="544" y="10"/>
<filter id="genid72">
<feColorMatrix type="hueRotate" values="288"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid73">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid73)" filter="url(#genid72)" width="30" height="96" x="576" y="10"/>
<filter id="genid74">
<feColorMatrix type="hueRotate" values="304"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid75">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid75)" filter="url(#genid74)" width="30" height="96" x="608" y="10"/>
<filter id="genid76">
<feColorMatrix type="hueRotate" values="320"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid77">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid77)" filter="url(#genid76)" width="30" height="96" x="640" y="10"/>
<filter id="genid78">
<feColorMatrix type="hueRotate" values="336"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid79">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid79)" filter="url(#genid78)" width="30" height="96" x="672" y="10"/>
<filter id="genid80">
<feColorMatrix type="hueRotate" values="352"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid81">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid81)" filter="url(#genid80)" width="30" height="96" x="704" y="10"/>
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
test_that("test-filter-Colors-6", {
WH=c(800, 100) # window rect
svgR( wh=WH,
    lapply(seq(from=1, to=0, by=-.05), 
      function(i){
        rect(xy=c(i*800,10), wh=c(32,32), fill="red",
           filter=filter( 
             feColorMatrix(
               type="saturate", values=i
             )  
           )
        )
      }
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<filter id="genid82">
<feColorMatrix type="saturate" values="1"/>
</filter>
<rect fill="red" filter="url(#genid82)" width="32" height="32" x="800" y="10"/>
<filter id="genid83">
<feColorMatrix type="saturate" values="0.95"/>
</filter>
<rect fill="red" filter="url(#genid83)" width="32" height="32" x="760" y="10"/>
<filter id="genid84">
<feColorMatrix type="saturate" values="0.9"/>
</filter>
<rect fill="red" filter="url(#genid84)" width="32" height="32" x="720" y="10"/>
<filter id="genid85">
<feColorMatrix type="saturate" values="0.85"/>
</filter>
<rect fill="red" filter="url(#genid85)" width="32" height="32" x="680" y="10"/>
<filter id="genid86">
<feColorMatrix type="saturate" values="0.8"/>
</filter>
<rect fill="red" filter="url(#genid86)" width="32" height="32" x="640" y="10"/>
<filter id="genid87">
<feColorMatrix type="saturate" values="0.75"/>
</filter>
<rect fill="red" filter="url(#genid87)" width="32" height="32" x="600" y="10"/>
<filter id="genid88">
<feColorMatrix type="saturate" values="0.7"/>
</filter>
<rect fill="red" filter="url(#genid88)" width="32" height="32" x="560" y="10"/>
<filter id="genid89">
<feColorMatrix type="saturate" values="0.65"/>
</filter>
<rect fill="red" filter="url(#genid89)" width="32" height="32" x="520" y="10"/>
<filter id="genid90">
<feColorMatrix type="saturate" values="0.6"/>
</filter>
<rect fill="red" filter="url(#genid90)" width="32" height="32" x="480" y="10"/>
<filter id="genid91">
<feColorMatrix type="saturate" values="0.55"/>
</filter>
<rect fill="red" filter="url(#genid91)" width="32" height="32" x="440" y="10"/>
<filter id="genid92">
<feColorMatrix type="saturate" values="0.5"/>
</filter>
<rect fill="red" filter="url(#genid92)" width="32" height="32" x="400" y="10"/>
<filter id="genid93">
<feColorMatrix type="saturate" values="0.45"/>
</filter>
<rect fill="red" filter="url(#genid93)" width="32" height="32" x="360" y="10"/>
<filter id="genid94">
<feColorMatrix type="saturate" values="0.4"/>
</filter>
<rect fill="red" filter="url(#genid94)" width="32" height="32" x="320" y="10"/>
<filter id="genid95">
<feColorMatrix type="saturate" values="0.35"/>
</filter>
<rect fill="red" filter="url(#genid95)" width="32" height="32" x="280" y="10"/>
<filter id="genid96">
<feColorMatrix type="saturate" values="0.3"/>
</filter>
<rect fill="red" filter="url(#genid96)" width="32" height="32" x="240" y="10"/>
<filter id="genid97">
<feColorMatrix type="saturate" values="0.25"/>
</filter>
<rect fill="red" filter="url(#genid97)" width="32" height="32" x="200" y="10"/>
<filter id="genid98">
<feColorMatrix type="saturate" values="0.2"/>
</filter>
<rect fill="red" filter="url(#genid98)" width="32" height="32" x="160" y="10"/>
<filter id="genid99">
<feColorMatrix type="saturate" values="0.15"/>
</filter>
<rect fill="red" filter="url(#genid99)" width="32" height="32" x="120" y="10"/>
<filter id="genid100">
<feColorMatrix type="saturate" values="0.1"/>
</filter>
<rect fill="red" filter="url(#genid100)" width="32" height="32" x="80" y="10"/>
<filter id="genid101">
<feColorMatrix type="saturate" values="0.0499999999999999"/>
</filter>
<rect fill="red" filter="url(#genid101)" width="32" height="32" x="39.9999999999999" y="10"/>
<filter id="genid102">
<feColorMatrix type="saturate" values="0"/>
</filter>
<rect fill="red" filter="url(#genid102)" width="32" height="32" x="0" y="10"/>
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
test_that("test-filter-Colors-7", {
WH=c(800, 100) # window rect
svgR( wh=WH,
    lapply(seq(from=1, to=0, by=-.05),
      function(i){
        rect(xy=c(i*800,10), wh=c(32,96), fill=
          linearGradient( xy1=c(0,0), xy2=c(0,1),
            colors=c('red','yellow','green','blue')),
           filter=filter( 
             feColorMatrix(
               type="saturate", values=i
             ) 
           )
        )
      }
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<filter id="genid103">
<feColorMatrix type="saturate" values="1"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid104">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid104)" filter="url(#genid103)" width="32" height="96" x="800" y="10"/>
<filter id="genid105">
<feColorMatrix type="saturate" values="0.95"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid106">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid106)" filter="url(#genid105)" width="32" height="96" x="760" y="10"/>
<filter id="genid107">
<feColorMatrix type="saturate" values="0.9"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid108">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid108)" filter="url(#genid107)" width="32" height="96" x="720" y="10"/>
<filter id="genid109">
<feColorMatrix type="saturate" values="0.85"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid110">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid110)" filter="url(#genid109)" width="32" height="96" x="680" y="10"/>
<filter id="genid111">
<feColorMatrix type="saturate" values="0.8"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid112">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid112)" filter="url(#genid111)" width="32" height="96" x="640" y="10"/>
<filter id="genid113">
<feColorMatrix type="saturate" values="0.75"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid114">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid114)" filter="url(#genid113)" width="32" height="96" x="600" y="10"/>
<filter id="genid115">
<feColorMatrix type="saturate" values="0.7"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid116">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid116)" filter="url(#genid115)" width="32" height="96" x="560" y="10"/>
<filter id="genid117">
<feColorMatrix type="saturate" values="0.65"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid118">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid118)" filter="url(#genid117)" width="32" height="96" x="520" y="10"/>
<filter id="genid119">
<feColorMatrix type="saturate" values="0.6"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid120">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid120)" filter="url(#genid119)" width="32" height="96" x="480" y="10"/>
<filter id="genid121">
<feColorMatrix type="saturate" values="0.55"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid122">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid122)" filter="url(#genid121)" width="32" height="96" x="440" y="10"/>
<filter id="genid123">
<feColorMatrix type="saturate" values="0.5"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid124">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid124)" filter="url(#genid123)" width="32" height="96" x="400" y="10"/>
<filter id="genid125">
<feColorMatrix type="saturate" values="0.45"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid126">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid126)" filter="url(#genid125)" width="32" height="96" x="360" y="10"/>
<filter id="genid127">
<feColorMatrix type="saturate" values="0.4"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid128">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid128)" filter="url(#genid127)" width="32" height="96" x="320" y="10"/>
<filter id="genid129">
<feColorMatrix type="saturate" values="0.35"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid130">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid130)" filter="url(#genid129)" width="32" height="96" x="280" y="10"/>
<filter id="genid131">
<feColorMatrix type="saturate" values="0.3"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid132">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid132)" filter="url(#genid131)" width="32" height="96" x="240" y="10"/>
<filter id="genid133">
<feColorMatrix type="saturate" values="0.25"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid134">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid134)" filter="url(#genid133)" width="32" height="96" x="200" y="10"/>
<filter id="genid135">
<feColorMatrix type="saturate" values="0.2"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid136">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid136)" filter="url(#genid135)" width="32" height="96" x="160" y="10"/>
<filter id="genid137">
<feColorMatrix type="saturate" values="0.15"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid138">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid138)" filter="url(#genid137)" width="32" height="96" x="120" y="10"/>
<filter id="genid139">
<feColorMatrix type="saturate" values="0.1"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid140">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid140)" filter="url(#genid139)" width="32" height="96" x="80" y="10"/>
<filter id="genid141">
<feColorMatrix type="saturate" values="0.0499999999999999"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid142">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid142)" filter="url(#genid141)" width="32" height="96" x="39.9999999999999" y="10"/>
<filter id="genid143">
<feColorMatrix type="saturate" values="0"/>
</filter>
<linearGradient x1="0" y1="0" x2="0" y2="1" id="genid144">
<stop offset="0%" stop-color="red"/>
<stop offset="33%" stop-color="yellow"/>
<stop offset="66%" stop-color="green"/>
<stop offset="100%" stop-color="blue"/>
</linearGradient>
<rect fill="url(#genid144)" filter="url(#genid143)" width="32" height="96" x="0" y="10"/>
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
test_that("test-filter-Colors-8", {
WH=c(800, 100) # window rect
svgR( wh=WH,
    lapply(seq(from=0, to=1, by=.05), 
      function(i){
        rect(xy=c(i*800,10), wh=c(32,32), fill="red",
           filter=filter( 
             feColorMatrix(
               type="matrix", 
               values=paste(runif(25,-1,1),collapse=" ")
             )  
           )
        )
      }
    )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<filter id="genid145">
<feColorMatrix type="matrix" values="-0.388771896716207 0.900890755001456 0.294576485175639 0.885772071778774 0.0903883292339742 -0.105910921469331 0.904611141420901 0.346464475151151 0.687061493750662 -0.441737219225615 -0.553934397175908 0.792492690030485 0.026619840413332 -0.824060868471861 -0.785782261285931 0.638581396546215 0.966875236947089 0.0537523441016674 0.728732510935515 0.961113811470568 0.0900039100088179 0.293986440636218 0.359652481973171 -0.157618104945868 -0.744726701639593"/>
</filter>
<rect fill="red" filter="url(#genid145)" width="32" height="32" x="0" y="10"/>
<filter id="genid146">
<feColorMatrix type="matrix" values="-0.173232204280794 -0.884564632549882 -0.382988117169589 -0.316828043200076 0.344184280373156 -0.51845834730193 0.794753968250006 -0.0957518443465233 -0.092943049967289 -0.383146215695888 0.0325993592850864 0.182008466217667 0.0962333371862769 0.309633221011609 0.226129239890724 0.378507324494421 -0.95224490063265 -0.483448330312967 0.95314757199958 -0.0464623649604619 0.522734943311661 -0.978014279156923 0.79950955696404 -0.642168469727039 0.658827134408057"/>
</filter>
<rect fill="red" filter="url(#genid146)" width="32" height="32" x="40" y="10"/>
<filter id="genid147">
<feColorMatrix type="matrix" values="-0.690995440818369 -0.747054002247751 0.634786836337298 0.00925461994484067 0.458165457472205 0.126184159424156 -0.894315574318171 -0.721484482754022 -0.899071475956589 0.520593606401235 -0.446349566336721 -0.483955577947199 -0.524326242506504 -0.0249989284202456 -0.861562700476497 0.716177291702479 0.928949264809489 0.671699898783118 -0.563069569412619 -0.591897832229733 -0.359506281558424 0.420559576712549 0.111876865848899 -0.263158625923097 -0.707131773233414"/>
</filter>
<rect fill="red" filter="url(#genid147)" width="32" height="32" x="80" y="10"/>
<filter id="genid148">
<feColorMatrix type="matrix" values="0.33916347194463 -0.271088143344969 0.321382427588105 -0.726272251456976 -0.182300711981952 0.624860808253288 -0.304493084084243 -0.581087641883641 0.589878296945244 0.952674922533333 0.863883200567216 0.890055738855153 0.907581565901637 -0.592903942335397 0.970577004831284 -0.305959408637136 -0.639094694983214 0.099882401060313 -0.317831969819963 0.912449799943715 -0.232830770779401 -0.827744459733367 -0.683464890811592 0.703521517105401 -0.22493035858497"/>
</filter>
<rect fill="red" filter="url(#genid148)" width="32" height="32" x="120" y="10"/>
<filter id="genid149">
<feColorMatrix type="matrix" values="-0.925303947646171 0.354469684883952 -0.616682471707463 -0.163186351768672 -0.572598167695105 -0.0055662733502686 -0.17430107947439 -0.797476681880653 0.582184783183038 -0.129769766237587 -0.73878674628213 -0.592362094204873 -0.190713351592422 0.379029635339975 -0.303813824430108 -0.566158639267087 -0.909519753418863 -0.576238485053182 0.79505018889904 0.637722994200885 0.358679387718439 -0.534183331299573 0.127286143135279 0.732976785395294 -0.419968834612519"/>
</filter>
<rect fill="red" filter="url(#genid149)" width="32" height="32" x="160" y="10"/>
<filter id="genid150">
<feColorMatrix type="matrix" values="-0.00615763477981091 -0.2186243776232 -0.750536484643817 0.524128885474056 -0.147080877795815 0.880402625072747 0.479362550657243 0.742055106908083 0.820776982232928 0.370778802782297 0.37440005177632 0.317097431980073 -0.0866071060299873 -0.278642143588513 -0.65511544700712 -0.23583029024303 0.390118913259357 -0.623427268117666 0.767738940194249 -0.837763478048146 0.234092283528298 0.765380869153887 0.631551908794791 -0.79406866338104 -0.580820563714951"/>
</filter>
<rect fill="red" filter="url(#genid150)" width="32" height="32" x="200" y="10"/>
<filter id="genid151">
<feColorMatrix type="matrix" values="0.782252998556942 -0.887631991878152 0.209327457938343 0.76545339031145 -0.732289943378419 -0.601968913339078 0.700460315681994 -0.156048308126628 -0.513883019331843 -0.126430834177881 -0.702947671990842 0.963917948771268 -0.555741298478097 -0.0675614294596016 0.519805112387985 0.148551356513053 0.125477365218103 -0.03963155252859 -0.0423618918284774 -0.789517304394394 -0.931160342413932 -0.416762322187424 0.392550739459693 0.239824601449072 -0.306278362870216"/>
</filter>
<rect fill="red" filter="url(#genid151)" width="32" height="32" x="240" y="10"/>
<filter id="genid152">
<feColorMatrix type="matrix" values="0.0970191131345928 0.850910333450884 0.968588472343981 -0.350114176981151 -0.982544531580061 -0.883905196562409 -0.308595637790859 -0.537776192184538 -0.741802745498717 0.294766975101084 -0.293520933482796 0.879273375030607 0.249326808843762 -0.713581497315317 0.145102153997868 -0.0019476399756968 0.291742388159037 -0.300442190375179 -0.131570103112608 0.189511064440012 0.661319980863482 -0.236571901477873 -0.719657071866095 -0.0492202970199287 0.634612750262022"/>
</filter>
<rect fill="red" filter="url(#genid152)" width="32" height="32" x="280" y="10"/>
<filter id="genid153">
<feColorMatrix type="matrix" values="0.580590773373842 -0.800291690975428 0.313697153236717 0.586301068775356 -0.635500586126 0.822101887315512 0.308393298182636 0.514135809615254 0.9056142186746 0.576556965708733 -0.530344648752362 -0.621372307650745 0.344179821200669 -0.494883317034692 -0.518561518285424 0.947823913767934 0.736377969849855 -0.952159446198493 0.00897232117131352 0.45350056188181 0.260980820283294 -0.495817098300904 -0.207391910720617 0.210532614961267 0.607108918949962"/>
</filter>
<rect fill="red" filter="url(#genid153)" width="32" height="32" x="320" y="10"/>
<filter id="genid154">
<feColorMatrix type="matrix" values="0.730617040302604 0.764371039811522 0.767683960963041 -0.653338767588139 0.972626356408 -0.815783288795501 0.46769584575668 -0.498882359359413 -0.765262730419636 0.0513571039773524 -0.0204477063380182 0.827478548046201 0.391914997715503 0.445978388190269 0.796808612998575 0.269807912874967 0.536413692403585 -0.282796892803162 0.877699132077396 0.641315371263772 -0.73772402247414 -0.307179107796401 -0.791088424157351 -0.36876897374168 -0.155674878973514"/>
</filter>
<rect fill="red" filter="url(#genid154)" width="32" height="32" x="360" y="10"/>
<filter id="genid155">
<feColorMatrix type="matrix" values="-0.843081709463149 -0.734503097366542 0.582202209625393 -0.37939433241263 0.104185565374792 -0.860926241613925 0.589658800978214 -0.854116505943239 -0.828800895251334 -0.865907001309097 -0.803455321118236 0.668263720814139 -0.536733903456479 -0.333043352235109 -0.856412685476243 -0.355434390716255 0.647871316410601 0.696549140382558 -0.024387935642153 0.529526215512305 -0.053544782102108 -0.8654555385001 -0.923529558349401 0.814960531424731 -0.931479162536561"/>
</filter>
<rect fill="red" filter="url(#genid155)" width="32" height="32" x="400" y="10"/>
<filter id="genid156">
<feColorMatrix type="matrix" values="0.667597421444952 -0.819569688290358 -0.498649465851486 0.33615054609254 0.715856917202473 0.436733881942928 -0.787986889481544 0.849949940573424 -0.668293046299368 0.860118022188544 -0.10696941614151 0.403144297655672 -0.110805531963706 -0.16783399740234 -0.709961670450866 0.491247385274619 0.286610756069422 -0.22294657304883 0.187231434043497 0.089953622315079 -0.322667269501835 0.279089231975377 -0.766893337480724 0.935886831954122 -0.96434858860448"/>
</filter>
<rect fill="red" filter="url(#genid156)" width="32" height="32" x="440" y="10"/>
<filter id="genid157">
<feColorMatrix type="matrix" values="-0.491476744413376 -0.934795069042593 -0.395199831575155 -0.925241529475898 -0.187165406998247 0.26444149762392 -0.985529076308012 0.575280422810465 -0.975895074661821 0.918478277977556 -0.483296386897564 0.893479698337615 0.0714327138848603 -0.595943888649344 0.169198323506862 0.791995652019978 -0.781323970295489 0.416641770862043 -0.344504231587052 -0.889579569455236 0.125064425170422 -0.0332734980620444 -0.128749560564756 0.771711861249059 0.418522735126317"/>
</filter>
<rect fill="red" filter="url(#genid157)" width="32" height="32" x="480" y="10"/>
<filter id="genid158">
<feColorMatrix type="matrix" values="0.0584419686347246 0.509862824808806 -0.232484530191869 0.353661363944411 0.472326708957553 -0.720380467828363 0.636346203740686 -0.256286186631769 0.862703449092805 -0.858750974759459 -0.688700970262289 0.932210189290345 -0.840554845519364 0.440154187846929 -0.24473274871707 -0.337046734988689 0.52736904239282 0.172318619675934 0.218558382242918 -0.869413924403489 0.234761533327401 0.616396219003946 0.0758161866106093 -0.696662876754999 0.380325794219971"/>
</filter>
<rect fill="red" filter="url(#genid158)" width="32" height="32" x="520" y="10"/>
<filter id="genid159">
<feColorMatrix type="matrix" values="0.967903636395931 -0.118052052799612 0.679012113716453 -0.0691351592540741 -0.933711360674351 0.68411254696548 -0.137149937916547 0.412306484766304 0.0031322524882853 0.988409207668155 0.821323659736663 0.183521924074739 0.764890258200467 0.365297289565206 0.671431873459369 -0.924507290590554 0.996134893968701 -0.67158130183816 0.898639556951821 0.779817556962371 -0.899514638353139 0.148778081871569 0.360936798155308 0.901480995584279 -0.992948981001973"/>
</filter>
<rect fill="red" filter="url(#genid159)" width="32" height="32" x="560" y="10"/>
<filter id="genid160">
<feColorMatrix type="matrix" values="-0.53950520278886 0.919273664709181 -0.623714777640998 -0.401864408049732 0.32860459620133 0.0328454896807671 0.351570705883205 -0.453677393496037 -0.626879007089883 0.0426557678729296 -0.212007075548172 -0.0133184012956917 -0.698929005302489 -0.789509748108685 -0.168642734177411 -0.0857294201850891 0.114286598283798 0.045141079928726 -0.822206277400255 0.116439443081617 0.320140848867595 -0.527947538532317 -0.883210585918278 0.396457602735609 0.825838983058929"/>
</filter>
<rect fill="red" filter="url(#genid160)" width="32" height="32" x="600" y="10"/>
<filter id="genid161">
<feColorMatrix type="matrix" values="0.844802901614457 0.181873775087297 0.29548890562728 -0.108996640890837 0.753373376093805 0.371880032122135 0.687051037326455 0.210037253331393 0.474803705234081 -0.397999030072242 0.396454924717546 -0.15691966470331 -0.328220074530691 0.530018182471395 0.748912364710122 -0.204430859070271 0.345971326343715 -0.856293120421469 0.79193270765245 0.147296842653304 -0.470529905054718 0.828559474088252 0.732278269249946 0.927444163709879 -0.574230158701539"/>
</filter>
<rect fill="red" filter="url(#genid161)" width="32" height="32" x="640" y="10"/>
<filter id="genid162">
<feColorMatrix type="matrix" values="-0.614249615930021 0.520990217104554 -0.00950939767062664 -0.308884736150503 -0.683861363679171 -0.879548389930278 -0.279038123320788 0.437071025837213 -0.610071811359376 0.663571687880903 0.0768436510115862 -0.2717220694758 0.980799797922373 -0.290796482004225 -0.855482070241123 -0.293020559009165 -0.478988559916615 -0.279908931348473 -0.753228065092117 0.705010373145342 -0.543819081503898 -0.59676556661725 -0.5951605620794 -0.0156843923032284 -0.69136076932773"/>
</filter>
<rect fill="red" filter="url(#genid162)" width="32" height="32" x="680" y="10"/>
<filter id="genid163">
<feColorMatrix type="matrix" values="0.400294961873442 -0.506830832920969 -0.343358446843922 -0.00808120099827647 0.761892393231392 0.468104378785938 0.740320631302893 0.347902050707489 0.18530964711681 -0.472579939756542 0.771731918677688 -0.229569870512933 -0.662746456451714 0.305878033861518 0.963539395481348 -0.680352345574647 0.728092637378722 -0.184777879156172 0.609756852500141 -0.62419561157003 -0.436525070574135 -0.605918364133686 0.872009085025638 0.464081415906549 -0.530743614770472"/>
</filter>
<rect fill="red" filter="url(#genid163)" width="32" height="32" x="720" y="10"/>
<filter id="genid164">
<feColorMatrix type="matrix" values="-0.858753610868007 -0.137503172736615 -0.40983550529927 -0.81207517767325 0.832163262646645 -0.642319614998996 0.625113901682198 0.227967752609402 -0.631074532866478 -0.86141802649945 -0.68889141548425 -0.12868488766253 -0.415890992153436 0.382870713248849 0.599052541423589 0.455262585543096 -0.239221384748816 -0.384177708067 -0.299155671149492 -0.543330313172191 -0.0155241247266531 0.360490294639021 -0.286206795368344 -0.771230115555227 -0.530006413348019"/>
</filter>
<rect fill="red" filter="url(#genid164)" width="32" height="32" x="760" y="10"/>
<filter id="genid165">
<feColorMatrix type="matrix" values="-0.388109432999045 0.528561793733388 -0.998196927364916 0.793255042750388 -0.177649843972176 -0.344203098211437 -0.18434784328565 0.484647074248642 0.556311902124435 -0.175060947425663 0.994881776161492 0.737169030122459 0.326793753542006 0.906166149768978 -0.679787904489785 0.43557293433696 -0.440341176465154 0.520765668246895 -0.266851112712175 0.254476381000131 0.892648045904934 -0.983570273499936 0.197102390229702 -0.848472272511572 -0.476183671504259"/>
</filter>
<rect fill="red" filter="url(#genid165)" width="32" height="32" x="800" y="10"/>
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



