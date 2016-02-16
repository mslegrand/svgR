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
<feColorMatrix type="matrix" values="0.919153803959489 -0.767028076574206 0.574782893061638 0.214233614038676 -0.0691965818405151 0.610449663363397 -0.691724484786391 -0.772054542321712 0.477157607674599 0.138682680670172 -0.692309885751456 -0.528516157530248 -0.505615955218673 -0.830250578932464 0.00791289424523711 0.290654339361936 -0.0529483738355339 0.550061929505318 -0.539973472245038 0.673862142954022 -0.0176467774435878 -0.0359750539064407 -0.0860348311252892 -0.672820019070059 -0.877923239488155"/>
</filter>
<rect fill="red" filter="url(#genid145)" width="32" height="32" x="0" y="10"/>
<filter id="genid146">
<feColorMatrix type="matrix" values="0.747418222483248 0.811134777963161 0.835988501086831 0.0909769297577441 0.241914823185652 -0.270569507032633 0.684003274422139 0.681106788106263 0.181908714585006 -0.658047019969672 0.918180332984775 -0.144760921597481 0.74278533551842 -0.707859749905765 0.503578308504075 0.938337603583932 0.365210592281073 0.668487661518157 -0.697288791183382 -0.137221741490066 -0.816089945379645 -0.125826176255941 0.173391731921583 0.636548870243132 -0.178637604694813"/>
</filter>
<rect fill="red" filter="url(#genid146)" width="32" height="32" x="40" y="10"/>
<filter id="genid147">
<feColorMatrix type="matrix" values="-0.0648878738284111 -0.355999512132257 0.561686063650995 -0.570681646931916 0.113700908143073 0.841765066608787 0.480115701444447 -0.246777547057718 0.534310352988541 -0.430068359710276 0.656099790707231 0.0599465621635318 0.383422303013504 0.321210743393749 -0.580960892140865 -0.985993644222617 0.504437681287527 0.298166507855058 -0.699589792173356 -0.64619674673304 -0.374583988916129 0.255085880402476 -0.403552991803735 -0.860839734785259 0.150101209525019"/>
</filter>
<rect fill="red" filter="url(#genid147)" width="32" height="32" x="80" y="10"/>
<filter id="genid148">
<feColorMatrix type="matrix" values="-0.570878122467548 0.303879639133811 0.0229483474977314 0.438963674474508 -0.66694071656093 0.825433399062604 0.49409295571968 -0.98576735239476 0.548359056934714 -0.895098492503166 -0.407904530409724 0.366448905318975 0.181330268736929 -4.23239544034004e-05 -0.627197334542871 -0.98774351971224 -0.685891247354448 0.426371085457504 0.511834317818284 0.575581686105579 0.0100862858816981 0.178024855442345 -0.729962035547942 0.871375354472548 -0.22481333417818"/>
</filter>
<rect fill="red" filter="url(#genid148)" width="32" height="32" x="120" y="10"/>
<filter id="genid149">
<feColorMatrix type="matrix" values="-0.559409339446574 -0.0187620283104479 0.718915037810802 -0.782014952041209 0.47677707625553 -0.434548237361014 0.294162334874272 0.120326875243336 0.298766667488962 -0.0253872550092638 0.774150960147381 -0.386788788251579 -0.701311094686389 0.444674916565418 -0.0398711366578937 0.280317721422762 0.891147874295712 -0.073616280220449 0.391087024938315 0.852607272099704 0.917237400542945 -0.434797139372677 0.0519473953172565 -0.952165842056274 0.643149096984416"/>
</filter>
<rect fill="red" filter="url(#genid149)" width="32" height="32" x="160" y="10"/>
<filter id="genid150">
<feColorMatrix type="matrix" values="0.844668911769986 -0.569753183983266 -0.625065947882831 -0.118708222638816 0.092418952845037 -0.762497958727181 -0.691732727456838 0.680290890391916 0.24217000650242 -0.331651099957526 -0.233731312677264 -0.275838126428425 0.476075352169573 -0.359351058956236 0.507109725382179 -0.242476250976324 -0.236453674733639 0.985981291159987 -0.560513100586832 -0.678100904449821 0.0883332756347954 0.521319960244 0.960127306636423 0.620353267062455 0.477340495213866"/>
</filter>
<rect fill="red" filter="url(#genid150)" width="32" height="32" x="200" y="10"/>
<filter id="genid151">
<feColorMatrix type="matrix" values="-0.793964111246169 0.491867725271732 -0.802376927342266 0.528303027153015 -0.914624698460102 -0.749452304560691 0.131025843787938 0.409873899072409 0.313742426224053 -0.638800268992782 0.0819731443189085 -0.588625387754291 -0.82324397098273 -0.931090427096933 -0.264608501922339 -0.122162058483809 -0.0112914592027664 -0.728550381958485 0.578911785501987 0.839468013029546 -0.286044523585588 0.235649322159588 0.946427430026233 -0.623897589277476 -0.495303798466921"/>
</filter>
<rect fill="red" filter="url(#genid151)" width="32" height="32" x="240" y="10"/>
<filter id="genid152">
<feColorMatrix type="matrix" values="-0.862107580062002 0.483421863988042 0.396453517489135 0.016491892747581 -0.43296175962314 -0.540944600477815 0.360164923127741 0.982644784729928 -0.880442273337394 -0.732336886227131 -0.945455670822412 -0.491805192548782 -0.154219848103821 -0.684759103227407 -0.020844844635576 -0.169410417322069 0.284445258323103 -0.408269810955971 -0.218770955689251 -0.851673731114715 0.667381969746202 0.0720024551264942 0.768842585384846 0.933432921301574 -0.12027946813032"/>
</filter>
<rect fill="red" filter="url(#genid152)" width="32" height="32" x="280" y="10"/>
<filter id="genid153">
<feColorMatrix type="matrix" values="-0.496646740473807 0.442728769499809 -0.152700326871127 0.218394889961928 -0.319899010006338 -0.173811133485287 0.323000635486096 0.217802449129522 0.693418799899518 -0.587269624695182 0.869998136535287 -0.894556937273592 -0.426746028941125 0.435552667360753 0.0963927996344864 0.741723978891969 0.244883040431887 -0.311956400051713 0.659527216572315 0.535380087327212 0.226290553808212 -0.734839110635221 -0.924499855842441 -0.507848972920328 0.929695839993656"/>
</filter>
<rect fill="red" filter="url(#genid153)" width="32" height="32" x="320" y="10"/>
<filter id="genid154">
<feColorMatrix type="matrix" values="0.618099999148399 -0.933051119558513 0.447131182998419 0.541130990255624 -0.0227516139857471 -0.00343904364854097 -0.398458200972527 0.578371381387115 0.415699841920286 0.464197638910264 0.954329013358802 0.691189404577017 -0.128118533175439 0.0383826172910631 0.503080151043832 0.706086476799101 0.967708104290068 0.887642378453165 0.685104736126959 0.0131255313754082 -0.0343534708954394 0.814757288899273 0.251037422101945 0.818761852104217 0.378054915927351"/>
</filter>
<rect fill="red" filter="url(#genid154)" width="32" height="32" x="360" y="10"/>
<filter id="genid155">
<feColorMatrix type="matrix" values="0.0502252103760839 -0.890475560911 -0.424263190943748 -0.974411944393069 0.208783531095833 -0.126809356268495 0.83273650938645 0.146431479603052 -0.398391657043248 0.619577660225332 -0.623315701261163 -0.358420037198812 -0.740138488821685 -0.488897303119302 0.81848830729723 0.439436229877174 -0.837103742174804 0.977219386957586 -0.557594619691372 -0.653421659953892 0.619548765942454 -0.148720758967102 0.524514707736671 -0.491300101857632 -0.81468852236867"/>
</filter>
<rect fill="red" filter="url(#genid155)" width="32" height="32" x="400" y="10"/>
<filter id="genid156">
<feColorMatrix type="matrix" values="0.103187000378966 0.646612463984638 -0.512694464065135 0.677681373432279 -0.905842338688672 -0.128230402246118 -0.543126893695444 0.695541961118579 0.674298723228276 0.477460864931345 0.00771992420777678 -0.55999646242708 -0.79124865680933 0.132421982008964 0.197408752981573 0.100491082295775 -0.220557841006666 0.290727696847171 -0.412559330463409 -0.00715551525354385 -0.448060937225819 -0.381587136071175 -0.274761923123151 0.745541325304657 0.873310806229711"/>
</filter>
<rect fill="red" filter="url(#genid156)" width="32" height="32" x="440" y="10"/>
<filter id="genid157">
<feColorMatrix type="matrix" values="0.599075340665877 0.0323748211376369 0.501177207101136 -0.399548253975809 -0.755793084856123 0.613630185369402 0.644806182943285 0.977433180902153 -0.15075009688735 -0.317344488576055 -0.000240809749811888 0.687087879981846 -0.602899432647973 -0.822647063061595 -0.0301348487846553 -0.67257621511817 -0.436668354086578 -0.395848002284765 -0.263275979552418 -0.935644545126706 0.130052390042692 -0.638436637353152 -0.468447732273489 -0.439314228016883 -0.699630069546402"/>
</filter>
<rect fill="red" filter="url(#genid157)" width="32" height="32" x="480" y="10"/>
<filter id="genid158">
<feColorMatrix type="matrix" values="0.818500670138747 0.841938470955938 0.0278110909275711 -0.790842217858881 0.642959660850465 -0.563554896041751 0.369370606727898 -0.656190995592624 0.526884629856795 -0.765373702161014 0.988579378463328 -0.935187065508217 -0.527753558475524 -0.955098588485271 -0.0460761655122042 0.0914475787431002 0.14590414846316 0.810961170587689 0.790481958538294 0.645695536397398 -0.798707638401538 -0.611129227094352 -0.37997984373942 -0.0660088709555566 0.586358478292823"/>
</filter>
<rect fill="red" filter="url(#genid158)" width="32" height="32" x="520" y="10"/>
<filter id="genid159">
<feColorMatrix type="matrix" values="-0.255563938524574 -0.179361877031624 0.558979661669582 -0.156947018112987 -0.882014619186521 -0.482610153034329 0.787393681704998 -0.283971143420786 -0.457105292472988 0.220042492263019 -0.834876144770533 0.518870647065341 0.63525042263791 0.368817875161767 -0.876914591528475 -0.652014864608645 -0.382506032008678 0.994014511816204 0.0629437314346433 0.389867973979563 0.612001385074109 -0.098343946505338 -0.75688337162137 -0.965770773589611 -0.373188731260598"/>
</filter>
<rect fill="red" filter="url(#genid159)" width="32" height="32" x="560" y="10"/>
<filter id="genid160">
<feColorMatrix type="matrix" values="0.476401625201106 0.406854068860412 0.9543910860084 -0.845607405062765 -0.524277800228447 -0.910934820305556 0.737038508523256 -0.0580148040316999 -0.649985971394926 0.73273460753262 -0.437364186625928 -0.304533603135496 -0.427390640135854 0.284450016915798 -0.227536286227405 0.677494907286018 -0.768461163155735 -0.600081551354378 0.791582880076021 -0.818749263882637 -0.756359221879393 0.880208229180425 -0.852954481262714 -0.856366333086044 -0.875659061595798"/>
</filter>
<rect fill="red" filter="url(#genid160)" width="32" height="32" x="600" y="10"/>
<filter id="genid161">
<feColorMatrix type="matrix" values="-0.241739801131189 -0.722237234935164 -0.165323863737285 -0.564620376098901 0.491880246438086 0.450365765951574 0.509617371484637 0.490577148273587 -0.618832796346396 -0.887147958856076 0.981055639218539 0.203048637602478 -0.739518263842911 0.722563039045781 0.62047940865159 -0.882189218420535 0.993304995819926 0.35073985112831 -0.281341109890491 -0.453180802520365 -0.756128860637546 -0.369017166085541 0.340961524285376 0.97432307805866 0.585842608939856"/>
</filter>
<rect fill="red" filter="url(#genid161)" width="32" height="32" x="640" y="10"/>
<filter id="genid162">
<feColorMatrix type="matrix" values="-0.6389194522053 -0.542960260994732 0.493686039466411 0.694271469023079 0.580565482378006 0.891330507118255 -0.971415598411113 0.210755276959389 0.682963368482888 -0.64963853918016 -0.741782597266138 -0.16885056020692 0.886073905974627 -0.580913598183542 0.302203966770321 0.603325596544892 -0.626166663598269 -0.356877475976944 0.767450429964811 0.680819139350206 -0.726155273150653 -0.723065461032093 -0.196659550536424 0.605980698019266 -0.71043291548267"/>
</filter>
<rect fill="red" filter="url(#genid162)" width="32" height="32" x="680" y="10"/>
<filter id="genid163">
<feColorMatrix type="matrix" values="-0.268391554243863 -0.428526774048805 0.123782106675208 -0.974125180393457 0.948706320021302 0.669377969577909 0.659233168698847 0.320430395193398 -0.93664043257013 0.294807294383645 0.608598012011498 0.662716103717685 0.817537770606577 -0.608413871377707 0.71588832559064 0.578708171844482 -0.387288290541619 -0.985081617254764 0.158042225986719 0.0530699109658599 0.870567386504263 -0.455579950008541 -0.32227545324713 -0.571802521590143 -0.577554046176374"/>
</filter>
<rect fill="red" filter="url(#genid163)" width="32" height="32" x="720" y="10"/>
<filter id="genid164">
<feColorMatrix type="matrix" values="-0.883332834579051 -0.225328248459846 -0.515189293771982 0.908005414064974 0.362373362760991 -0.53620128845796 0.141985340509564 0.279925983399153 0.616953057702631 0.794226149097085 0.97608958138153 0.221857705619186 -0.526681801769882 0.483734811656177 0.455449959263206 -0.852238457184285 0.650114202871919 0.466279041022062 -0.628817254211754 -0.442709900904447 -0.87161923898384 -0.88975225482136 0.536447123624384 0.843477216083556 -0.785743418615311"/>
</filter>
<rect fill="red" filter="url(#genid164)" width="32" height="32" x="760" y="10"/>
<filter id="genid165">
<feColorMatrix type="matrix" values="0.545368977356702 0.0527952183037996 -0.742627877742052 -0.0866442364640534 0.0825814269483089 -0.0888227964751422 -0.871309385634959 0.744711306411773 0.263844256289303 -0.466298446059227 0.398145166225731 -0.368699396029115 0.122775395400822 0.495051624253392 -0.561199083924294 -0.267583566717803 -0.818338279146701 -0.830047931522131 -0.879461912438273 0.836436228826642 -0.477362111676484 -0.705397829879075 -0.934553062543273 -0.577760289888829 0.95362893352285"/>
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



