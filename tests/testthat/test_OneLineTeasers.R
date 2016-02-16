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
<circle r="6" fill="rgb(167,250,79)" cx="30" cy="10"/>
<circle r="7" fill="rgb(47,191,216)" cx="60" cy="20"/>
<circle r="8" fill="rgb(217,204,44)" cx="90" cy="30"/>
<circle r="9" fill="rgb(46,37,53)" cx="120" cy="40"/>
<circle r="10" fill="rgb(99,112,128)" cx="150" cy="50"/>
<circle r="11" fill="rgb(158,230,222)" cx="180" cy="60"/>
<circle r="12" fill="rgb(244,145,88)" cx="210" cy="70"/>
<circle r="13" fill="rgb(55,174,158)" cx="240" cy="80"/>
<circle r="14" fill="rgb(137,222,109)" cx="270" cy="90"/>
<circle r="15" fill="rgb(44,126,85)" cx="300" cy="100"/>
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
<circle r="50" fill="rgb(91,121,86)" cx="100" cy="50"/>
<circle r="45" fill="rgb(56,75,151)" cx="100" cy="50"/>
<circle r="40" fill="rgb(130,189,168)" cx="100" cy="50"/>
<circle r="35" fill="rgb(223,55,165)" cx="100" cy="50"/>
<circle r="30" fill="rgb(73,98,97)" cx="100" cy="50"/>
<circle r="25" fill="rgb(16,41,24)" cx="100" cy="50"/>
<circle r="20" fill="rgb(135,6,244)" cx="100" cy="50"/>
<circle r="15" fill="rgb(216,12,87)" cx="100" cy="50"/>
<circle r="10" fill="rgb(123,238,126)" cx="100" cy="50"/>
<circle r="5" fill="rgb(52,236,3)" cx="100" cy="50"/>
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
<circle r="36" fill="rgb(183,231,124)" cx="49" cy="41"/>
<circle r="20" fill="rgb(242,201,190)" cx="71" cy="53"/>
<circle r="53" fill="rgb(172,21,162)" cx="39" cy="74"/>
<circle r="31" fill="rgb(15,52,108)" cx="56" cy="13"/>
<circle r="22" fill="rgb(129,235,17)" cx="45" cy="50"/>
<circle r="25" fill="rgb(128,74,49)" cx="97" cy="3"/>
<circle r="15" fill="rgb(88,93,2)" cx="1" cy="99"/>
<circle r="37" fill="rgb(40,184,159)" cx="73" cy="18"/>
<circle r="16" fill="rgb(48,108,73)" cx="14" cy="21"/>
<circle r="39" fill="rgb(96,248,2)" cx="84" cy="79"/>
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
<rect fill="rgb(235,30,91)" width="47" height="57" x="80" y="0"/>
<rect fill="rgb(102,131,17)" width="60" height="80" x="160" y="0"/>
<rect fill="rgb(39,32,215)" width="67" height="30" x="240" y="0"/>
<rect fill="rgb(152,244,39)" width="55" height="39" x="320" y="0"/>
<rect fill="rgb(180,154,98)" width="56" height="78" x="400" y="0"/>
<rect fill="rgb(102,210,56)" width="63" height="40" x="480" y="0"/>
<rect fill="rgb(3,108,48)" width="41" height="45" x="560" y="0"/>
<rect fill="rgb(60,184,73)" width="26" height="38" x="640" y="0"/>
<rect fill="rgb(161,111,96)" width="28" height="53" x="720" y="0"/>
<rect fill="rgb(92,109,1)" width="22" height="68" x="800" y="0"/>
<rect fill="rgb(9,184,202)" width="56" height="67" x="880" y="0"/>
<rect fill="rgb(70,166,138)" width="47" height="35" x="960" y="0"/>
<rect fill="rgb(43,204,245)" width="22" height="59" x="1040" y="0"/>
<rect fill="rgb(97,245,72)" width="63" height="75" x="1120" y="0"/>
<rect fill="rgb(161,184,180)" width="69" height="26" x="1200" y="0"/>
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
<line stroke="rgb(179,159,243)" x1="456" x2="11" y1="0" y2="100"/>
<line stroke="rgb(198,91,193)" x1="150" x2="525" y1="0" y2="100"/>
<line stroke="rgb(246,242,163)" x1="65" x2="26" y1="0" y2="100"/>
<line stroke="rgb(102,177,97)" x1="357" x2="121" y1="0" y2="100"/>
<line stroke="rgb(123,188,68)" x1="152" x2="581" y1="0" y2="100"/>
<line stroke="rgb(218,136,187)" x1="278" x2="291" y1="0" y2="100"/>
<line stroke="rgb(204,124,16)" x1="148" x2="180" y1="0" y2="100"/>
<line stroke="rgb(30,142,145)" x1="109" x2="491" y1="0" y2="100"/>
<line stroke="rgb(86,145,27)" x1="298" x2="519" y1="0" y2="100"/>
<line stroke="rgb(181,198,62)" x1="106" x2="506" y1="0" y2="100"/>
<line stroke="rgb(120,81,235)" x1="553" x2="396" y1="0" y2="100"/>
<line stroke="rgb(39,111,149)" x1="478" x2="134" y1="0" y2="100"/>
<line stroke="rgb(120,228,61)" x1="284" x2="145" y1="0" y2="100"/>
<line stroke="rgb(196,132,197)" x1="117" x2="125" y1="0" y2="100"/>
<line stroke="rgb(80,77,16)" x1="419" x2="179" y1="0" y2="100"/>
<line stroke="rgb(92,89,7)" x1="30" x2="426" y1="0" y2="100"/>
<line stroke="rgb(212,175,142)" x1="448" x2="290" y1="0" y2="100"/>
<line stroke="rgb(78,41,121)" x1="272" x2="15" y1="0" y2="100"/>
<line stroke="rgb(135,70,73)" x1="95" x2="380" y1="0" y2="100"/>
<line stroke="rgb(64,204,91)" x1="321" x2="315" y1="0" y2="100"/>
<line stroke="rgb(236,55,164)" x1="137" x2="148" y1="0" y2="100"/>
<line stroke="rgb(214,86,80)" x1="319" x2="414" y1="0" y2="100"/>
<line stroke="rgb(166,72,110)" x1="273" x2="588" y1="0" y2="100"/>
<line stroke="rgb(42,227,194)" x1="396" x2="247" y1="0" y2="100"/>
<line stroke="rgb(226,144,211)" x1="41" x2="266" y1="0" y2="100"/>
<line stroke="rgb(238,152,108)" x1="174" x2="531" y1="0" y2="100"/>
<line stroke="rgb(94,244,9)" x1="467" x2="507" y1="0" y2="100"/>
<line stroke="rgb(172,66,22)" x1="178" x2="124" y1="0" y2="100"/>
<line stroke="rgb(254,230,187)" x1="297" x2="43" y1="0" y2="100"/>
<line stroke="rgb(236,83,223)" x1="214" x2="495" y1="0" y2="100"/>
<line stroke="rgb(61,169,204)" x1="400" x2="231" y1="0" y2="100"/>
<line stroke="rgb(191,133,116)" x1="565" x2="419" y1="0" y2="100"/>
<line stroke="rgb(174,156,44)" x1="26" x2="321" y1="0" y2="100"/>
<line stroke="rgb(123,19,90)" x1="94" x2="31" y1="0" y2="100"/>
<line stroke="rgb(178,159,5)" x1="391" x2="216" y1="0" y2="100"/>
<line stroke="rgb(127,23,134)" x1="575" x2="169" y1="0" y2="100"/>
<line stroke="rgb(35,59,230)" x1="268" x2="496" y1="0" y2="100"/>
<line stroke="rgb(127,217,48)" x1="58" x2="75" y1="0" y2="100"/>
<line stroke="rgb(40,38,27)" x1="497" x2="46" y1="0" y2="100"/>
<line stroke="rgb(144,80,47)" x1="480" x2="286" y1="0" y2="100"/>
<line stroke="rgb(190,250,197)" x1="277" x2="498" y1="0" y2="100"/>
<line stroke="rgb(152,220,71)" x1="281" x2="487" y1="0" y2="100"/>
<line stroke="rgb(242,79,89)" x1="302" x2="5" y1="0" y2="100"/>
<line stroke="rgb(198,229,91)" x1="308" x2="595" y1="0" y2="100"/>
<line stroke="rgb(16,138,142)" x1="331" x2="324" y1="0" y2="100"/>
<line stroke="rgb(192,138,117)" x1="47" x2="525" y1="0" y2="100"/>
<line stroke="rgb(141,23,41)" x1="397" x2="540" y1="0" y2="100"/>
<line stroke="rgb(169,123,5)" x1="257" x2="551" y1="0" y2="100"/>
<line stroke="rgb(37,28,196)" x1="251" x2="350" y1="0" y2="100"/>
<line stroke="rgb(23,215,13)" x1="127" x2="374" y1="0" y2="100"/>
<line stroke="rgb(135,62,96)" x1="382" x2="96" y1="0" y2="100"/>
<line stroke="rgb(84,124,48)" x1="15" x2="489" y1="0" y2="100"/>
<line stroke="rgb(103,244,19)" x1="35" x2="478" y1="0" y2="100"/>
<line stroke="rgb(38,36,212)" x1="274" x2="2" y1="0" y2="100"/>
<line stroke="rgb(168,100,248)" x1="275" x2="368" y1="0" y2="100"/>
<line stroke="rgb(108,53,61)" x1="562" x2="161" y1="0" y2="100"/>
<line stroke="rgb(29,242,146)" x1="154" x2="591" y1="0" y2="100"/>
<line stroke="rgb(3,43,139)" x1="217" x2="562" y1="0" y2="100"/>
<line stroke="rgb(212,77,13)" x1="393" x2="113" y1="0" y2="100"/>
<line stroke="rgb(162,220,14)" x1="216" x2="576" y1="0" y2="100"/>
<line stroke="rgb(83,119,186)" x1="5" x2="330" y1="0" y2="100"/>
<line stroke="rgb(196,32,243)" x1="593" x2="143" y1="0" y2="100"/>
<line stroke="rgb(71,143,37)" x1="589" x2="576" y1="0" y2="100"/>
<line stroke="rgb(170,137,135)" x1="65" x2="29" y1="0" y2="100"/>
<line stroke="rgb(218,231,115)" x1="115" x2="389" y1="0" y2="100"/>
<line stroke="rgb(77,219,213)" x1="187" x2="288" y1="0" y2="100"/>
<line stroke="rgb(178,175,41)" x1="280" x2="45" y1="0" y2="100"/>
<line stroke="rgb(128,152,77)" x1="459" x2="481" y1="0" y2="100"/>
<line stroke="rgb(152,129,230)" x1="382" x2="355" y1="0" y2="100"/>
<line stroke="rgb(208,18,44)" x1="294" x2="240" y1="0" y2="100"/>
<line stroke="rgb(172,190,164)" x1="400" x2="103" y1="0" y2="100"/>
<line stroke="rgb(201,242,138)" x1="428" x2="141" y1="0" y2="100"/>
<line stroke="rgb(170,102,214)" x1="198" x2="496" y1="0" y2="100"/>
<line stroke="rgb(217,46,224)" x1="445" x2="96" y1="0" y2="100"/>
<line stroke="rgb(123,197,81)" x1="519" x2="526" y1="0" y2="100"/>
<line stroke="rgb(197,5,57)" x1="128" x2="267" y1="0" y2="100"/>
<line stroke="rgb(27,192,185)" x1="331" x2="267" y1="0" y2="100"/>
<line stroke="rgb(176,86,27)" x1="315" x2="585" y1="0" y2="100"/>
<line stroke="rgb(237,157,189)" x1="424" x2="475" y1="0" y2="100"/>
<line stroke="rgb(192,233,219)" x1="358" x2="163" y1="0" y2="100"/>
<line stroke="rgb(174,2,121)" x1="560" x2="432" y1="0" y2="100"/>
<line stroke="rgb(182,217,66)" x1="48" x2="472" y1="0" y2="100"/>
<line stroke="rgb(196,92,112)" x1="380" x2="498" y1="0" y2="100"/>
<line stroke="rgb(159,52,143)" x1="139" x2="594" y1="0" y2="100"/>
<line stroke="rgb(117,121,147)" x1="91" x2="457" y1="0" y2="100"/>
<line stroke="rgb(199,169,190)" x1="350" x2="23" y1="0" y2="100"/>
<line stroke="rgb(132,232,146)" x1="238" x2="297" y1="0" y2="100"/>
<line stroke="rgb(14,252,83)" x1="320" x2="435" y1="0" y2="100"/>
<line stroke="rgb(206,224,83)" x1="336" x2="333" y1="0" y2="100"/>
<line stroke="rgb(149,177,15)" x1="429" x2="396" y1="0" y2="100"/>
<line stroke="rgb(238,251,202)" x1="398" x2="23" y1="0" y2="100"/>
<line stroke="rgb(158,161,221)" x1="515" x2="504" y1="0" y2="100"/>
<line stroke="rgb(188,51,215)" x1="70" x2="489" y1="0" y2="100"/>
<line stroke="rgb(25,188,250)" x1="484" x2="529" y1="0" y2="100"/>
<line stroke="rgb(216,8,110)" x1="117" x2="137" y1="0" y2="100"/>
<line stroke="rgb(3,243,60)" x1="253" x2="340" y1="0" y2="100"/>
<line stroke="rgb(34,154,93)" x1="253" x2="470" y1="0" y2="100"/>
<line stroke="rgb(65,84,12)" x1="115" x2="7" y1="0" y2="100"/>
<line stroke="rgb(200,121,3)" x1="594" x2="169" y1="0" y2="100"/>
<line stroke="rgb(206,76,246)" x1="131" x2="380" y1="0" y2="100"/>
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
<rect fill="none" stroke="rgb(79,232,198)" width="90" height="40" x="65" y="30"/>
<rect fill="none" stroke="rgb(179,200,62)" width="100" height="40" x="70" y="30"/>
<rect fill="none" stroke="rgb(12,173,195)" width="110" height="40" x="75" y="30"/>
<rect fill="none" stroke="rgb(177,36,216)" width="120" height="40" x="80" y="30"/>
<rect fill="none" stroke="rgb(20,19,254)" width="130" height="40" x="85" y="30"/>
<rect fill="none" stroke="rgb(102,206,20)" width="140" height="40" x="90" y="30"/>
<rect fill="none" stroke="rgb(58,138,65)" width="150" height="40" x="95" y="30"/>
<rect fill="none" stroke="rgb(99,244,59)" width="160" height="40" x="100" y="30"/>
<rect fill="none" stroke="rgb(174,230,206)" width="170" height="40" x="105" y="30"/>
<rect fill="none" stroke="rgb(250,149,240)" width="180" height="40" x="110" y="30"/>
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
<ellipse transform="rotate(4,100,100)" fill="none" stroke="rgb(76,196,45)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(8,100,100)" fill="none" stroke="rgb(64,168,231)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(12,100,100)" fill="none" stroke="rgb(137,190,156)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(16,100,100)" fill="none" stroke="rgb(164,38,131)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(20,100,100)" fill="none" stroke="rgb(56,156,231)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(24,100,100)" fill="none" stroke="rgb(183,75,171)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(28,100,100)" fill="none" stroke="rgb(205,241,113)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(32,100,100)" fill="none" stroke="rgb(64,234,127)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(36,100,100)" fill="none" stroke="rgb(166,151,175)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(40,100,100)" fill="none" stroke="rgb(65,6,5)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(44,100,100)" fill="none" stroke="rgb(45,104,121)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(48,100,100)" fill="none" stroke="rgb(125,78,148)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(52,100,100)" fill="none" stroke="rgb(221,173,79)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(56,100,100)" fill="none" stroke="rgb(242,37,83)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(60,100,100)" fill="none" stroke="rgb(104,162,24)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(64,100,100)" fill="none" stroke="rgb(165,74,83)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(68,100,100)" fill="none" stroke="rgb(33,254,99)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(72,100,100)" fill="none" stroke="rgb(44,214,75)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(76,100,100)" fill="none" stroke="rgb(172,53,160)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(80,100,100)" fill="none" stroke="rgb(131,102,201)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(84,100,100)" fill="none" stroke="rgb(114,229,198)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(88,100,100)" fill="none" stroke="rgb(92,160,209)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(92,100,100)" fill="none" stroke="rgb(196,165,211)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(96,100,100)" fill="none" stroke="rgb(141,200,78)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(100,100,100)" fill="none" stroke="rgb(165,119,179)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(104,100,100)" fill="none" stroke="rgb(153,214,219)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(108,100,100)" fill="none" stroke="rgb(51,34,81)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(112,100,100)" fill="none" stroke="rgb(69,129,14)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(116,100,100)" fill="none" stroke="rgb(111,76,56)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(120,100,100)" fill="none" stroke="rgb(149,150,41)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(124,100,100)" fill="none" stroke="rgb(138,58,148)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(128,100,100)" fill="none" stroke="rgb(234,50,32)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(132,100,100)" fill="none" stroke="rgb(110,238,182)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(136,100,100)" fill="none" stroke="rgb(231,106,126)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(140,100,100)" fill="none" stroke="rgb(147,118,110)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(144,100,100)" fill="none" stroke="rgb(64,184,82)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(148,100,100)" fill="none" stroke="rgb(117,140,212)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(152,100,100)" fill="none" stroke="rgb(178,173,179)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(156,100,100)" fill="none" stroke="rgb(241,186,233)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(160,100,100)" fill="none" stroke="rgb(5,78,76)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(164,100,100)" fill="none" stroke="rgb(2,29,121)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(168,100,100)" fill="none" stroke="rgb(133,162,192)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(172,100,100)" fill="none" stroke="rgb(208,47,123)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(176,100,100)" fill="none" stroke="rgb(102,205,146)" cx="100" cy="100" rx="80" ry="40"/>
<ellipse transform="rotate(180,100,100)" fill="none" stroke="rgb(106,65,186)" cx="100" cy="100" rx="80" ry="40"/>
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
<rect transform="rotate(8,100,100)" fill="none" stroke="rgb(204,70,60)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(16,100,100)" fill="none" stroke="rgb(228,211,210)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(24,100,100)" fill="none" stroke="rgb(94,235,10)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(32,100,100)" fill="none" stroke="rgb(224,45,240)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(40,100,100)" fill="none" stroke="rgb(47,106,237)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(48,100,100)" fill="none" stroke="rgb(158,1,137)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(56,100,100)" fill="none" stroke="rgb(39,14,21)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(64,100,100)" fill="none" stroke="rgb(126,112,250)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(72,100,100)" fill="none" stroke="rgb(5,181,49)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(80,100,100)" fill="none" stroke="rgb(119,156,182)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(88,100,100)" fill="none" stroke="rgb(231,142,9)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(96,100,100)" fill="none" stroke="rgb(89,193,186)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(104,100,100)" fill="none" stroke="rgb(46,227,222)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(112,100,100)" fill="none" stroke="rgb(151,160,69)" width="80" height="80" x="60" y="60"/>
<rect transform="rotate(120,100,100)" fill="none" stroke="rgb(60,80,72)" width="80" height="80" x="60" y="60"/>
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
<circle r="30" fill="rgb(224,67,199)" opacity="0.3" transform="rotate(0,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(162,95,118)" opacity="0.3" transform="rotate(-18,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(53,141,61)" opacity="0.3" transform="rotate(-36,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(98,96,132)" opacity="0.3" transform="rotate(-54,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(28,128,218)" opacity="0.3" transform="rotate(-72,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(113,36,151)" opacity="0.3" transform="rotate(-90,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(210,202,170)" opacity="0.3" transform="rotate(-108,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(118,20,148)" opacity="0.3" transform="rotate(-126,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(128,114,96)" opacity="0.3" transform="rotate(-144,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(252,129,29)" opacity="0.3" transform="rotate(-162,300,100)" cx="350" cy="100"/>
<circle r="30" fill="rgb(24,155,131)" opacity="0.3" transform="rotate(-180,300,100)" cx="350" cy="100"/>
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



