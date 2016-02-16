context("OneLineTeasers")


assign("attr.no", 1, envir=environment(genId))
# -----------------------------------------------------
test_that("test-OneLineTeasers-1", {
svgR( wh=c(600, 100), circle(cxy=c(200,50),r=50, fill='lightgreen') )->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<circle r="50" fill="lightgreen" cx="200" cy="50"/>
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
test_that("test-OneLineTeasers-2", {
svgR(  wh=c(600, 150), lapply(1:10, function(i)circle(cxy=c(i*30,i*10),r=5+i, fill=rrgb() ) ))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="150">
<circle r="6" fill="rgb(232,183,209)" cx="30" cy="10"/>
<circle r="7" fill="rgb(233,137,119)" cx="60" cy="20"/>
<circle r="8" fill="rgb(207,217,174)" cx="90" cy="30"/>
<circle r="9" fill="rgb(20,183,122)" cx="120" cy="40"/>
<circle r="10" fill="rgb(232,30,254)" cx="150" cy="50"/>
<circle r="11" fill="rgb(102,159,192)" cx="180" cy="60"/>
<circle r="12" fill="rgb(188,132,72)" cx="210" cy="70"/>
<circle r="13" fill="rgb(162,154,114)" cx="240" cy="80"/>
<circle r="14" fill="rgb(135,68,149)" cx="270" cy="90"/>
<circle r="15" fill="rgb(143,238,211)" cx="300" cy="100"/>
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
test_that("test-OneLineTeasers-3", {
svgR( wh=c(600, 100),  lapply(10:1, function(i)circle(cxy=c(100,50),r=i*5, fill=rrgb()) ))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<circle r="50" fill="rgb(212,185,59)" cx="100" cy="50"/>
<circle r="45" fill="rgb(191,93,200)" cx="100" cy="50"/>
<circle r="40" fill="rgb(166,61,222)" cx="100" cy="50"/>
<circle r="35" fill="rgb(141,148,39)" cx="100" cy="50"/>
<circle r="30" fill="rgb(185,117,82)" cx="100" cy="50"/>
<circle r="25" fill="rgb(219,105,119)" cx="100" cy="50"/>
<circle r="20" fill="rgb(176,195,144)" cx="100" cy="50"/>
<circle r="15" fill="rgb(63,168,85)" cx="100" cy="50"/>
<circle r="10" fill="rgb(156,170,214)" cx="100" cy="50"/>
<circle r="5" fill="rgb(57,216,2)" cx="100" cy="50"/>
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
test_that("test-OneLineTeasers-4", {
svgR( wh=c(600, 100),  lapply(10:1, function(i)circle(cxy=sample(1:100,2),r=5+sample(5:50,1), fill=rrgb()) ))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<circle r="22" fill="rgb(35,224,93)" cx="44" cy="47"/>
<circle r="41" fill="rgb(100,139,38)" cx="58" cy="87"/>
<circle r="54" fill="rgb(166,24,48)" cx="89" cy="10"/>
<circle r="43" fill="rgb(201,152,133)" cx="74" cy="52"/>
<circle r="32" fill="rgb(213,130,48)" cx="68" cy="64"/>
<circle r="24" fill="rgb(52,177,28)" cx="100" cy="55"/>
<circle r="10" fill="rgb(65,36,74)" cx="42" cy="46"/>
<circle r="33" fill="rgb(148,22,163)" cx="11" cy="70"/>
<circle r="45" fill="rgb(10,65,217)" cx="90" cy="8"/>
<circle r="28" fill="rgb(5,254,81)" cx="78" cy="93"/>
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
test_that("test-OneLineTeasers-5", {
svgR( wh=c(600, 100),  polyline(points=sapply(4*pi*(0:5)/5,function(i)c(100,50)+50*c(cos(i),sin(i))), fill='none', stroke='red'))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<polyline points="150,50 59.5491502812526,79.3892626146237 115.450849718747,2.44717418524232 115.450849718747,97.5528258147577 59.5491502812526,20.6107373853764 150,50" fill="none" stroke="red"/>
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
test_that("test-OneLineTeasers-6", {
svgR( wh=c(600, 100),  polyline(points=sapply(1:41,function(i)50*(c(i,1)-i%%2)), fill='red'))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<polyline points="0,0 100,50 100,0 200,50 200,0 300,50 300,0 400,50 400,0 500,50 500,0 600,50 600,0 700,50 700,0 800,50 800,0 900,50 900,0 1000,50 1000,0 1100,50 1100,0 1200,50 1200,0 1300,50 1300,0 1400,50 1400,0 1500,50 1500,0 1600,50 1600,0 1700,50 1700,0 1800,50 1800,0 1900,50 1900,0 2000,50 2000,0" fill="red"/>
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
test_that("test-OneLineTeasers-7", {
svgR( wh=c(600, 100),  lapply(1:15, function(i)rect(xy=i*c(80,0), wh=sample(20:80,2), fill=rrgb())))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<rect fill="rgb(118,167,3)" width="21" height="39" x="80" y="0"/>
<rect fill="rgb(89,66,161)" width="26" height="21" x="160" y="0"/>
<rect fill="rgb(33,95,233)" width="32" height="46" x="240" y="0"/>
<rect fill="rgb(155,53,134)" width="39" height="34" x="320" y="0"/>
<rect fill="rgb(29,218,178)" width="76" height="54" x="400" y="0"/>
<rect fill="rgb(160,127,43)" width="71" height="28" x="480" y="0"/>
<rect fill="rgb(115,56,100)" width="53" height="57" x="560" y="0"/>
<rect fill="rgb(98,21,224)" width="35" height="42" x="640" y="0"/>
<rect fill="rgb(206,188,116)" width="22" height="44" x="720" y="0"/>
<rect fill="rgb(252,205,201)" width="68" height="73" x="800" y="0"/>
<rect fill="rgb(114,187,38)" width="73" height="50" x="880" y="0"/>
<rect fill="rgb(148,251,224)" width="38" height="39" x="960" y="0"/>
<rect fill="rgb(27,255,115)" width="80" height="24" x="1040" y="0"/>
<rect fill="rgb(25,244,251)" width="53" height="63" x="1120" y="0"/>
<rect fill="rgb(6,132,87)" width="42" height="72" x="1200" y="0"/>
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
test_that("test-OneLineTeasers-8", {
svgR( wh=c(600, 100),  lapply(1:256, function(i)line(xy1=c(255,0), xy2=c(i*2,100), stroke=as.rgb(255-i,128,255-i))))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<line stroke="rgb(254,128,254)" x1="255" y1="0" x2="2" y2="100"/>
<line stroke="rgb(253,128,253)" x1="255" y1="0" x2="4" y2="100"/>
<line stroke="rgb(252,128,252)" x1="255" y1="0" x2="6" y2="100"/>
<line stroke="rgb(251,128,251)" x1="255" y1="0" x2="8" y2="100"/>
<line stroke="rgb(250,128,250)" x1="255" y1="0" x2="10" y2="100"/>
<line stroke="rgb(249,128,249)" x1="255" y1="0" x2="12" y2="100"/>
<line stroke="rgb(248,128,248)" x1="255" y1="0" x2="14" y2="100"/>
<line stroke="rgb(247,128,247)" x1="255" y1="0" x2="16" y2="100"/>
<line stroke="rgb(246,128,246)" x1="255" y1="0" x2="18" y2="100"/>
<line stroke="rgb(245,128,245)" x1="255" y1="0" x2="20" y2="100"/>
<line stroke="rgb(244,128,244)" x1="255" y1="0" x2="22" y2="100"/>
<line stroke="rgb(243,128,243)" x1="255" y1="0" x2="24" y2="100"/>
<line stroke="rgb(242,128,242)" x1="255" y1="0" x2="26" y2="100"/>
<line stroke="rgb(241,128,241)" x1="255" y1="0" x2="28" y2="100"/>
<line stroke="rgb(240,128,240)" x1="255" y1="0" x2="30" y2="100"/>
<line stroke="rgb(239,128,239)" x1="255" y1="0" x2="32" y2="100"/>
<line stroke="rgb(238,128,238)" x1="255" y1="0" x2="34" y2="100"/>
<line stroke="rgb(237,128,237)" x1="255" y1="0" x2="36" y2="100"/>
<line stroke="rgb(236,128,236)" x1="255" y1="0" x2="38" y2="100"/>
<line stroke="rgb(235,128,235)" x1="255" y1="0" x2="40" y2="100"/>
<line stroke="rgb(234,128,234)" x1="255" y1="0" x2="42" y2="100"/>
<line stroke="rgb(233,128,233)" x1="255" y1="0" x2="44" y2="100"/>
<line stroke="rgb(232,128,232)" x1="255" y1="0" x2="46" y2="100"/>
<line stroke="rgb(231,128,231)" x1="255" y1="0" x2="48" y2="100"/>
<line stroke="rgb(230,128,230)" x1="255" y1="0" x2="50" y2="100"/>
<line stroke="rgb(229,128,229)" x1="255" y1="0" x2="52" y2="100"/>
<line stroke="rgb(228,128,228)" x1="255" y1="0" x2="54" y2="100"/>
<line stroke="rgb(227,128,227)" x1="255" y1="0" x2="56" y2="100"/>
<line stroke="rgb(226,128,226)" x1="255" y1="0" x2="58" y2="100"/>
<line stroke="rgb(225,128,225)" x1="255" y1="0" x2="60" y2="100"/>
<line stroke="rgb(224,128,224)" x1="255" y1="0" x2="62" y2="100"/>
<line stroke="rgb(223,128,223)" x1="255" y1="0" x2="64" y2="100"/>
<line stroke="rgb(222,128,222)" x1="255" y1="0" x2="66" y2="100"/>
<line stroke="rgb(221,128,221)" x1="255" y1="0" x2="68" y2="100"/>
<line stroke="rgb(220,128,220)" x1="255" y1="0" x2="70" y2="100"/>
<line stroke="rgb(219,128,219)" x1="255" y1="0" x2="72" y2="100"/>
<line stroke="rgb(218,128,218)" x1="255" y1="0" x2="74" y2="100"/>
<line stroke="rgb(217,128,217)" x1="255" y1="0" x2="76" y2="100"/>
<line stroke="rgb(216,128,216)" x1="255" y1="0" x2="78" y2="100"/>
<line stroke="rgb(215,128,215)" x1="255" y1="0" x2="80" y2="100"/>
<line stroke="rgb(214,128,214)" x1="255" y1="0" x2="82" y2="100"/>
<line stroke="rgb(213,128,213)" x1="255" y1="0" x2="84" y2="100"/>
<line stroke="rgb(212,128,212)" x1="255" y1="0" x2="86" y2="100"/>
<line stroke="rgb(211,128,211)" x1="255" y1="0" x2="88" y2="100"/>
<line stroke="rgb(210,128,210)" x1="255" y1="0" x2="90" y2="100"/>
<line stroke="rgb(209,128,209)" x1="255" y1="0" x2="92" y2="100"/>
<line stroke="rgb(208,128,208)" x1="255" y1="0" x2="94" y2="100"/>
<line stroke="rgb(207,128,207)" x1="255" y1="0" x2="96" y2="100"/>
<line stroke="rgb(206,128,206)" x1="255" y1="0" x2="98" y2="100"/>
<line stroke="rgb(205,128,205)" x1="255" y1="0" x2="100" y2="100"/>
<line stroke="rgb(204,128,204)" x1="255" y1="0" x2="102" y2="100"/>
<line stroke="rgb(203,128,203)" x1="255" y1="0" x2="104" y2="100"/>
<line stroke="rgb(202,128,202)" x1="255" y1="0" x2="106" y2="100"/>
<line stroke="rgb(201,128,201)" x1="255" y1="0" x2="108" y2="100"/>
<line stroke="rgb(200,128,200)" x1="255" y1="0" x2="110" y2="100"/>
<line stroke="rgb(199,128,199)" x1="255" y1="0" x2="112" y2="100"/>
<line stroke="rgb(198,128,198)" x1="255" y1="0" x2="114" y2="100"/>
<line stroke="rgb(197,128,197)" x1="255" y1="0" x2="116" y2="100"/>
<line stroke="rgb(196,128,196)" x1="255" y1="0" x2="118" y2="100"/>
<line stroke="rgb(195,128,195)" x1="255" y1="0" x2="120" y2="100"/>
<line stroke="rgb(194,128,194)" x1="255" y1="0" x2="122" y2="100"/>
<line stroke="rgb(193,128,193)" x1="255" y1="0" x2="124" y2="100"/>
<line stroke="rgb(192,128,192)" x1="255" y1="0" x2="126" y2="100"/>
<line stroke="rgb(191,128,191)" x1="255" y1="0" x2="128" y2="100"/>
<line stroke="rgb(190,128,190)" x1="255" y1="0" x2="130" y2="100"/>
<line stroke="rgb(189,128,189)" x1="255" y1="0" x2="132" y2="100"/>
<line stroke="rgb(188,128,188)" x1="255" y1="0" x2="134" y2="100"/>
<line stroke="rgb(187,128,187)" x1="255" y1="0" x2="136" y2="100"/>
<line stroke="rgb(186,128,186)" x1="255" y1="0" x2="138" y2="100"/>
<line stroke="rgb(185,128,185)" x1="255" y1="0" x2="140" y2="100"/>
<line stroke="rgb(184,128,184)" x1="255" y1="0" x2="142" y2="100"/>
<line stroke="rgb(183,128,183)" x1="255" y1="0" x2="144" y2="100"/>
<line stroke="rgb(182,128,182)" x1="255" y1="0" x2="146" y2="100"/>
<line stroke="rgb(181,128,181)" x1="255" y1="0" x2="148" y2="100"/>
<line stroke="rgb(180,128,180)" x1="255" y1="0" x2="150" y2="100"/>
<line stroke="rgb(179,128,179)" x1="255" y1="0" x2="152" y2="100"/>
<line stroke="rgb(178,128,178)" x1="255" y1="0" x2="154" y2="100"/>
<line stroke="rgb(177,128,177)" x1="255" y1="0" x2="156" y2="100"/>
<line stroke="rgb(176,128,176)" x1="255" y1="0" x2="158" y2="100"/>
<line stroke="rgb(175,128,175)" x1="255" y1="0" x2="160" y2="100"/>
<line stroke="rgb(174,128,174)" x1="255" y1="0" x2="162" y2="100"/>
<line stroke="rgb(173,128,173)" x1="255" y1="0" x2="164" y2="100"/>
<line stroke="rgb(172,128,172)" x1="255" y1="0" x2="166" y2="100"/>
<line stroke="rgb(171,128,171)" x1="255" y1="0" x2="168" y2="100"/>
<line stroke="rgb(170,128,170)" x1="255" y1="0" x2="170" y2="100"/>
<line stroke="rgb(169,128,169)" x1="255" y1="0" x2="172" y2="100"/>
<line stroke="rgb(168,128,168)" x1="255" y1="0" x2="174" y2="100"/>
<line stroke="rgb(167,128,167)" x1="255" y1="0" x2="176" y2="100"/>
<line stroke="rgb(166,128,166)" x1="255" y1="0" x2="178" y2="100"/>
<line stroke="rgb(165,128,165)" x1="255" y1="0" x2="180" y2="100"/>
<line stroke="rgb(164,128,164)" x1="255" y1="0" x2="182" y2="100"/>
<line stroke="rgb(163,128,163)" x1="255" y1="0" x2="184" y2="100"/>
<line stroke="rgb(162,128,162)" x1="255" y1="0" x2="186" y2="100"/>
<line stroke="rgb(161,128,161)" x1="255" y1="0" x2="188" y2="100"/>
<line stroke="rgb(160,128,160)" x1="255" y1="0" x2="190" y2="100"/>
<line stroke="rgb(159,128,159)" x1="255" y1="0" x2="192" y2="100"/>
<line stroke="rgb(158,128,158)" x1="255" y1="0" x2="194" y2="100"/>
<line stroke="rgb(157,128,157)" x1="255" y1="0" x2="196" y2="100"/>
<line stroke="rgb(156,128,156)" x1="255" y1="0" x2="198" y2="100"/>
<line stroke="rgb(155,128,155)" x1="255" y1="0" x2="200" y2="100"/>
<line stroke="rgb(154,128,154)" x1="255" y1="0" x2="202" y2="100"/>
<line stroke="rgb(153,128,153)" x1="255" y1="0" x2="204" y2="100"/>
<line stroke="rgb(152,128,152)" x1="255" y1="0" x2="206" y2="100"/>
<line stroke="rgb(151,128,151)" x1="255" y1="0" x2="208" y2="100"/>
<line stroke="rgb(150,128,150)" x1="255" y1="0" x2="210" y2="100"/>
<line stroke="rgb(149,128,149)" x1="255" y1="0" x2="212" y2="100"/>
<line stroke="rgb(148,128,148)" x1="255" y1="0" x2="214" y2="100"/>
<line stroke="rgb(147,128,147)" x1="255" y1="0" x2="216" y2="100"/>
<line stroke="rgb(146,128,146)" x1="255" y1="0" x2="218" y2="100"/>
<line stroke="rgb(145,128,145)" x1="255" y1="0" x2="220" y2="100"/>
<line stroke="rgb(144,128,144)" x1="255" y1="0" x2="222" y2="100"/>
<line stroke="rgb(143,128,143)" x1="255" y1="0" x2="224" y2="100"/>
<line stroke="rgb(142,128,142)" x1="255" y1="0" x2="226" y2="100"/>
<line stroke="rgb(141,128,141)" x1="255" y1="0" x2="228" y2="100"/>
<line stroke="rgb(140,128,140)" x1="255" y1="0" x2="230" y2="100"/>
<line stroke="rgb(139,128,139)" x1="255" y1="0" x2="232" y2="100"/>
<line stroke="rgb(138,128,138)" x1="255" y1="0" x2="234" y2="100"/>
<line stroke="rgb(137,128,137)" x1="255" y1="0" x2="236" y2="100"/>
<line stroke="rgb(136,128,136)" x1="255" y1="0" x2="238" y2="100"/>
<line stroke="rgb(135,128,135)" x1="255" y1="0" x2="240" y2="100"/>
<line stroke="rgb(134,128,134)" x1="255" y1="0" x2="242" y2="100"/>
<line stroke="rgb(133,128,133)" x1="255" y1="0" x2="244" y2="100"/>
<line stroke="rgb(132,128,132)" x1="255" y1="0" x2="246" y2="100"/>
<line stroke="rgb(131,128,131)" x1="255" y1="0" x2="248" y2="100"/>
<line stroke="rgb(130,128,130)" x1="255" y1="0" x2="250" y2="100"/>
<line stroke="rgb(129,128,129)" x1="255" y1="0" x2="252" y2="100"/>
<line stroke="rgb(128,128,128)" x1="255" y1="0" x2="254" y2="100"/>
<line stroke="rgb(127,128,127)" x1="255" y1="0" x2="256" y2="100"/>
<line stroke="rgb(126,128,126)" x1="255" y1="0" x2="258" y2="100"/>
<line stroke="rgb(125,128,125)" x1="255" y1="0" x2="260" y2="100"/>
<line stroke="rgb(124,128,124)" x1="255" y1="0" x2="262" y2="100"/>
<line stroke="rgb(123,128,123)" x1="255" y1="0" x2="264" y2="100"/>
<line stroke="rgb(122,128,122)" x1="255" y1="0" x2="266" y2="100"/>
<line stroke="rgb(121,128,121)" x1="255" y1="0" x2="268" y2="100"/>
<line stroke="rgb(120,128,120)" x1="255" y1="0" x2="270" y2="100"/>
<line stroke="rgb(119,128,119)" x1="255" y1="0" x2="272" y2="100"/>
<line stroke="rgb(118,128,118)" x1="255" y1="0" x2="274" y2="100"/>
<line stroke="rgb(117,128,117)" x1="255" y1="0" x2="276" y2="100"/>
<line stroke="rgb(116,128,116)" x1="255" y1="0" x2="278" y2="100"/>
<line stroke="rgb(115,128,115)" x1="255" y1="0" x2="280" y2="100"/>
<line stroke="rgb(114,128,114)" x1="255" y1="0" x2="282" y2="100"/>
<line stroke="rgb(113,128,113)" x1="255" y1="0" x2="284" y2="100"/>
<line stroke="rgb(112,128,112)" x1="255" y1="0" x2="286" y2="100"/>
<line stroke="rgb(111,128,111)" x1="255" y1="0" x2="288" y2="100"/>
<line stroke="rgb(110,128,110)" x1="255" y1="0" x2="290" y2="100"/>
<line stroke="rgb(109,128,109)" x1="255" y1="0" x2="292" y2="100"/>
<line stroke="rgb(108,128,108)" x1="255" y1="0" x2="294" y2="100"/>
<line stroke="rgb(107,128,107)" x1="255" y1="0" x2="296" y2="100"/>
<line stroke="rgb(106,128,106)" x1="255" y1="0" x2="298" y2="100"/>
<line stroke="rgb(105,128,105)" x1="255" y1="0" x2="300" y2="100"/>
<line stroke="rgb(104,128,104)" x1="255" y1="0" x2="302" y2="100"/>
<line stroke="rgb(103,128,103)" x1="255" y1="0" x2="304" y2="100"/>
<line stroke="rgb(102,128,102)" x1="255" y1="0" x2="306" y2="100"/>
<line stroke="rgb(101,128,101)" x1="255" y1="0" x2="308" y2="100"/>
<line stroke="rgb(100,128,100)" x1="255" y1="0" x2="310" y2="100"/>
<line stroke="rgb(99,128,99)" x1="255" y1="0" x2="312" y2="100"/>
<line stroke="rgb(98,128,98)" x1="255" y1="0" x2="314" y2="100"/>
<line stroke="rgb(97,128,97)" x1="255" y1="0" x2="316" y2="100"/>
<line stroke="rgb(96,128,96)" x1="255" y1="0" x2="318" y2="100"/>
<line stroke="rgb(95,128,95)" x1="255" y1="0" x2="320" y2="100"/>
<line stroke="rgb(94,128,94)" x1="255" y1="0" x2="322" y2="100"/>
<line stroke="rgb(93,128,93)" x1="255" y1="0" x2="324" y2="100"/>
<line stroke="rgb(92,128,92)" x1="255" y1="0" x2="326" y2="100"/>
<line stroke="rgb(91,128,91)" x1="255" y1="0" x2="328" y2="100"/>
<line stroke="rgb(90,128,90)" x1="255" y1="0" x2="330" y2="100"/>
<line stroke="rgb(89,128,89)" x1="255" y1="0" x2="332" y2="100"/>
<line stroke="rgb(88,128,88)" x1="255" y1="0" x2="334" y2="100"/>
<line stroke="rgb(87,128,87)" x1="255" y1="0" x2="336" y2="100"/>
<line stroke="rgb(86,128,86)" x1="255" y1="0" x2="338" y2="100"/>
<line stroke="rgb(85,128,85)" x1="255" y1="0" x2="340" y2="100"/>
<line stroke="rgb(84,128,84)" x1="255" y1="0" x2="342" y2="100"/>
<line stroke="rgb(83,128,83)" x1="255" y1="0" x2="344" y2="100"/>
<line stroke="rgb(82,128,82)" x1="255" y1="0" x2="346" y2="100"/>
<line stroke="rgb(81,128,81)" x1="255" y1="0" x2="348" y2="100"/>
<line stroke="rgb(80,128,80)" x1="255" y1="0" x2="350" y2="100"/>
<line stroke="rgb(79,128,79)" x1="255" y1="0" x2="352" y2="100"/>
<line stroke="rgb(78,128,78)" x1="255" y1="0" x2="354" y2="100"/>
<line stroke="rgb(77,128,77)" x1="255" y1="0" x2="356" y2="100"/>
<line stroke="rgb(76,128,76)" x1="255" y1="0" x2="358" y2="100"/>
<line stroke="rgb(75,128,75)" x1="255" y1="0" x2="360" y2="100"/>
<line stroke="rgb(74,128,74)" x1="255" y1="0" x2="362" y2="100"/>
<line stroke="rgb(73,128,73)" x1="255" y1="0" x2="364" y2="100"/>
<line stroke="rgb(72,128,72)" x1="255" y1="0" x2="366" y2="100"/>
<line stroke="rgb(71,128,71)" x1="255" y1="0" x2="368" y2="100"/>
<line stroke="rgb(70,128,70)" x1="255" y1="0" x2="370" y2="100"/>
<line stroke="rgb(69,128,69)" x1="255" y1="0" x2="372" y2="100"/>
<line stroke="rgb(68,128,68)" x1="255" y1="0" x2="374" y2="100"/>
<line stroke="rgb(67,128,67)" x1="255" y1="0" x2="376" y2="100"/>
<line stroke="rgb(66,128,66)" x1="255" y1="0" x2="378" y2="100"/>
<line stroke="rgb(65,128,65)" x1="255" y1="0" x2="380" y2="100"/>
<line stroke="rgb(64,128,64)" x1="255" y1="0" x2="382" y2="100"/>
<line stroke="rgb(63,128,63)" x1="255" y1="0" x2="384" y2="100"/>
<line stroke="rgb(62,128,62)" x1="255" y1="0" x2="386" y2="100"/>
<line stroke="rgb(61,128,61)" x1="255" y1="0" x2="388" y2="100"/>
<line stroke="rgb(60,128,60)" x1="255" y1="0" x2="390" y2="100"/>
<line stroke="rgb(59,128,59)" x1="255" y1="0" x2="392" y2="100"/>
<line stroke="rgb(58,128,58)" x1="255" y1="0" x2="394" y2="100"/>
<line stroke="rgb(57,128,57)" x1="255" y1="0" x2="396" y2="100"/>
<line stroke="rgb(56,128,56)" x1="255" y1="0" x2="398" y2="100"/>
<line stroke="rgb(55,128,55)" x1="255" y1="0" x2="400" y2="100"/>
<line stroke="rgb(54,128,54)" x1="255" y1="0" x2="402" y2="100"/>
<line stroke="rgb(53,128,53)" x1="255" y1="0" x2="404" y2="100"/>
<line stroke="rgb(52,128,52)" x1="255" y1="0" x2="406" y2="100"/>
<line stroke="rgb(51,128,51)" x1="255" y1="0" x2="408" y2="100"/>
<line stroke="rgb(50,128,50)" x1="255" y1="0" x2="410" y2="100"/>
<line stroke="rgb(49,128,49)" x1="255" y1="0" x2="412" y2="100"/>
<line stroke="rgb(48,128,48)" x1="255" y1="0" x2="414" y2="100"/>
<line stroke="rgb(47,128,47)" x1="255" y1="0" x2="416" y2="100"/>
<line stroke="rgb(46,128,46)" x1="255" y1="0" x2="418" y2="100"/>
<line stroke="rgb(45,128,45)" x1="255" y1="0" x2="420" y2="100"/>
<line stroke="rgb(44,128,44)" x1="255" y1="0" x2="422" y2="100"/>
<line stroke="rgb(43,128,43)" x1="255" y1="0" x2="424" y2="100"/>
<line stroke="rgb(42,128,42)" x1="255" y1="0" x2="426" y2="100"/>
<line stroke="rgb(41,128,41)" x1="255" y1="0" x2="428" y2="100"/>
<line stroke="rgb(40,128,40)" x1="255" y1="0" x2="430" y2="100"/>
<line stroke="rgb(39,128,39)" x1="255" y1="0" x2="432" y2="100"/>
<line stroke="rgb(38,128,38)" x1="255" y1="0" x2="434" y2="100"/>
<line stroke="rgb(37,128,37)" x1="255" y1="0" x2="436" y2="100"/>
<line stroke="rgb(36,128,36)" x1="255" y1="0" x2="438" y2="100"/>
<line stroke="rgb(35,128,35)" x1="255" y1="0" x2="440" y2="100"/>
<line stroke="rgb(34,128,34)" x1="255" y1="0" x2="442" y2="100"/>
<line stroke="rgb(33,128,33)" x1="255" y1="0" x2="444" y2="100"/>
<line stroke="rgb(32,128,32)" x1="255" y1="0" x2="446" y2="100"/>
<line stroke="rgb(31,128,31)" x1="255" y1="0" x2="448" y2="100"/>
<line stroke="rgb(30,128,30)" x1="255" y1="0" x2="450" y2="100"/>
<line stroke="rgb(29,128,29)" x1="255" y1="0" x2="452" y2="100"/>
<line stroke="rgb(28,128,28)" x1="255" y1="0" x2="454" y2="100"/>
<line stroke="rgb(27,128,27)" x1="255" y1="0" x2="456" y2="100"/>
<line stroke="rgb(26,128,26)" x1="255" y1="0" x2="458" y2="100"/>
<line stroke="rgb(25,128,25)" x1="255" y1="0" x2="460" y2="100"/>
<line stroke="rgb(24,128,24)" x1="255" y1="0" x2="462" y2="100"/>
<line stroke="rgb(23,128,23)" x1="255" y1="0" x2="464" y2="100"/>
<line stroke="rgb(22,128,22)" x1="255" y1="0" x2="466" y2="100"/>
<line stroke="rgb(21,128,21)" x1="255" y1="0" x2="468" y2="100"/>
<line stroke="rgb(20,128,20)" x1="255" y1="0" x2="470" y2="100"/>
<line stroke="rgb(19,128,19)" x1="255" y1="0" x2="472" y2="100"/>
<line stroke="rgb(18,128,18)" x1="255" y1="0" x2="474" y2="100"/>
<line stroke="rgb(17,128,17)" x1="255" y1="0" x2="476" y2="100"/>
<line stroke="rgb(16,128,16)" x1="255" y1="0" x2="478" y2="100"/>
<line stroke="rgb(15,128,15)" x1="255" y1="0" x2="480" y2="100"/>
<line stroke="rgb(14,128,14)" x1="255" y1="0" x2="482" y2="100"/>
<line stroke="rgb(13,128,13)" x1="255" y1="0" x2="484" y2="100"/>
<line stroke="rgb(12,128,12)" x1="255" y1="0" x2="486" y2="100"/>
<line stroke="rgb(11,128,11)" x1="255" y1="0" x2="488" y2="100"/>
<line stroke="rgb(10,128,10)" x1="255" y1="0" x2="490" y2="100"/>
<line stroke="rgb(9,128,9)" x1="255" y1="0" x2="492" y2="100"/>
<line stroke="rgb(8,128,8)" x1="255" y1="0" x2="494" y2="100"/>
<line stroke="rgb(7,128,7)" x1="255" y1="0" x2="496" y2="100"/>
<line stroke="rgb(6,128,6)" x1="255" y1="0" x2="498" y2="100"/>
<line stroke="rgb(5,128,5)" x1="255" y1="0" x2="500" y2="100"/>
<line stroke="rgb(4,128,4)" x1="255" y1="0" x2="502" y2="100"/>
<line stroke="rgb(3,128,3)" x1="255" y1="0" x2="504" y2="100"/>
<line stroke="rgb(2,128,2)" x1="255" y1="0" x2="506" y2="100"/>
<line stroke="rgb(1,128,1)" x1="255" y1="0" x2="508" y2="100"/>
<line stroke="rgb(0,128,0)" x1="255" y1="0" x2="510" y2="100"/>
<line stroke="rgb(-1,128,-1)" x1="255" y1="0" x2="512" y2="100"/>
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
test_that("test-OneLineTeasers-9", {
svgR( wh=c(600, 100),  lapply(1:100, function(i)line(x12=sample(0:600,2), y12=c(0,100), stroke=rrgb())))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<line stroke="rgb(32,108,118)" x1="530" x2="110" y1="0" y2="100"/>
<line stroke="rgb(106,5,232)" x1="11" x2="554" y1="0" y2="100"/>
<line stroke="rgb(80,201,244)" x1="129" x2="198" y1="0" y2="100"/>
<line stroke="rgb(78,39,116)" x1="415" x2="78" y1="0" y2="100"/>
<line stroke="rgb(126,15,53)" x1="202" x2="43" y1="0" y2="100"/>
<line stroke="rgb(102,141,181)" x1="529" x2="259" y1="0" y2="100"/>
<line stroke="rgb(170,146,250)" x1="384" x2="3" y1="0" y2="100"/>
<line stroke="rgb(118,190,140)" x1="121" x2="168" y1="0" y2="100"/>
<line stroke="rgb(214,69,231)" x1="142" x2="88" y1="0" y2="100"/>
<line stroke="rgb(7,33,26)" x1="387" x2="354" y1="0" y2="100"/>
<line stroke="rgb(247,22,95)" x1="192" x2="288" y1="0" y2="100"/>
<line stroke="rgb(144,167,54)" x1="295" x2="324" y1="0" y2="100"/>
<line stroke="rgb(156,249,117)" x1="158" x2="532" y1="0" y2="100"/>
<line stroke="rgb(191,232,193)" x1="56" x2="473" y1="0" y2="100"/>
<line stroke="rgb(251,91,58)" x1="308" x2="203" y1="0" y2="100"/>
<line stroke="rgb(149,67,43)" x1="583" x2="277" y1="0" y2="100"/>
<line stroke="rgb(68,236,16)" x1="369" x2="468" y1="0" y2="100"/>
<line stroke="rgb(83,232,123)" x1="99" x2="270" y1="0" y2="100"/>
<line stroke="rgb(12,28,106)" x1="125" x2="426" y1="0" y2="100"/>
<line stroke="rgb(236,31,63)" x1="16" x2="368" y1="0" y2="100"/>
<line stroke="rgb(139,108,178)" x1="381" x2="72" y1="0" y2="100"/>
<line stroke="rgb(204,215,181)" x1="468" x2="357" y1="0" y2="100"/>
<line stroke="rgb(250,84,171)" x1="6" x2="57" y1="0" y2="100"/>
<line stroke="rgb(210,145,38)" x1="125" x2="148" y1="0" y2="100"/>
<line stroke="rgb(220,163,97)" x1="470" x2="465" y1="0" y2="100"/>
<line stroke="rgb(62,137,17)" x1="536" x2="19" y1="0" y2="100"/>
<line stroke="rgb(62,164,66)" x1="227" x2="234" y1="0" y2="100"/>
<line stroke="rgb(46,9,206)" x1="461" x2="180" y1="0" y2="100"/>
<line stroke="rgb(118,153,124)" x1="76" x2="371" y1="0" y2="100"/>
<line stroke="rgb(51,232,99)" x1="70" x2="433" y1="0" y2="100"/>
<line stroke="rgb(114,35,134)" x1="486" x2="546" y1="0" y2="100"/>
<line stroke="rgb(241,200,50)" x1="516" x2="288" y1="0" y2="100"/>
<line stroke="rgb(167,97,43)" x1="217" x2="318" y1="0" y2="100"/>
<line stroke="rgb(216,239,180)" x1="494" x2="54" y1="0" y2="100"/>
<line stroke="rgb(74,252,217)" x1="256" x2="296" y1="0" y2="100"/>
<line stroke="rgb(109,245,38)" x1="163" x2="242" y1="0" y2="100"/>
<line stroke="rgb(101,88,199)" x1="503" x2="546" y1="0" y2="100"/>
<line stroke="rgb(195,7,76)" x1="523" x2="94" y1="0" y2="100"/>
<line stroke="rgb(84,255,234)" x1="24" x2="559" y1="0" y2="100"/>
<line stroke="rgb(46,138,242)" x1="482" x2="279" y1="0" y2="100"/>
<line stroke="rgb(5,246,64)" x1="112" x2="387" y1="0" y2="100"/>
<line stroke="rgb(67,97,225)" x1="502" x2="404" y1="0" y2="100"/>
<line stroke="rgb(168,119,242)" x1="25" x2="29" y1="0" y2="100"/>
<line stroke="rgb(125,161,137)" x1="414" x2="153" y1="0" y2="100"/>
<line stroke="rgb(55,213,37)" x1="111" x2="399" y1="0" y2="100"/>
<line stroke="rgb(79,106,119)" x1="428" x2="152" y1="0" y2="100"/>
<line stroke="rgb(157,151,152)" x1="62" x2="44" y1="0" y2="100"/>
<line stroke="rgb(220,149,152)" x1="208" x2="350" y1="0" y2="100"/>
<line stroke="rgb(156,170,108)" x1="538" x2="272" y1="0" y2="100"/>
<line stroke="rgb(120,155,58)" x1="155" x2="380" y1="0" y2="100"/>
<line stroke="rgb(49,195,142)" x1="558" x2="247" y1="0" y2="100"/>
<line stroke="rgb(110,66,176)" x1="47" x2="17" y1="0" y2="100"/>
<line stroke="rgb(21,57,126)" x1="435" x2="124" y1="0" y2="100"/>
<line stroke="rgb(36,204,150)" x1="111" x2="272" y1="0" y2="100"/>
<line stroke="rgb(22,223,175)" x1="275" x2="241" y1="0" y2="100"/>
<line stroke="rgb(64,14,174)" x1="354" x2="448" y1="0" y2="100"/>
<line stroke="rgb(90,136,231)" x1="407" x2="272" y1="0" y2="100"/>
<line stroke="rgb(169,71,100)" x1="228" x2="236" y1="0" y2="100"/>
<line stroke="rgb(126,6,50)" x1="43" x2="337" y1="0" y2="100"/>
<line stroke="rgb(210,193,192)" x1="279" x2="117" y1="0" y2="100"/>
<line stroke="rgb(2,224,137)" x1="423" x2="95" y1="0" y2="100"/>
<line stroke="rgb(115,54,40)" x1="574" x2="386" y1="0" y2="100"/>
<line stroke="rgb(74,20,162)" x1="188" x2="167" y1="0" y2="100"/>
<line stroke="rgb(158,63,206)" x1="351" x2="32" y1="0" y2="100"/>
<line stroke="rgb(234,38,165)" x1="381" x2="26" y1="0" y2="100"/>
<line stroke="rgb(30,237,175)" x1="408" x2="107" y1="0" y2="100"/>
<line stroke="rgb(172,61,94)" x1="588" x2="422" y1="0" y2="100"/>
<line stroke="rgb(108,225,206)" x1="571" x2="353" y1="0" y2="100"/>
<line stroke="rgb(55,149,114)" x1="298" x2="158" y1="0" y2="100"/>
<line stroke="rgb(37,15,31)" x1="573" x2="593" y1="0" y2="100"/>
<line stroke="rgb(217,228,13)" x1="478" x2="385" y1="0" y2="100"/>
<line stroke="rgb(242,81,98)" x1="156" x2="138" y1="0" y2="100"/>
<line stroke="rgb(255,29,218)" x1="385" x2="34" y1="0" y2="100"/>
<line stroke="rgb(197,14,196)" x1="292" x2="118" y1="0" y2="100"/>
<line stroke="rgb(167,12,244)" x1="55" x2="5" y1="0" y2="100"/>
<line stroke="rgb(201,142,180)" x1="316" x2="373" y1="0" y2="100"/>
<line stroke="rgb(139,89,75)" x1="184" x2="233" y1="0" y2="100"/>
<line stroke="rgb(89,94,35)" x1="69" x2="235" y1="0" y2="100"/>
<line stroke="rgb(109,148,184)" x1="398" x2="229" y1="0" y2="100"/>
<line stroke="rgb(230,93,26)" x1="82" x2="413" y1="0" y2="100"/>
<line stroke="rgb(52,62,200)" x1="121" x2="385" y1="0" y2="100"/>
<line stroke="rgb(119,27,236)" x1="227" x2="379" y1="0" y2="100"/>
<line stroke="rgb(145,196,125)" x1="77" x2="523" y1="0" y2="100"/>
<line stroke="rgb(9,110,224)" x1="485" x2="130" y1="0" y2="100"/>
<line stroke="rgb(13,61,124)" x1="200" x2="590" y1="0" y2="100"/>
<line stroke="rgb(177,7,223)" x1="84" x2="481" y1="0" y2="100"/>
<line stroke="rgb(108,106,174)" x1="473" x2="299" y1="0" y2="100"/>
<line stroke="rgb(97,153,242)" x1="216" x2="133" y1="0" y2="100"/>
<line stroke="rgb(250,172,139)" x1="521" x2="396" y1="0" y2="100"/>
<line stroke="rgb(80,125,109)" x1="345" x2="569" y1="0" y2="100"/>
<line stroke="rgb(140,132,113)" x1="586" x2="35" y1="0" y2="100"/>
<line stroke="rgb(3,162,129)" x1="105" x2="97" y1="0" y2="100"/>
<line stroke="rgb(9,89,240)" x1="160" x2="357" y1="0" y2="100"/>
<line stroke="rgb(174,80,101)" x1="4" x2="173" y1="0" y2="100"/>
<line stroke="rgb(249,65,57)" x1="324" x2="91" y1="0" y2="100"/>
<line stroke="rgb(82,13,203)" x1="198" x2="558" y1="0" y2="100"/>
<line stroke="rgb(188,249,15)" x1="454" x2="407" y1="0" y2="100"/>
<line stroke="rgb(208,119,8)" x1="209" x2="501" y1="0" y2="100"/>
<line stroke="rgb(202,212,32)" x1="543" x2="6" y1="0" y2="100"/>
<line stroke="rgb(74,76,80)" x1="344" x2="546" y1="0" y2="100"/>
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
test_that("test-OneLineTeasers-10", {
svgR( wh=c(600, 100),  lapply(1:10, function(i) rect(cxy=c(100+i*10,50), wh=c(80+i*10,40), fill='none', stroke=rrgb())))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<rect fill="none" stroke="rgb(64,166,193)" width="90" height="40" x="65" y="30"/>
<rect fill="none" stroke="rgb(23,70,74)" width="100" height="40" x="70" y="30"/>
<rect fill="none" stroke="rgb(162,53,204)" width="110" height="40" x="75" y="30"/>
<rect fill="none" stroke="rgb(229,124,248)" width="120" height="40" x="80" y="30"/>
<rect fill="none" stroke="rgb(241,91,247)" width="130" height="40" x="85" y="30"/>
<rect fill="none" stroke="rgb(158,41,244)" width="140" height="40" x="90" y="30"/>
<rect fill="none" stroke="rgb(163,161,232)" width="150" height="40" x="95" y="30"/>
<rect fill="none" stroke="rgb(165,82,13)" width="160" height="40" x="100" y="30"/>
<rect fill="none" stroke="rgb(116,213,173)" width="170" height="40" x="105" y="30"/>
<rect fill="none" stroke="rgb(238,119,110)" width="180" height="40" x="110" y="30"/>
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
test_that("test-OneLineTeasers-11", {
svgR( wh=c(600, 200),  lapply(1:45, function(i) ellipse(cxy=c(100,100), rxy=c(80,40), transform=list(rotate= c(i*4, 100,100)), fill='none', stroke=rrgb())))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<ellipse transform="rotate(4,100,100)" fill="none" stroke="rgb(6,137,117)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(8,100,100)" fill="none" stroke="rgb(29,67,7)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(12,100,100)" fill="none" stroke="rgb(87,72,226)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(16,100,100)" fill="none" stroke="rgb(157,99,248)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(20,100,100)" fill="none" stroke="rgb(57,40,52)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(24,100,100)" fill="none" stroke="rgb(103,145,98)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(28,100,100)" fill="none" stroke="rgb(164,87,46)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(32,100,100)" fill="none" stroke="rgb(149,215,121)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(36,100,100)" fill="none" stroke="rgb(195,148,58)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(40,100,100)" fill="none" stroke="rgb(132,164,7)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(44,100,100)" fill="none" stroke="rgb(250,79,17)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(48,100,100)" fill="none" stroke="rgb(115,101,124)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(52,100,100)" fill="none" stroke="rgb(116,214,103)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(56,100,100)" fill="none" stroke="rgb(57,56,20)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(60,100,100)" fill="none" stroke="rgb(101,182,176)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(64,100,100)" fill="none" stroke="rgb(158,227,133)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(68,100,100)" fill="none" stroke="rgb(213,11,32)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(72,100,100)" fill="none" stroke="rgb(30,160,16)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(76,100,100)" fill="none" stroke="rgb(106,223,78)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(80,100,100)" fill="none" stroke="rgb(87,98,62)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(84,100,100)" fill="none" stroke="rgb(186,96,232)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(88,100,100)" fill="none" stroke="rgb(64,146,222)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(92,100,100)" fill="none" stroke="rgb(7,68,56)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(96,100,100)" fill="none" stroke="rgb(32,168,120)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(100,100,100)" fill="none" stroke="rgb(142,57,54)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(104,100,100)" fill="none" stroke="rgb(240,91,129)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(108,100,100)" fill="none" stroke="rgb(90,114,2)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(112,100,100)" fill="none" stroke="rgb(74,38,233)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(116,100,100)" fill="none" stroke="rgb(153,250,205)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(120,100,100)" fill="none" stroke="rgb(64,181,43)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(124,100,100)" fill="none" stroke="rgb(65,204,83)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(128,100,100)" fill="none" stroke="rgb(39,199,162)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(132,100,100)" fill="none" stroke="rgb(13,99,127)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(136,100,100)" fill="none" stroke="rgb(58,191,185)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(140,100,100)" fill="none" stroke="rgb(8,204,63)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(144,100,100)" fill="none" stroke="rgb(205,7,165)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(148,100,100)" fill="none" stroke="rgb(245,241,58)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(152,100,100)" fill="none" stroke="rgb(9,122,126)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(156,100,100)" fill="none" stroke="rgb(66,31,250)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(160,100,100)" fill="none" stroke="rgb(192,49,197)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(164,100,100)" fill="none" stroke="rgb(213,87,123)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(168,100,100)" fill="none" stroke="rgb(209,167,53)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(172,100,100)" fill="none" stroke="rgb(25,98,21)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(176,100,100)" fill="none" stroke="rgb(200,98,70)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(180,100,100)" fill="none" stroke="rgb(51,158,36)" cx="100" cy="100" rx="80" ry="40"/>
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
test_that("test-OneLineTeasers-12", {
svgR( wh=c(600, 200),  lapply(1:15, function(i) rect(cxy=c(100,100), wh=c(80,80), transform=list(rotate= c(i*8, 100,100)), fill='none', stroke=rrgb())))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<rect transform="rotate(8,100,100)" fill="none" stroke="rgb(40,18,116)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(16,100,100)" fill="none" stroke="rgb(37,220,159)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(24,100,100)" fill="none" stroke="rgb(2,152,62)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(32,100,100)" fill="none" stroke="rgb(74,44,136)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(40,100,100)" fill="none" stroke="rgb(88,181,173)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(48,100,100)" fill="none" stroke="rgb(6,172,55)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(56,100,100)" fill="none" stroke="rgb(112,198,27)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(64,100,100)" fill="none" stroke="rgb(66,142,86)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(72,100,100)" fill="none" stroke="rgb(81,26,204)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(80,100,100)" fill="none" stroke="rgb(36,115,156)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(88,100,100)" fill="none" stroke="rgb(211,103,116)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(96,100,100)" fill="none" stroke="rgb(182,140,74)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(104,100,100)" fill="none" stroke="rgb(124,20,19)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(112,100,100)" fill="none" stroke="rgb(98,71,104)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(120,100,100)" fill="none" stroke="rgb(179,110,49)" width="80" height="80" x="60" y="60"/>
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
test_that("test-OneLineTeasers-13", {
svgR(wh=c(600,200), lapply(0:10,  function(i)circle(cxy=c(350,100),r=30,fill=rrgb(),opacity=.3, transform=list(rotate= c(-i*18,300,100)))))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<circle r="30" fill="rgb(107,22,230)" opacity="0.3" transform="rotate(0,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(49,184,179)" opacity="0.3" transform="rotate(-18,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(80,83,120)" opacity="0.3" transform="rotate(-36,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(95,243,241)" opacity="0.3" transform="rotate(-54,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(74,193,250)" opacity="0.3" transform="rotate(-72,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(216,238,183)" opacity="0.3" transform="rotate(-90,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(38,185,249)" opacity="0.3" transform="rotate(-108,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(87,20,121)" opacity="0.3" transform="rotate(-126,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(243,17,96)" opacity="0.3" transform="rotate(-144,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(53,237,230)" opacity="0.3" transform="rotate(-162,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(240,86,84)" opacity="0.3" transform="rotate(-180,300,100)" cx="350" cy="100"/>
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
test_that("test-OneLineTeasers-14", {
svgR( wh=c(600, 200), lapply( 1:5,  function(x)polygon(points= 5*(c(0,0,-4,6, 4, 6)+ x*c(4,6)), fill='brown')))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="200">
<polygon points="20 30 0 60 40 60" fill="brown"/>
<polygon points="40 60 20 90 60 90" fill="brown"/>
<polygon points="60 90 40 120 80 120" fill="brown"/>
<polygon points="80 120 60 150 100 150" fill="brown"/>
<polygon points="100 150 80 180 120 180" fill="brown"/>
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
test_that("test-OneLineTeasers-15", {
svgR( wh=c(600, 100), line( xy1=c(0,50), xy2=c(600,50), stroke.width=20, stroke.dasharray=8, stroke.dashoffset=16, stroke="lightblue", animate(attributeName="stroke.dashoffset", from=16, to=0 , dur=0.5, repeatCount="indefinite")))->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="600" height="100">
<line stroke-width="20" stroke-dasharray="8" stroke-dashoffset="16" stroke="lightblue" x1="0" y1="50" x2="600" y2="50">
<animate attributeName="stroke-dashoffset" from="16" to="0" dur="0.5" repeatCount="indefinite"/>
</line>
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
test_that("test-OneLineTeasers-16", {
WH<-c(15,18)
svgR(wh=WH,
     circle(cxy=c(5,9), r=3, stroke.width=3, fill="none", stroke="#DDDDDD" ),
     circle(cxy=c(10,9), r=3, stroke.width=3, fill="none", stroke="#DDDDDD" )
)->res
expected_res<-'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ev="http://www.w3.org/2001/xml-events" width="15" height="18">
<circle r="3" stroke-width="3" fill="none" stroke="#DDDDDD" cx="5" cy="9"/>
<circle r="3" stroke-width="3" fill="none" stroke="#DDDDDD" cx="10" cy="9"/>
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



