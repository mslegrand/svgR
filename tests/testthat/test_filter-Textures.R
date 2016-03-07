context("filter-Textures")


assign("count", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-filter-Textures-1", {
WH=c(800, 100) # window rect
svgR( wh=WH,
      use(
        filter=filter(
          feTurbulence(baseFrequency=0.1, numOctaves=2 ) 
        )
      )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="100">
<filter id="genid2">
<feTurbulence baseFrequency="0.1" numOctaves="2"/>
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
test_that("test-filter-Textures-2", {
WH=c(800, 880) # window rect
N<-99
bfreq<-1:N * .003
svgR( wh=WH,
  text('Base frequencey Effects', xy=c(WH[1]/2, 20)),
  lapply( 1:N, function(i){
    x<-((i-1)%%11)*70
    y<-(floor((i-1)/11))*90+50
    g(
      use( filter=filter( xy=c(x,y), wh=c(60,60),
          feTurbulence(baseFrequency=bfreq[i], numOctaves=2) 
        ) ),
      text(bfreq[i], xy=c(x,y-10))

    )
  })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="880">
<text x="400" y="20">Base frequencey Effects</text>
<g>
<filter width="60" height="60" x="0" y="50" id="genid3">
<feTurbulence baseFrequency="0.003" numOctaves="2"/>
</filter>
<use filter="url(#genid3)"/>
<text x="0" y="40">0.003</text>
</g>
<g>
<filter width="60" height="60" x="70" y="50" id="genid4">
<feTurbulence baseFrequency="0.006" numOctaves="2"/>
</filter>
<use filter="url(#genid4)"/>
<text x="70" y="40">0.006</text>
</g>
<g>
<filter width="60" height="60" x="140" y="50" id="genid5">
<feTurbulence baseFrequency="0.009" numOctaves="2"/>
</filter>
<use filter="url(#genid5)"/>
<text x="140" y="40">0.009</text>
</g>
<g>
<filter width="60" height="60" x="210" y="50" id="genid6">
<feTurbulence baseFrequency="0.012" numOctaves="2"/>
</filter>
<use filter="url(#genid6)"/>
<text x="210" y="40">0.012</text>
</g>
<g>
<filter width="60" height="60" x="280" y="50" id="genid7">
<feTurbulence baseFrequency="0.015" numOctaves="2"/>
</filter>
<use filter="url(#genid7)"/>
<text x="280" y="40">0.015</text>
</g>
<g>
<filter width="60" height="60" x="350" y="50" id="genid8">
<feTurbulence baseFrequency="0.018" numOctaves="2"/>
</filter>
<use filter="url(#genid8)"/>
<text x="350" y="40">0.018</text>
</g>
<g>
<filter width="60" height="60" x="420" y="50" id="genid9">
<feTurbulence baseFrequency="0.021" numOctaves="2"/>
</filter>
<use filter="url(#genid9)"/>
<text x="420" y="40">0.021</text>
</g>
<g>
<filter width="60" height="60" x="490" y="50" id="genid10">
<feTurbulence baseFrequency="0.024" numOctaves="2"/>
</filter>
<use filter="url(#genid10)"/>
<text x="490" y="40">0.024</text>
</g>
<g>
<filter width="60" height="60" x="560" y="50" id="genid11">
<feTurbulence baseFrequency="0.027" numOctaves="2"/>
</filter>
<use filter="url(#genid11)"/>
<text x="560" y="40">0.027</text>
</g>
<g>
<filter width="60" height="60" x="630" y="50" id="genid12">
<feTurbulence baseFrequency="0.03" numOctaves="2"/>
</filter>
<use filter="url(#genid12)"/>
<text x="630" y="40">0.03</text>
</g>
<g>
<filter width="60" height="60" x="700" y="50" id="genid13">
<feTurbulence baseFrequency="0.033" numOctaves="2"/>
</filter>
<use filter="url(#genid13)"/>
<text x="700" y="40">0.033</text>
</g>
<g>
<filter width="60" height="60" x="0" y="140" id="genid14">
<feTurbulence baseFrequency="0.036" numOctaves="2"/>
</filter>
<use filter="url(#genid14)"/>
<text x="0" y="130">0.036</text>
</g>
<g>
<filter width="60" height="60" x="70" y="140" id="genid15">
<feTurbulence baseFrequency="0.039" numOctaves="2"/>
</filter>
<use filter="url(#genid15)"/>
<text x="70" y="130">0.039</text>
</g>
<g>
<filter width="60" height="60" x="140" y="140" id="genid16">
<feTurbulence baseFrequency="0.042" numOctaves="2"/>
</filter>
<use filter="url(#genid16)"/>
<text x="140" y="130">0.042</text>
</g>
<g>
<filter width="60" height="60" x="210" y="140" id="genid17">
<feTurbulence baseFrequency="0.045" numOctaves="2"/>
</filter>
<use filter="url(#genid17)"/>
<text x="210" y="130">0.045</text>
</g>
<g>
<filter width="60" height="60" x="280" y="140" id="genid18">
<feTurbulence baseFrequency="0.048" numOctaves="2"/>
</filter>
<use filter="url(#genid18)"/>
<text x="280" y="130">0.048</text>
</g>
<g>
<filter width="60" height="60" x="350" y="140" id="genid19">
<feTurbulence baseFrequency="0.051" numOctaves="2"/>
</filter>
<use filter="url(#genid19)"/>
<text x="350" y="130">0.051</text>
</g>
<g>
<filter width="60" height="60" x="420" y="140" id="genid20">
<feTurbulence baseFrequency="0.054" numOctaves="2"/>
</filter>
<use filter="url(#genid20)"/>
<text x="420" y="130">0.054</text>
</g>
<g>
<filter width="60" height="60" x="490" y="140" id="genid21">
<feTurbulence baseFrequency="0.057" numOctaves="2"/>
</filter>
<use filter="url(#genid21)"/>
<text x="490" y="130">0.057</text>
</g>
<g>
<filter width="60" height="60" x="560" y="140" id="genid22">
<feTurbulence baseFrequency="0.06" numOctaves="2"/>
</filter>
<use filter="url(#genid22)"/>
<text x="560" y="130">0.06</text>
</g>
<g>
<filter width="60" height="60" x="630" y="140" id="genid23">
<feTurbulence baseFrequency="0.063" numOctaves="2"/>
</filter>
<use filter="url(#genid23)"/>
<text x="630" y="130">0.063</text>
</g>
<g>
<filter width="60" height="60" x="700" y="140" id="genid24">
<feTurbulence baseFrequency="0.066" numOctaves="2"/>
</filter>
<use filter="url(#genid24)"/>
<text x="700" y="130">0.066</text>
</g>
<g>
<filter width="60" height="60" x="0" y="230" id="genid25">
<feTurbulence baseFrequency="0.069" numOctaves="2"/>
</filter>
<use filter="url(#genid25)"/>
<text x="0" y="220">0.069</text>
</g>
<g>
<filter width="60" height="60" x="70" y="230" id="genid26">
<feTurbulence baseFrequency="0.072" numOctaves="2"/>
</filter>
<use filter="url(#genid26)"/>
<text x="70" y="220">0.072</text>
</g>
<g>
<filter width="60" height="60" x="140" y="230" id="genid27">
<feTurbulence baseFrequency="0.075" numOctaves="2"/>
</filter>
<use filter="url(#genid27)"/>
<text x="140" y="220">0.075</text>
</g>
<g>
<filter width="60" height="60" x="210" y="230" id="genid28">
<feTurbulence baseFrequency="0.078" numOctaves="2"/>
</filter>
<use filter="url(#genid28)"/>
<text x="210" y="220">0.078</text>
</g>
<g>
<filter width="60" height="60" x="280" y="230" id="genid29">
<feTurbulence baseFrequency="0.081" numOctaves="2"/>
</filter>
<use filter="url(#genid29)"/>
<text x="280" y="220">0.081</text>
</g>
<g>
<filter width="60" height="60" x="350" y="230" id="genid30">
<feTurbulence baseFrequency="0.084" numOctaves="2"/>
</filter>
<use filter="url(#genid30)"/>
<text x="350" y="220">0.084</text>
</g>
<g>
<filter width="60" height="60" x="420" y="230" id="genid31">
<feTurbulence baseFrequency="0.087" numOctaves="2"/>
</filter>
<use filter="url(#genid31)"/>
<text x="420" y="220">0.087</text>
</g>
<g>
<filter width="60" height="60" x="490" y="230" id="genid32">
<feTurbulence baseFrequency="0.09" numOctaves="2"/>
</filter>
<use filter="url(#genid32)"/>
<text x="490" y="220">0.09</text>
</g>
<g>
<filter width="60" height="60" x="560" y="230" id="genid33">
<feTurbulence baseFrequency="0.093" numOctaves="2"/>
</filter>
<use filter="url(#genid33)"/>
<text x="560" y="220">0.093</text>
</g>
<g>
<filter width="60" height="60" x="630" y="230" id="genid34">
<feTurbulence baseFrequency="0.096" numOctaves="2"/>
</filter>
<use filter="url(#genid34)"/>
<text x="630" y="220">0.096</text>
</g>
<g>
<filter width="60" height="60" x="700" y="230" id="genid35">
<feTurbulence baseFrequency="0.099" numOctaves="2"/>
</filter>
<use filter="url(#genid35)"/>
<text x="700" y="220">0.099</text>
</g>
<g>
<filter width="60" height="60" x="0" y="320" id="genid36">
<feTurbulence baseFrequency="0.102" numOctaves="2"/>
</filter>
<use filter="url(#genid36)"/>
<text x="0" y="310">0.102</text>
</g>
<g>
<filter width="60" height="60" x="70" y="320" id="genid37">
<feTurbulence baseFrequency="0.105" numOctaves="2"/>
</filter>
<use filter="url(#genid37)"/>
<text x="70" y="310">0.105</text>
</g>
<g>
<filter width="60" height="60" x="140" y="320" id="genid38">
<feTurbulence baseFrequency="0.108" numOctaves="2"/>
</filter>
<use filter="url(#genid38)"/>
<text x="140" y="310">0.108</text>
</g>
<g>
<filter width="60" height="60" x="210" y="320" id="genid39">
<feTurbulence baseFrequency="0.111" numOctaves="2"/>
</filter>
<use filter="url(#genid39)"/>
<text x="210" y="310">0.111</text>
</g>
<g>
<filter width="60" height="60" x="280" y="320" id="genid40">
<feTurbulence baseFrequency="0.114" numOctaves="2"/>
</filter>
<use filter="url(#genid40)"/>
<text x="280" y="310">0.114</text>
</g>
<g>
<filter width="60" height="60" x="350" y="320" id="genid41">
<feTurbulence baseFrequency="0.117" numOctaves="2"/>
</filter>
<use filter="url(#genid41)"/>
<text x="350" y="310">0.117</text>
</g>
<g>
<filter width="60" height="60" x="420" y="320" id="genid42">
<feTurbulence baseFrequency="0.12" numOctaves="2"/>
</filter>
<use filter="url(#genid42)"/>
<text x="420" y="310">0.12</text>
</g>
<g>
<filter width="60" height="60" x="490" y="320" id="genid43">
<feTurbulence baseFrequency="0.123" numOctaves="2"/>
</filter>
<use filter="url(#genid43)"/>
<text x="490" y="310">0.123</text>
</g>
<g>
<filter width="60" height="60" x="560" y="320" id="genid44">
<feTurbulence baseFrequency="0.126" numOctaves="2"/>
</filter>
<use filter="url(#genid44)"/>
<text x="560" y="310">0.126</text>
</g>
<g>
<filter width="60" height="60" x="630" y="320" id="genid45">
<feTurbulence baseFrequency="0.129" numOctaves="2"/>
</filter>
<use filter="url(#genid45)"/>
<text x="630" y="310">0.129</text>
</g>
<g>
<filter width="60" height="60" x="700" y="320" id="genid46">
<feTurbulence baseFrequency="0.132" numOctaves="2"/>
</filter>
<use filter="url(#genid46)"/>
<text x="700" y="310">0.132</text>
</g>
<g>
<filter width="60" height="60" x="0" y="410" id="genid47">
<feTurbulence baseFrequency="0.135" numOctaves="2"/>
</filter>
<use filter="url(#genid47)"/>
<text x="0" y="400">0.135</text>
</g>
<g>
<filter width="60" height="60" x="70" y="410" id="genid48">
<feTurbulence baseFrequency="0.138" numOctaves="2"/>
</filter>
<use filter="url(#genid48)"/>
<text x="70" y="400">0.138</text>
</g>
<g>
<filter width="60" height="60" x="140" y="410" id="genid49">
<feTurbulence baseFrequency="0.141" numOctaves="2"/>
</filter>
<use filter="url(#genid49)"/>
<text x="140" y="400">0.141</text>
</g>
<g>
<filter width="60" height="60" x="210" y="410" id="genid50">
<feTurbulence baseFrequency="0.144" numOctaves="2"/>
</filter>
<use filter="url(#genid50)"/>
<text x="210" y="400">0.144</text>
</g>
<g>
<filter width="60" height="60" x="280" y="410" id="genid51">
<feTurbulence baseFrequency="0.147" numOctaves="2"/>
</filter>
<use filter="url(#genid51)"/>
<text x="280" y="400">0.147</text>
</g>
<g>
<filter width="60" height="60" x="350" y="410" id="genid52">
<feTurbulence baseFrequency="0.15" numOctaves="2"/>
</filter>
<use filter="url(#genid52)"/>
<text x="350" y="400">0.15</text>
</g>
<g>
<filter width="60" height="60" x="420" y="410" id="genid53">
<feTurbulence baseFrequency="0.153" numOctaves="2"/>
</filter>
<use filter="url(#genid53)"/>
<text x="420" y="400">0.153</text>
</g>
<g>
<filter width="60" height="60" x="490" y="410" id="genid54">
<feTurbulence baseFrequency="0.156" numOctaves="2"/>
</filter>
<use filter="url(#genid54)"/>
<text x="490" y="400">0.156</text>
</g>
<g>
<filter width="60" height="60" x="560" y="410" id="genid55">
<feTurbulence baseFrequency="0.159" numOctaves="2"/>
</filter>
<use filter="url(#genid55)"/>
<text x="560" y="400">0.159</text>
</g>
<g>
<filter width="60" height="60" x="630" y="410" id="genid56">
<feTurbulence baseFrequency="0.162" numOctaves="2"/>
</filter>
<use filter="url(#genid56)"/>
<text x="630" y="400">0.162</text>
</g>
<g>
<filter width="60" height="60" x="700" y="410" id="genid57">
<feTurbulence baseFrequency="0.165" numOctaves="2"/>
</filter>
<use filter="url(#genid57)"/>
<text x="700" y="400">0.165</text>
</g>
<g>
<filter width="60" height="60" x="0" y="500" id="genid58">
<feTurbulence baseFrequency="0.168" numOctaves="2"/>
</filter>
<use filter="url(#genid58)"/>
<text x="0" y="490">0.168</text>
</g>
<g>
<filter width="60" height="60" x="70" y="500" id="genid59">
<feTurbulence baseFrequency="0.171" numOctaves="2"/>
</filter>
<use filter="url(#genid59)"/>
<text x="70" y="490">0.171</text>
</g>
<g>
<filter width="60" height="60" x="140" y="500" id="genid60">
<feTurbulence baseFrequency="0.174" numOctaves="2"/>
</filter>
<use filter="url(#genid60)"/>
<text x="140" y="490">0.174</text>
</g>
<g>
<filter width="60" height="60" x="210" y="500" id="genid61">
<feTurbulence baseFrequency="0.177" numOctaves="2"/>
</filter>
<use filter="url(#genid61)"/>
<text x="210" y="490">0.177</text>
</g>
<g>
<filter width="60" height="60" x="280" y="500" id="genid62">
<feTurbulence baseFrequency="0.18" numOctaves="2"/>
</filter>
<use filter="url(#genid62)"/>
<text x="280" y="490">0.18</text>
</g>
<g>
<filter width="60" height="60" x="350" y="500" id="genid63">
<feTurbulence baseFrequency="0.183" numOctaves="2"/>
</filter>
<use filter="url(#genid63)"/>
<text x="350" y="490">0.183</text>
</g>
<g>
<filter width="60" height="60" x="420" y="500" id="genid64">
<feTurbulence baseFrequency="0.186" numOctaves="2"/>
</filter>
<use filter="url(#genid64)"/>
<text x="420" y="490">0.186</text>
</g>
<g>
<filter width="60" height="60" x="490" y="500" id="genid65">
<feTurbulence baseFrequency="0.189" numOctaves="2"/>
</filter>
<use filter="url(#genid65)"/>
<text x="490" y="490">0.189</text>
</g>
<g>
<filter width="60" height="60" x="560" y="500" id="genid66">
<feTurbulence baseFrequency="0.192" numOctaves="2"/>
</filter>
<use filter="url(#genid66)"/>
<text x="560" y="490">0.192</text>
</g>
<g>
<filter width="60" height="60" x="630" y="500" id="genid67">
<feTurbulence baseFrequency="0.195" numOctaves="2"/>
</filter>
<use filter="url(#genid67)"/>
<text x="630" y="490">0.195</text>
</g>
<g>
<filter width="60" height="60" x="700" y="500" id="genid68">
<feTurbulence baseFrequency="0.198" numOctaves="2"/>
</filter>
<use filter="url(#genid68)"/>
<text x="700" y="490">0.198</text>
</g>
<g>
<filter width="60" height="60" x="0" y="590" id="genid69">
<feTurbulence baseFrequency="0.201" numOctaves="2"/>
</filter>
<use filter="url(#genid69)"/>
<text x="0" y="580">0.201</text>
</g>
<g>
<filter width="60" height="60" x="70" y="590" id="genid70">
<feTurbulence baseFrequency="0.204" numOctaves="2"/>
</filter>
<use filter="url(#genid70)"/>
<text x="70" y="580">0.204</text>
</g>
<g>
<filter width="60" height="60" x="140" y="590" id="genid71">
<feTurbulence baseFrequency="0.207" numOctaves="2"/>
</filter>
<use filter="url(#genid71)"/>
<text x="140" y="580">0.207</text>
</g>
<g>
<filter width="60" height="60" x="210" y="590" id="genid72">
<feTurbulence baseFrequency="0.21" numOctaves="2"/>
</filter>
<use filter="url(#genid72)"/>
<text x="210" y="580">0.21</text>
</g>
<g>
<filter width="60" height="60" x="280" y="590" id="genid73">
<feTurbulence baseFrequency="0.213" numOctaves="2"/>
</filter>
<use filter="url(#genid73)"/>
<text x="280" y="580">0.213</text>
</g>
<g>
<filter width="60" height="60" x="350" y="590" id="genid74">
<feTurbulence baseFrequency="0.216" numOctaves="2"/>
</filter>
<use filter="url(#genid74)"/>
<text x="350" y="580">0.216</text>
</g>
<g>
<filter width="60" height="60" x="420" y="590" id="genid75">
<feTurbulence baseFrequency="0.219" numOctaves="2"/>
</filter>
<use filter="url(#genid75)"/>
<text x="420" y="580">0.219</text>
</g>
<g>
<filter width="60" height="60" x="490" y="590" id="genid76">
<feTurbulence baseFrequency="0.222" numOctaves="2"/>
</filter>
<use filter="url(#genid76)"/>
<text x="490" y="580">0.222</text>
</g>
<g>
<filter width="60" height="60" x="560" y="590" id="genid77">
<feTurbulence baseFrequency="0.225" numOctaves="2"/>
</filter>
<use filter="url(#genid77)"/>
<text x="560" y="580">0.225</text>
</g>
<g>
<filter width="60" height="60" x="630" y="590" id="genid78">
<feTurbulence baseFrequency="0.228" numOctaves="2"/>
</filter>
<use filter="url(#genid78)"/>
<text x="630" y="580">0.228</text>
</g>
<g>
<filter width="60" height="60" x="700" y="590" id="genid79">
<feTurbulence baseFrequency="0.231" numOctaves="2"/>
</filter>
<use filter="url(#genid79)"/>
<text x="700" y="580">0.231</text>
</g>
<g>
<filter width="60" height="60" x="0" y="680" id="genid80">
<feTurbulence baseFrequency="0.234" numOctaves="2"/>
</filter>
<use filter="url(#genid80)"/>
<text x="0" y="670">0.234</text>
</g>
<g>
<filter width="60" height="60" x="70" y="680" id="genid81">
<feTurbulence baseFrequency="0.237" numOctaves="2"/>
</filter>
<use filter="url(#genid81)"/>
<text x="70" y="670">0.237</text>
</g>
<g>
<filter width="60" height="60" x="140" y="680" id="genid82">
<feTurbulence baseFrequency="0.24" numOctaves="2"/>
</filter>
<use filter="url(#genid82)"/>
<text x="140" y="670">0.24</text>
</g>
<g>
<filter width="60" height="60" x="210" y="680" id="genid83">
<feTurbulence baseFrequency="0.243" numOctaves="2"/>
</filter>
<use filter="url(#genid83)"/>
<text x="210" y="670">0.243</text>
</g>
<g>
<filter width="60" height="60" x="280" y="680" id="genid84">
<feTurbulence baseFrequency="0.246" numOctaves="2"/>
</filter>
<use filter="url(#genid84)"/>
<text x="280" y="670">0.246</text>
</g>
<g>
<filter width="60" height="60" x="350" y="680" id="genid85">
<feTurbulence baseFrequency="0.249" numOctaves="2"/>
</filter>
<use filter="url(#genid85)"/>
<text x="350" y="670">0.249</text>
</g>
<g>
<filter width="60" height="60" x="420" y="680" id="genid86">
<feTurbulence baseFrequency="0.252" numOctaves="2"/>
</filter>
<use filter="url(#genid86)"/>
<text x="420" y="670">0.252</text>
</g>
<g>
<filter width="60" height="60" x="490" y="680" id="genid87">
<feTurbulence baseFrequency="0.255" numOctaves="2"/>
</filter>
<use filter="url(#genid87)"/>
<text x="490" y="670">0.255</text>
</g>
<g>
<filter width="60" height="60" x="560" y="680" id="genid88">
<feTurbulence baseFrequency="0.258" numOctaves="2"/>
</filter>
<use filter="url(#genid88)"/>
<text x="560" y="670">0.258</text>
</g>
<g>
<filter width="60" height="60" x="630" y="680" id="genid89">
<feTurbulence baseFrequency="0.261" numOctaves="2"/>
</filter>
<use filter="url(#genid89)"/>
<text x="630" y="670">0.261</text>
</g>
<g>
<filter width="60" height="60" x="700" y="680" id="genid90">
<feTurbulence baseFrequency="0.264" numOctaves="2"/>
</filter>
<use filter="url(#genid90)"/>
<text x="700" y="670">0.264</text>
</g>
<g>
<filter width="60" height="60" x="0" y="770" id="genid91">
<feTurbulence baseFrequency="0.267" numOctaves="2"/>
</filter>
<use filter="url(#genid91)"/>
<text x="0" y="760">0.267</text>
</g>
<g>
<filter width="60" height="60" x="70" y="770" id="genid92">
<feTurbulence baseFrequency="0.27" numOctaves="2"/>
</filter>
<use filter="url(#genid92)"/>
<text x="70" y="760">0.27</text>
</g>
<g>
<filter width="60" height="60" x="140" y="770" id="genid93">
<feTurbulence baseFrequency="0.273" numOctaves="2"/>
</filter>
<use filter="url(#genid93)"/>
<text x="140" y="760">0.273</text>
</g>
<g>
<filter width="60" height="60" x="210" y="770" id="genid94">
<feTurbulence baseFrequency="0.276" numOctaves="2"/>
</filter>
<use filter="url(#genid94)"/>
<text x="210" y="760">0.276</text>
</g>
<g>
<filter width="60" height="60" x="280" y="770" id="genid95">
<feTurbulence baseFrequency="0.279" numOctaves="2"/>
</filter>
<use filter="url(#genid95)"/>
<text x="280" y="760">0.279</text>
</g>
<g>
<filter width="60" height="60" x="350" y="770" id="genid96">
<feTurbulence baseFrequency="0.282" numOctaves="2"/>
</filter>
<use filter="url(#genid96)"/>
<text x="350" y="760">0.282</text>
</g>
<g>
<filter width="60" height="60" x="420" y="770" id="genid97">
<feTurbulence baseFrequency="0.285" numOctaves="2"/>
</filter>
<use filter="url(#genid97)"/>
<text x="420" y="760">0.285</text>
</g>
<g>
<filter width="60" height="60" x="490" y="770" id="genid98">
<feTurbulence baseFrequency="0.288" numOctaves="2"/>
</filter>
<use filter="url(#genid98)"/>
<text x="490" y="760">0.288</text>
</g>
<g>
<filter width="60" height="60" x="560" y="770" id="genid99">
<feTurbulence baseFrequency="0.291" numOctaves="2"/>
</filter>
<use filter="url(#genid99)"/>
<text x="560" y="760">0.291</text>
</g>
<g>
<filter width="60" height="60" x="630" y="770" id="genid100">
<feTurbulence baseFrequency="0.294" numOctaves="2"/>
</filter>
<use filter="url(#genid100)"/>
<text x="630" y="760">0.294</text>
</g>
<g>
<filter width="60" height="60" x="700" y="770" id="genid101">
<feTurbulence baseFrequency="0.297" numOctaves="2"/>
</filter>
<use filter="url(#genid101)"/>
<text x="700" y="760">0.297</text>
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
test_that("test-filter-Textures-3", {
WH=c(800, 800) # window rect
baseFeqRng=1:6
numOctRng=1:6
indx<-expand.grid(baseFeqRng, numOctRng)
xp<-function(i)(i-1)*130+50
yp<-function(j)(j-1)*100+50
svgR( wh=WH,
    text("x-baseFrequency", xy=c(WH[1]/2,10)),
    text("y-baseFrequency", xy=c(10,WH[2]/2), writing.mode='tb'),
    lapply(baseFeqRng, function(i){text(0.005*(i-1), xy=c(xp(i),35))}),
    lapply(numOctRng, function(j){text(0.005*(j-1), xy=c(20,yp(j)+50))}),
    apply(indx, 1, function(z){
      i=z[1];j=z[2]
      use(filter=filter( xy=c(xp(i),yp(j)),  wh=c(120,90),
            feTurbulence(baseFrequency=0.005*c(i-1,j-1), numOctaves=1) 
          )
        ) 
      })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="800">
<text x="400" y="10">x-baseFrequency</text>
<text writing-mode="tb" x="10" y="400">y-baseFrequency</text>
<text x="50" y="35">0</text>
<text x="180" y="35">0.005</text>
<text x="310" y="35">0.01</text>
<text x="440" y="35">0.015</text>
<text x="570" y="35">0.02</text>
<text x="700" y="35">0.025</text>
<text x="20" y="100">0</text>
<text x="20" y="200">0.005</text>
<text x="20" y="300">0.01</text>
<text x="20" y="400">0.015</text>
<text x="20" y="500">0.02</text>
<text x="20" y="600">0.025</text>
<filter width="120" height="90" x="50" y="50" id="genid102">
<feTurbulence baseFrequency="0,0" numOctaves="1"/>
</filter>
<use filter="url(#genid102)"/>
<filter width="120" height="90" x="180" y="50" id="genid103">
<feTurbulence baseFrequency="0.005,0" numOctaves="1"/>
</filter>
<use filter="url(#genid103)"/>
<filter width="120" height="90" x="310" y="50" id="genid104">
<feTurbulence baseFrequency="0.01,0" numOctaves="1"/>
</filter>
<use filter="url(#genid104)"/>
<filter width="120" height="90" x="440" y="50" id="genid105">
<feTurbulence baseFrequency="0.015,0" numOctaves="1"/>
</filter>
<use filter="url(#genid105)"/>
<filter width="120" height="90" x="570" y="50" id="genid106">
<feTurbulence baseFrequency="0.02,0" numOctaves="1"/>
</filter>
<use filter="url(#genid106)"/>
<filter width="120" height="90" x="700" y="50" id="genid107">
<feTurbulence baseFrequency="0.025,0" numOctaves="1"/>
</filter>
<use filter="url(#genid107)"/>
<filter width="120" height="90" x="50" y="150" id="genid108">
<feTurbulence baseFrequency="0,0.005" numOctaves="1"/>
</filter>
<use filter="url(#genid108)"/>
<filter width="120" height="90" x="180" y="150" id="genid109">
<feTurbulence baseFrequency="0.005,0.005" numOctaves="1"/>
</filter>
<use filter="url(#genid109)"/>
<filter width="120" height="90" x="310" y="150" id="genid110">
<feTurbulence baseFrequency="0.01,0.005" numOctaves="1"/>
</filter>
<use filter="url(#genid110)"/>
<filter width="120" height="90" x="440" y="150" id="genid111">
<feTurbulence baseFrequency="0.015,0.005" numOctaves="1"/>
</filter>
<use filter="url(#genid111)"/>
<filter width="120" height="90" x="570" y="150" id="genid112">
<feTurbulence baseFrequency="0.02,0.005" numOctaves="1"/>
</filter>
<use filter="url(#genid112)"/>
<filter width="120" height="90" x="700" y="150" id="genid113">
<feTurbulence baseFrequency="0.025,0.005" numOctaves="1"/>
</filter>
<use filter="url(#genid113)"/>
<filter width="120" height="90" x="50" y="250" id="genid114">
<feTurbulence baseFrequency="0,0.01" numOctaves="1"/>
</filter>
<use filter="url(#genid114)"/>
<filter width="120" height="90" x="180" y="250" id="genid115">
<feTurbulence baseFrequency="0.005,0.01" numOctaves="1"/>
</filter>
<use filter="url(#genid115)"/>
<filter width="120" height="90" x="310" y="250" id="genid116">
<feTurbulence baseFrequency="0.01,0.01" numOctaves="1"/>
</filter>
<use filter="url(#genid116)"/>
<filter width="120" height="90" x="440" y="250" id="genid117">
<feTurbulence baseFrequency="0.015,0.01" numOctaves="1"/>
</filter>
<use filter="url(#genid117)"/>
<filter width="120" height="90" x="570" y="250" id="genid118">
<feTurbulence baseFrequency="0.02,0.01" numOctaves="1"/>
</filter>
<use filter="url(#genid118)"/>
<filter width="120" height="90" x="700" y="250" id="genid119">
<feTurbulence baseFrequency="0.025,0.01" numOctaves="1"/>
</filter>
<use filter="url(#genid119)"/>
<filter width="120" height="90" x="50" y="350" id="genid120">
<feTurbulence baseFrequency="0,0.015" numOctaves="1"/>
</filter>
<use filter="url(#genid120)"/>
<filter width="120" height="90" x="180" y="350" id="genid121">
<feTurbulence baseFrequency="0.005,0.015" numOctaves="1"/>
</filter>
<use filter="url(#genid121)"/>
<filter width="120" height="90" x="310" y="350" id="genid122">
<feTurbulence baseFrequency="0.01,0.015" numOctaves="1"/>
</filter>
<use filter="url(#genid122)"/>
<filter width="120" height="90" x="440" y="350" id="genid123">
<feTurbulence baseFrequency="0.015,0.015" numOctaves="1"/>
</filter>
<use filter="url(#genid123)"/>
<filter width="120" height="90" x="570" y="350" id="genid124">
<feTurbulence baseFrequency="0.02,0.015" numOctaves="1"/>
</filter>
<use filter="url(#genid124)"/>
<filter width="120" height="90" x="700" y="350" id="genid125">
<feTurbulence baseFrequency="0.025,0.015" numOctaves="1"/>
</filter>
<use filter="url(#genid125)"/>
<filter width="120" height="90" x="50" y="450" id="genid126">
<feTurbulence baseFrequency="0,0.02" numOctaves="1"/>
</filter>
<use filter="url(#genid126)"/>
<filter width="120" height="90" x="180" y="450" id="genid127">
<feTurbulence baseFrequency="0.005,0.02" numOctaves="1"/>
</filter>
<use filter="url(#genid127)"/>
<filter width="120" height="90" x="310" y="450" id="genid128">
<feTurbulence baseFrequency="0.01,0.02" numOctaves="1"/>
</filter>
<use filter="url(#genid128)"/>
<filter width="120" height="90" x="440" y="450" id="genid129">
<feTurbulence baseFrequency="0.015,0.02" numOctaves="1"/>
</filter>
<use filter="url(#genid129)"/>
<filter width="120" height="90" x="570" y="450" id="genid130">
<feTurbulence baseFrequency="0.02,0.02" numOctaves="1"/>
</filter>
<use filter="url(#genid130)"/>
<filter width="120" height="90" x="700" y="450" id="genid131">
<feTurbulence baseFrequency="0.025,0.02" numOctaves="1"/>
</filter>
<use filter="url(#genid131)"/>
<filter width="120" height="90" x="50" y="550" id="genid132">
<feTurbulence baseFrequency="0,0.025" numOctaves="1"/>
</filter>
<use filter="url(#genid132)"/>
<filter width="120" height="90" x="180" y="550" id="genid133">
<feTurbulence baseFrequency="0.005,0.025" numOctaves="1"/>
</filter>
<use filter="url(#genid133)"/>
<filter width="120" height="90" x="310" y="550" id="genid134">
<feTurbulence baseFrequency="0.01,0.025" numOctaves="1"/>
</filter>
<use filter="url(#genid134)"/>
<filter width="120" height="90" x="440" y="550" id="genid135">
<feTurbulence baseFrequency="0.015,0.025" numOctaves="1"/>
</filter>
<use filter="url(#genid135)"/>
<filter width="120" height="90" x="570" y="550" id="genid136">
<feTurbulence baseFrequency="0.02,0.025" numOctaves="1"/>
</filter>
<use filter="url(#genid136)"/>
<filter width="120" height="90" x="700" y="550" id="genid137">
<feTurbulence baseFrequency="0.025,0.025" numOctaves="1"/>
</filter>
<use filter="url(#genid137)"/>
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
test_that("test-filter-Textures-4", {
WH=c(800, 1200) # window rect
baseFeqRng=1:5
numOctRng=1:10
indx<-expand.grid(baseFeqRng, numOctRng)
xp<-function(i)(i-1)*140+50
yp<-function(j)(j-1)*100+50
svgR( wh=WH,
    text("baseFrequency", xy=c(WH[1]/2,10)),
    text("numOctaves", xy=c(10,WH[2]/2), writing.mode='tb'),
    lapply(baseFeqRng, function(i){text(.02*i, xy=c(xp(i),35))}),
    lapply(numOctRng, function(j){text(2*j-1, xy=c(20,yp(j)+50))}),
    apply(indx, 1, function(z){
      i=z[1];j=z[2]
      use(filter=filter( xy=c(xp(i),yp(j)),  wh=c(130,90),
            feTurbulence(baseFrequency=.02*i, numOctaves=2*j-1 )
          )
        ) 
      })
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="1200">
<text x="400" y="10">baseFrequency</text>
<text writing-mode="tb" x="10" y="600">numOctaves</text>
<text x="50" y="35">0.02</text>
<text x="190" y="35">0.04</text>
<text x="330" y="35">0.06</text>
<text x="470" y="35">0.08</text>
<text x="610" y="35">0.1</text>
<text x="20" y="100">1</text>
<text x="20" y="200">3</text>
<text x="20" y="300">5</text>
<text x="20" y="400">7</text>
<text x="20" y="500">9</text>
<text x="20" y="600">11</text>
<text x="20" y="700">13</text>
<text x="20" y="800">15</text>
<text x="20" y="900">17</text>
<text x="20" y="1000">19</text>
<filter width="130" height="90" x="50" y="50" id="genid138">
<feTurbulence baseFrequency="0.02" numOctaves="1"/>
</filter>
<use filter="url(#genid138)"/>
<filter width="130" height="90" x="190" y="50" id="genid139">
<feTurbulence baseFrequency="0.04" numOctaves="1"/>
</filter>
<use filter="url(#genid139)"/>
<filter width="130" height="90" x="330" y="50" id="genid140">
<feTurbulence baseFrequency="0.06" numOctaves="1"/>
</filter>
<use filter="url(#genid140)"/>
<filter width="130" height="90" x="470" y="50" id="genid141">
<feTurbulence baseFrequency="0.08" numOctaves="1"/>
</filter>
<use filter="url(#genid141)"/>
<filter width="130" height="90" x="610" y="50" id="genid142">
<feTurbulence baseFrequency="0.1" numOctaves="1"/>
</filter>
<use filter="url(#genid142)"/>
<filter width="130" height="90" x="50" y="150" id="genid143">
<feTurbulence baseFrequency="0.02" numOctaves="3"/>
</filter>
<use filter="url(#genid143)"/>
<filter width="130" height="90" x="190" y="150" id="genid144">
<feTurbulence baseFrequency="0.04" numOctaves="3"/>
</filter>
<use filter="url(#genid144)"/>
<filter width="130" height="90" x="330" y="150" id="genid145">
<feTurbulence baseFrequency="0.06" numOctaves="3"/>
</filter>
<use filter="url(#genid145)"/>
<filter width="130" height="90" x="470" y="150" id="genid146">
<feTurbulence baseFrequency="0.08" numOctaves="3"/>
</filter>
<use filter="url(#genid146)"/>
<filter width="130" height="90" x="610" y="150" id="genid147">
<feTurbulence baseFrequency="0.1" numOctaves="3"/>
</filter>
<use filter="url(#genid147)"/>
<filter width="130" height="90" x="50" y="250" id="genid148">
<feTurbulence baseFrequency="0.02" numOctaves="5"/>
</filter>
<use filter="url(#genid148)"/>
<filter width="130" height="90" x="190" y="250" id="genid149">
<feTurbulence baseFrequency="0.04" numOctaves="5"/>
</filter>
<use filter="url(#genid149)"/>
<filter width="130" height="90" x="330" y="250" id="genid150">
<feTurbulence baseFrequency="0.06" numOctaves="5"/>
</filter>
<use filter="url(#genid150)"/>
<filter width="130" height="90" x="470" y="250" id="genid151">
<feTurbulence baseFrequency="0.08" numOctaves="5"/>
</filter>
<use filter="url(#genid151)"/>
<filter width="130" height="90" x="610" y="250" id="genid152">
<feTurbulence baseFrequency="0.1" numOctaves="5"/>
</filter>
<use filter="url(#genid152)"/>
<filter width="130" height="90" x="50" y="350" id="genid153">
<feTurbulence baseFrequency="0.02" numOctaves="7"/>
</filter>
<use filter="url(#genid153)"/>
<filter width="130" height="90" x="190" y="350" id="genid154">
<feTurbulence baseFrequency="0.04" numOctaves="7"/>
</filter>
<use filter="url(#genid154)"/>
<filter width="130" height="90" x="330" y="350" id="genid155">
<feTurbulence baseFrequency="0.06" numOctaves="7"/>
</filter>
<use filter="url(#genid155)"/>
<filter width="130" height="90" x="470" y="350" id="genid156">
<feTurbulence baseFrequency="0.08" numOctaves="7"/>
</filter>
<use filter="url(#genid156)"/>
<filter width="130" height="90" x="610" y="350" id="genid157">
<feTurbulence baseFrequency="0.1" numOctaves="7"/>
</filter>
<use filter="url(#genid157)"/>
<filter width="130" height="90" x="50" y="450" id="genid158">
<feTurbulence baseFrequency="0.02" numOctaves="9"/>
</filter>
<use filter="url(#genid158)"/>
<filter width="130" height="90" x="190" y="450" id="genid159">
<feTurbulence baseFrequency="0.04" numOctaves="9"/>
</filter>
<use filter="url(#genid159)"/>
<filter width="130" height="90" x="330" y="450" id="genid160">
<feTurbulence baseFrequency="0.06" numOctaves="9"/>
</filter>
<use filter="url(#genid160)"/>
<filter width="130" height="90" x="470" y="450" id="genid161">
<feTurbulence baseFrequency="0.08" numOctaves="9"/>
</filter>
<use filter="url(#genid161)"/>
<filter width="130" height="90" x="610" y="450" id="genid162">
<feTurbulence baseFrequency="0.1" numOctaves="9"/>
</filter>
<use filter="url(#genid162)"/>
<filter width="130" height="90" x="50" y="550" id="genid163">
<feTurbulence baseFrequency="0.02" numOctaves="11"/>
</filter>
<use filter="url(#genid163)"/>
<filter width="130" height="90" x="190" y="550" id="genid164">
<feTurbulence baseFrequency="0.04" numOctaves="11"/>
</filter>
<use filter="url(#genid164)"/>
<filter width="130" height="90" x="330" y="550" id="genid165">
<feTurbulence baseFrequency="0.06" numOctaves="11"/>
</filter>
<use filter="url(#genid165)"/>
<filter width="130" height="90" x="470" y="550" id="genid166">
<feTurbulence baseFrequency="0.08" numOctaves="11"/>
</filter>
<use filter="url(#genid166)"/>
<filter width="130" height="90" x="610" y="550" id="genid167">
<feTurbulence baseFrequency="0.1" numOctaves="11"/>
</filter>
<use filter="url(#genid167)"/>
<filter width="130" height="90" x="50" y="650" id="genid168">
<feTurbulence baseFrequency="0.02" numOctaves="13"/>
</filter>
<use filter="url(#genid168)"/>
<filter width="130" height="90" x="190" y="650" id="genid169">
<feTurbulence baseFrequency="0.04" numOctaves="13"/>
</filter>
<use filter="url(#genid169)"/>
<filter width="130" height="90" x="330" y="650" id="genid170">
<feTurbulence baseFrequency="0.06" numOctaves="13"/>
</filter>
<use filter="url(#genid170)"/>
<filter width="130" height="90" x="470" y="650" id="genid171">
<feTurbulence baseFrequency="0.08" numOctaves="13"/>
</filter>
<use filter="url(#genid171)"/>
<filter width="130" height="90" x="610" y="650" id="genid172">
<feTurbulence baseFrequency="0.1" numOctaves="13"/>
</filter>
<use filter="url(#genid172)"/>
<filter width="130" height="90" x="50" y="750" id="genid173">
<feTurbulence baseFrequency="0.02" numOctaves="15"/>
</filter>
<use filter="url(#genid173)"/>
<filter width="130" height="90" x="190" y="750" id="genid174">
<feTurbulence baseFrequency="0.04" numOctaves="15"/>
</filter>
<use filter="url(#genid174)"/>
<filter width="130" height="90" x="330" y="750" id="genid175">
<feTurbulence baseFrequency="0.06" numOctaves="15"/>
</filter>
<use filter="url(#genid175)"/>
<filter width="130" height="90" x="470" y="750" id="genid176">
<feTurbulence baseFrequency="0.08" numOctaves="15"/>
</filter>
<use filter="url(#genid176)"/>
<filter width="130" height="90" x="610" y="750" id="genid177">
<feTurbulence baseFrequency="0.1" numOctaves="15"/>
</filter>
<use filter="url(#genid177)"/>
<filter width="130" height="90" x="50" y="850" id="genid178">
<feTurbulence baseFrequency="0.02" numOctaves="17"/>
</filter>
<use filter="url(#genid178)"/>
<filter width="130" height="90" x="190" y="850" id="genid179">
<feTurbulence baseFrequency="0.04" numOctaves="17"/>
</filter>
<use filter="url(#genid179)"/>
<filter width="130" height="90" x="330" y="850" id="genid180">
<feTurbulence baseFrequency="0.06" numOctaves="17"/>
</filter>
<use filter="url(#genid180)"/>
<filter width="130" height="90" x="470" y="850" id="genid181">
<feTurbulence baseFrequency="0.08" numOctaves="17"/>
</filter>
<use filter="url(#genid181)"/>
<filter width="130" height="90" x="610" y="850" id="genid182">
<feTurbulence baseFrequency="0.1" numOctaves="17"/>
</filter>
<use filter="url(#genid182)"/>
<filter width="130" height="90" x="50" y="950" id="genid183">
<feTurbulence baseFrequency="0.02" numOctaves="19"/>
</filter>
<use filter="url(#genid183)"/>
<filter width="130" height="90" x="190" y="950" id="genid184">
<feTurbulence baseFrequency="0.04" numOctaves="19"/>
</filter>
<use filter="url(#genid184)"/>
<filter width="130" height="90" x="330" y="950" id="genid185">
<feTurbulence baseFrequency="0.06" numOctaves="19"/>
</filter>
<use filter="url(#genid185)"/>
<filter width="130" height="90" x="470" y="950" id="genid186">
<feTurbulence baseFrequency="0.08" numOctaves="19"/>
</filter>
<use filter="url(#genid186)"/>
<filter width="130" height="90" x="610" y="950" id="genid187">
<feTurbulence baseFrequency="0.1" numOctaves="19"/>
</filter>
<use filter="url(#genid187)"/>
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
test_that("test-filter-Textures-5", {
WH=c(800, 150) # window rect
svgR( wh=WH,
      use(
        filter=filter( xy=c(50,70),wh=c(150,60),
          feTurbulence(type='turbulence', baseFrequency="0.1", numOctaves="2" ) 
        )
      ),
            use(
        filter=filter( xy=c(250,70),wh=c(150,60),
          feTurbulence(type='fractalNoise', baseFrequency="0.1", numOctaves="2" ) 
        )
      ),
      text("turbulence", xy=c(100,65)),
      text("fractalNoise", xy=c(300,65))

)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="150">
<filter width="150" height="60" x="50" y="70" id="genid188">
<feTurbulence type="turbulence" baseFrequency="0.1" numOctaves="2"/>
</filter>
<use filter="url(#genid188)"/>
<filter width="150" height="60" x="250" y="70" id="genid189">
<feTurbulence type="fractalNoise" baseFrequency="0.1" numOctaves="2"/>
</filter>
<use filter="url(#genid189)"/>
<text x="100" y="65">turbulence</text>
<text x="300" y="65">fractalNoise</text>
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
test_that("test-filter-Textures-6", {
  funkyFilter %<c-% function(id, baseFrequency=.01, numOctaves=3, slope=c(4,4,4), seed=100){
    filter( id=id,
            feTurbulence(baseFrequency=baseFrequency, numOctaves=numOctaves, seed=100),
            feComponentTransfer(
              feFuncR(type="linear", slope=slope[1], intercept=-1),
              feFuncG(type="linear", slope=slope[2], intercept=-1),
              feFuncB(type="linear", slope=slope[3], intercept=-1),
              feFuncA(type="linear", slope=0, intercept=1)
            ),
            feColorMatrix(type="saturate")
    )
  }
  

WH=c(800, 800) # window rect
N<-4
dH<-WH[2]/(N+1)
y<-0:(N-1)*dH
ww<-WH[1]-40
svgR( wh=WH,
  lapply(1:N, function(i){
    id=paste0("funky1-",i/N)
    bf<-.02/i
    txt<-paste0('funky filter base frequency=', bf)
    g(
      text(txt, xy=c(20, y[i]+35) ),
      rect(xy=c(20,y[i]+60), wh=c(ww, dH-60 ), 
         filter = funkyFilter(id,  bf))
    )      
  })   
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="800">
<g>
<text x="20" y="35">funky filter base frequency=0.02</text>
<filter id="funky1-0.25">
<feTurbulence baseFrequency="0.02" numOctaves="3" seed="100"/>
<feComponentTransfer>
<feFuncR type="linear" slope="4" intercept="-1"/>
<feFuncG type="linear" slope="4" intercept="-1"/>
<feFuncB type="linear" slope="4" intercept="-1"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
<feColorMatrix type="saturate"/>
</filter>
<rect filter="url(#funky1-0.25)" width="760" height="100" x="20" y="60"/>
</g>
<g>
<text x="20" y="195">funky filter base frequency=0.01</text>
<filter id="funky1-0.5">
<feTurbulence baseFrequency="0.01" numOctaves="3" seed="100"/>
<feComponentTransfer>
<feFuncR type="linear" slope="4" intercept="-1"/>
<feFuncG type="linear" slope="4" intercept="-1"/>
<feFuncB type="linear" slope="4" intercept="-1"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
<feColorMatrix type="saturate"/>
</filter>
<rect filter="url(#funky1-0.5)" width="760" height="100" x="20" y="220"/>
</g>
<g>
<text x="20" y="355">funky filter base frequency=0.00666666666666667</text>
<filter id="funky1-0.75">
<feTurbulence baseFrequency="0.00666666666666667" numOctaves="3" seed="100"/>
<feComponentTransfer>
<feFuncR type="linear" slope="4" intercept="-1"/>
<feFuncG type="linear" slope="4" intercept="-1"/>
<feFuncB type="linear" slope="4" intercept="-1"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
<feColorMatrix type="saturate"/>
</filter>
<rect filter="url(#funky1-0.75)" width="760" height="100" x="20" y="380"/>
</g>
<g>
<text x="20" y="515">funky filter base frequency=0.005</text>
<filter id="funky1-1">
<feTurbulence baseFrequency="0.005" numOctaves="3" seed="100"/>
<feComponentTransfer>
<feFuncR type="linear" slope="4" intercept="-1"/>
<feFuncG type="linear" slope="4" intercept="-1"/>
<feFuncB type="linear" slope="4" intercept="-1"/>
<feFuncA type="linear" slope="0" intercept="1"/>
</feComponentTransfer>
<feColorMatrix type="saturate"/>
</filter>
<rect filter="url(#funky1-1)" width="760" height="100" x="20" y="540"/>
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

#  ------------------------------------------------------------------------


#  ------------------------------------------------------------------------




# -----------------------------------------------------
# test-filter-Textures-7 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
# test-filter-Textures-8 Ommited!!!

# -----------------------------------------------------



# -----------------------------------------------------
test_that("test-filter-Textures-9", {
WH=c(800, 200) # window rect
m<-rbind( c(1,0,0,0,0), c(0,-1,0,0,0), c(0,0,-1,0,0), c(1,-1,1,0,0))
svgR( wh=WH, 
  rect( cxy=WH/2, wh=WH, stroke.width=2, stroke='black',
    filter = filter(
      feDisplacementMap(  scale=9, xChannelSelector="R", yChannelSelector="B",
        in1=feMerge(
          feMergeNode(in1= feFlood(xy=c(0,0), wh=WH,
          flood.color="#CCAC6C") ),
          feMergeNode(
            feColorMatrix( type="matrix", values=m , 
              in1=feTurbulence( baseFrequency=c(.008,.25), numOctaves=1)
            )
          )
        ),
        in2=feTurbulence( baseFrequency=c(.04,.2), numOctaves=1) 
      )
    ),
    clip.path=clipPath(
      text("Wood", font.size=250, cxy=WH/2, font.face='bold')
    )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<filter id="genid194">
<feFlood flood-color="#CCAC6C" width="800" height="200" x="0" y="0" result="genid190"/>
<feTurbulence baseFrequency="0.008,0.25" numOctaves="1" result="genid191"/>
<feMerge result="genid192">
<feMergeNode in="genid190"/>
<feMergeNode>
<feColorMatrix type="matrix" values="c(1, 0, 0, 1, 0, -1, 0, -1, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0)" in="genid191"/>
</feMergeNode>
</feMerge>
<feTurbulence baseFrequency="0.04,0.2" numOctaves="1" result="genid193"/>
<feDisplacementMap scale="9" xChannelSelector="R" yChannelSelector="B" in="genid192" in2="genid193"/>
</filter>
<clipPath id="genid195">
<text font-size="250" font-face="bold" text-anchor="middle" dominant-baseline="central" x="400" y="100">Wood</text>
</clipPath>
<rect stroke-width="2" stroke="black" filter="url(#genid194)" clip-path="url(#genid195)" width="800" height="200" x="0" y="0"/>
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
test_that("test-filter-Textures-10", {
WH=c(800, 200) # window rect
m<-rbind( c(3,0,0,0,0), c(0,0,0,0,0), c(0,0,-1,0,0), c(1,1,1,0,0))
svgR( wh=WH, 
  rect( cxy=WH/2, wh=WH, stroke.width=2, stroke='black',
    filter = filter(
      feDisplacementMap(  scale=9, xChannelSelector="R", yChannelSelector="B",
        in1=feMerge(
          feMergeNode(in1= feFlood(xy=c(0,0), wh=WH,
          flood.color="#CCDCDC"), flood.opacity=.5 ),
          feMergeNode(
            feColorMatrix( type="matrix", values=m , 
              in1=feTurbulence( baseFrequency=c(.2,.3), numOctaves=1)
            )
          )
        ),
        in2=feTurbulence( baseFrequency=c(.006,.004), numOctaves=2) 
      )
    ),
    clip.path=clipPath(
      text("Stucco", font.size=250, cxy=WH/2, font.face='bold')
    )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<filter id="genid200">
<feFlood flood-color="#CCDCDC" width="800" height="200" x="0" y="0" result="genid196"/>
<feTurbulence baseFrequency="0.2,0.3" numOctaves="1" result="genid197"/>
<feMerge result="genid198">
<feMergeNode in="genid196" flood-opacity="0.5"/>
<feMergeNode>
<feColorMatrix type="matrix" values="c(3, 0, 0, 1, 0, 0, 0, 1, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0)" in="genid197"/>
</feMergeNode>
</feMerge>
<feTurbulence baseFrequency="0.006,0.004" numOctaves="2" result="genid199"/>
<feDisplacementMap scale="9" xChannelSelector="R" yChannelSelector="B" in="genid198" in2="genid199"/>
</filter>
<clipPath id="genid201">
<text font-size="250" font-face="bold" text-anchor="middle" dominant-baseline="central" x="400" y="100">Stucco</text>
</clipPath>
<rect stroke-width="2" stroke="black" filter="url(#genid200)" clip-path="url(#genid201)" width="800" height="200" x="0" y="0"/>
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
test_that("test-filter-Textures-11", {
WH=c(800, 200) # window rect
m<-rbind( c(3,0,0,0,0), c(0,0,0,0,0), c(0,0,-1,0,0), c(1,1,1,0,0))
svgR( wh=WH, 
  rect( cxy=WH/2, wh=WH, stroke.width=2, stroke='black',
    filter = filter(
      feDisplacementMap(  scale=9, xChannelSelector="R", yChannelSelector="B",
        in1=feMerge(
          feMergeNode(in1= feFlood(xy=c(0,0), wh=WH,
          flood.color="#FFDCDC"), flood.opacity=.5 ),
          feMergeNode(
            feColorMatrix( type="matrix", values=m , 
              in1=feTurbulence( baseFrequency=c(.5,.1), numOctaves=4)
            )
          )
        ),
        in2=feTurbulence( baseFrequency=c(.006,.004), numOctaves=2) 
      )
    ),
    clip.path=clipPath(
      text("Stucco", font.size=250, cxy=WH/2, font.face='bold')
    )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<filter id="genid206">
<feFlood flood-color="#FFDCDC" width="800" height="200" x="0" y="0" result="genid202"/>
<feTurbulence baseFrequency="0.5,0.1" numOctaves="4" result="genid203"/>
<feMerge result="genid204">
<feMergeNode in="genid202" flood-opacity="0.5"/>
<feMergeNode>
<feColorMatrix type="matrix" values="c(3, 0, 0, 1, 0, 0, 0, 1, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0)" in="genid203"/>
</feMergeNode>
</feMerge>
<feTurbulence baseFrequency="0.006,0.004" numOctaves="2" result="genid205"/>
<feDisplacementMap scale="9" xChannelSelector="R" yChannelSelector="B" in="genid204" in2="genid205"/>
</filter>
<clipPath id="genid207">
<text font-size="250" font-face="bold" text-anchor="middle" dominant-baseline="central" x="400" y="100">Stucco</text>
</clipPath>
<rect stroke-width="2" stroke="black" filter="url(#genid206)" clip-path="url(#genid207)" width="800" height="200" x="0" y="0"/>
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
test_that("test-filter-Textures-12", {
WH=c(800, 200) # window rect
m<-rbind( c(3,0,0,0,0), c(0,0,0,0,0), c(0,0,-1,0,0), c(1,1,1,0,0))
svgR( wh=WH, 
  rect( cxy=WH/2, wh=WH, stroke.width=2, stroke='black',
    filter = filter(
      feDisplacementMap(  scale=9, xChannelSelector="R", yChannelSelector="B",
        in1=feMerge(
          feMergeNode(in1= feFlood(xy=c(0,0), wh=WH,
          flood.color="#CFFCDC"), flood.opacity=.5 ),
          feMergeNode(
            feColorMatrix( type="matrix", values=m , 
              in1=feTurbulence( baseFrequency=c(.1,.1), numOctaves=4)
            )
          )
        ),
        in2=feTurbulence( baseFrequency=c(.06,.004), numOctaves=2) 
      )
    ),
    clip.path=clipPath(
      text("Jade", font.size=250, cxy=WH/2, font.face='bold')
    )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="200">
<filter id="genid212">
<feFlood flood-color="#CFFCDC" width="800" height="200" x="0" y="0" result="genid208"/>
<feTurbulence baseFrequency="0.1,0.1" numOctaves="4" result="genid209"/>
<feMerge result="genid210">
<feMergeNode in="genid208" flood-opacity="0.5"/>
<feMergeNode>
<feColorMatrix type="matrix" values="c(3, 0, 0, 1, 0, 0, 0, 1, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0)" in="genid209"/>
</feMergeNode>
</feMerge>
<feTurbulence baseFrequency="0.06,0.004" numOctaves="2" result="genid211"/>
<feDisplacementMap scale="9" xChannelSelector="R" yChannelSelector="B" in="genid210" in2="genid211"/>
</filter>
<clipPath id="genid213">
<text font-size="250" font-face="bold" text-anchor="middle" dominant-baseline="central" x="400" y="100">Jade</text>
</clipPath>
<rect stroke-width="2" stroke="black" filter="url(#genid212)" clip-path="url(#genid213)" width="800" height="200" x="0" y="0"/>
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
test_that("test-filter-Textures-13", {
WH=c(800, 300) # window rect
m<-rbind( c(3,0,0,0,0), c(0,0,0,0,0), c(0,0,-1,0,0), c(1,1,1,0,0))
svgR( wh=WH, 
  rect( cxy=WH/2, wh=WH, stroke.width=2, stroke='black',
    filter = filter(
      feDisplacementMap(  scale=9, xChannelSelector="R", yChannelSelector="B",
        in1=feMerge(
          feMergeNode(in1= feFlood(xy=c(0,0), wh=WH,
          flood.color="#CFFCDC"), flood.opacity=.5 ),
          feMergeNode(
            feColorMatrix( type="matrix", values=m , 
              in1=feTurbulence( baseFrequency=c(.01,.01), numOctaves=1)
            )
          )
        ),
        in2=feTurbulence( baseFrequency=c(.006,.04), numOctaves=2) 
      )
    ),
    clip.path=clipPath(
      text("Shiny", font.size=250, cxy=WH/2, font.face='bold')
    )
  )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="800" height="300">
<filter id="genid218">
<feFlood flood-color="#CFFCDC" width="800" height="300" x="0" y="0" result="genid214"/>
<feTurbulence baseFrequency="0.01,0.01" numOctaves="1" result="genid215"/>
<feMerge result="genid216">
<feMergeNode in="genid214" flood-opacity="0.5"/>
<feMergeNode>
<feColorMatrix type="matrix" values="c(3, 0, 0, 1, 0, 0, 0, 1, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0)" in="genid215"/>
</feMergeNode>
</feMerge>
<feTurbulence baseFrequency="0.006,0.04" numOctaves="2" result="genid217"/>
<feDisplacementMap scale="9" xChannelSelector="R" yChannelSelector="B" in="genid216" in2="genid217"/>
</filter>
<clipPath id="genid219">
<text font-size="250" font-face="bold" text-anchor="middle" dominant-baseline="central" x="400" y="150">Shiny</text>
</clipPath>
<rect stroke-width="2" stroke="black" filter="url(#genid218)" clip-path="url(#genid219)" width="800" height="300" x="0" y="0"/>
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



