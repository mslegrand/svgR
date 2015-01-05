eleDefs<- structure(list("font-face" = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "bbox font-family font-size unicode-range widths"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "panose-1"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    node <- newXMLNode("font-face", attrs = attrs, .children = allGoodChildern(args))
}, glyph = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list("vert-origin-xy" = c("vert-origin-x", 
    "vert-origin-y")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "d"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["path-data-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "glyph-name lang unicode"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("glyph", attrs = attrs, .children = allGoodChildern(args))
}, "missing-glyph" = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list("vert-origin-xy" = c("vert-origin-x", 
    "vert-origin-y")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "d"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["path-data-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("missing-glyph", attrs = attrs, .children = allGoodChildern(args))
}, hkern = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(g12 = c("g1", "g2"
    ), u12 = c("u1", "u2")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "g1 g2"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    node <- newXMLNode("hkern", attrs = attrs, .children = allGoodChildern(args))
}, vkern = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(g12 = c("g1", "g2"
    ), u12 = c("u1", "u2")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "g1 g2"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    node <- newXMLNode("vkern", attrs = attrs, .children = allGoodChildern(args))
}, font = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list("horiz-origin-xy" = c("horiz-origin-x", 
    "horiz-origin-y"), "vert-origin-xy" = c("vert-origin-x", 
    "vert-origin-y")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("font", attrs = attrs, .children = allGoodChildern(args))
}, "font-face-name" = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("font-face-name", attrs = attrs, .children = allGoodChildern(args))
}, "font-face-format" = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("font-face-format", attrs = attrs, .children = allGoodChildern(args))
}, "font-face-uri" = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("font-face-uri", attrs = attrs, .children = allGoodChildern(args))
}, animate = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- mapAttributeName(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "begin end"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "by from to systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "keySplines keyTimes values"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    node <- newXMLNode("animate", attrs = attrs, .children = allGoodChildern(args))
}, animateColor = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- mapAttributeName(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "begin end"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "by from to systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "keySplines keyTimes values"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    node <- newXMLNode("animateColor", attrs = attrs, .children = allGoodChildern(args))
}, animateMotion = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "begin end keyPoints"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "by from to systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "keySplines keyTimes values"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "path"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["path-data-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    node <- newXMLNode("animateMotion", attrs = attrs, .children = allGoodChildern(args))
}, animateTransform = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- mapAttributeName(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "begin end"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "by from to systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "keySplines keyTimes values"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    node <- newXMLNode("animateTransform", attrs = attrs, .children = allGoodChildern(args))
}, set = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- mapAttributeName(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "begin end"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    node <- newXMLNode("set", attrs = attrs, .children = allGoodChildern(args))
}, mpath = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("mpath", attrs = attrs, .children = allGoodChildern(args))
}, feFuncA = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("feFuncA", attrs = attrs, .children = allGoodChildern(args))
}, feFuncB = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("feFuncB", attrs = attrs, .children = allGoodChildern(args))
}, feFuncG = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("feFuncG", attrs = attrs, .children = allGoodChildern(args))
}, feFuncR = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("feFuncR", attrs = attrs, .children = allGoodChildern(args))
}, feDistantLight = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("feDistantLight", attrs = attrs, .children = allGoodChildern(args))
}, feTurbulence = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(wh = c("width", "height"
    ), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "baseFrequency"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["number-optional-number"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feTurbulence", attrs = attrs, .children = allGoodChildern(args))
}, feConvolveMatrix = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(in1 = "in", targetXY = c("targetX", 
    "targetY"), wh = c("width", "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "kernelMatrix class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "kernelUnitLength order"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["number-optional-number"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feConvolveMatrix", attrs = attrs, .children = allGoodChildern(args))
}, feDiffuseLighting = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(in1 = "in", wh = c("width", 
    "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "kernelUnitLength"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["number-optional-number"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feDiffuseLighting", attrs = attrs, .children = allGoodChildern(args))
}, feOffset = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(dxy = c("dx", "dy"
    ), in1 = "in", wh = c("width", "height"), xy = c("x", "y"
    )))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feOffset", attrs = attrs, .children = allGoodChildern(args))
}, filter = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(wh = c("width", "height"
    ), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "filterRes"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["number-optional-number"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("filter", attrs = attrs, .children = allGoodChildern(args))
}, feBlend = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(in1 = "in", in12 = c("in", 
    "in2"), wh = c("width", "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feBlend", attrs = attrs, .children = allGoodChildern(args))
}, feColorMatrix = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(in1 = "in", wh = c("width", 
    "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feColorMatrix", attrs = attrs, .children = allGoodChildern(args))
}, feComponentTransfer = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(in1 = "in", wh = c("width", 
    "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feComponentTransfer", attrs = attrs, 
        .children = allGoodChildern(args))
}, feComposite = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(in1 = "in", in12 = c("in", 
    "in2"), k1234 = c("k1", "k2", "k3", "k4"), wh = c("width", 
    "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feComposite", attrs = attrs, .children = allGoodChildern(args))
}, feDisplacementMap = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(in1 = "in", in12 = c("in", 
    "in2"), wh = c("width", "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feDisplacementMap", attrs = attrs, .children = allGoodChildern(args))
}, feFlood = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(wh = c("width", "height"
    ), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feFlood", attrs = attrs, .children = allGoodChildern(args))
}, feGaussianBlur = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(in1 = "in", wh = c("width", 
    "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "stdDeviation"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["number-optional-number"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feGaussianBlur", attrs = attrs, .children = allGoodChildern(args))
}, feImage = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(wh = c("width", "height"
    ), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class preserveAspectRatio"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feImage", attrs = attrs, .children = allGoodChildern(args))
}, feMerge = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(wh = c("width", "height"
    ), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feMerge", attrs = attrs, .children = allGoodChildern(args))
}, feMorphology = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(in1 = "in", wh = c("width", 
    "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "radius"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["number-optional-number"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feMorphology", attrs = attrs, .children = allGoodChildern(args))
}, feSpecularLighting = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(in1 = "in", wh = c("width", 
    "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "kernelUnitLength"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["number-optional-number"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feSpecularLighting", attrs = attrs, .children = allGoodChildern(args))
}, feTile = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(in1 = "in", wh = c("width", 
    "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("feTile", attrs = attrs, .children = allGoodChildern(args))
}, feSpotLight = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(pointsAtXYZ = c("pointsAtX", 
    "pointsAtY", "pointsAtZ"), xyz = c("x", "y", "z")))
    node <- newXMLNode("feSpotLight", attrs = attrs, .children = allGoodChildern(args))
}, fePointLight = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(xyz = c("x", "y", 
    "z")))
    node <- newXMLNode("fePointLight", attrs = attrs, .children = allGoodChildern(args))
}, svg = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(wh = c("width", "height"
    ), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class preserveAspectRatio"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage viewBox"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("svg", attrs = attrs, .children = allGoodChildern(args))
}, a = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("a", attrs = attrs, .children = allGoodChildern(args))
}, altGlyph = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(dxy = c("dx", "dy"
    ), xy = c("x", "y")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class dx dy rotate x y"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage format glyphRef"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("altGlyph", attrs = attrs, .children = allGoodChildern(args))
}, circle = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(cxy = c("cx", "cy"
    )))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("circle", attrs = attrs, .children = allGoodChildern(args))
}, clipPath = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("clipPath", attrs = attrs, .children = allGoodChildern(args))
}, cursor = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(xy = c("x", "y")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    node <- newXMLNode("cursor", attrs = attrs, .children = allGoodChildern(args))
}, defs = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("defs", attrs = attrs, .children = allGoodChildern(args))
}, ellipse = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(cxy = c("cx", "cy"
    ), rxy = c("rx", "ry")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("ellipse", attrs = attrs, .children = allGoodChildern(args))
}, foreignObject = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(wh = c("width", "height"
    ), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("foreignObject", attrs = attrs, .children = allGoodChildern(args))
}, g = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("g", attrs = attrs, .children = allGoodChildern(args))
}, image = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(wh = c("width", "height"
    ), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class preserveAspectRatio"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("image", attrs = attrs, .children = allGoodChildern(args))
}, line = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(x12 = c("x1", "x2"
    ), xy1 = c("x1", "y1"), xy2 = c("x2", "y2"), y12 = c("y1", 
    "y2")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("line", attrs = attrs, .children = allGoodChildern(args))
}, linearGradient = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(x12 = c("x1", "x2"
    ), xy1 = c("x1", "y1"), xy2 = c("x2", "y2"), y12 = c("y1", 
    "y2")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "gradientTransform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    if ("colors" %in% names(attrs)) {
        colors <- attrs[["colors"]]
        attrs[["colors"]] <- NULL
        if ("offsets" %in% names(attrs)) {
            offsets <- attrs[["offsets"]]
            attrs[["offsets"]] <- NULL
        }
        else {
            offsets <- seq(0, 100, length.out = length(colors))
        }
        for (i in 1:length(colors)) {
            attrs.si <- list(offset = sprintf("%d%%", as.integer(offsets[i])), 
                "stop-color" = colors[i])
            stopi <- newXMLNode("stop", attrs = attrs.si)
            args <- c(args, stopi)
        }
    }
    node <- newXMLNode("linearGradient", attrs = attrs, .children = allGoodChildern(args))
}, marker = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(refXY = c("refX", 
    "refY")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class preserveAspectRatio"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "viewBox"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    node <- newXMLNode("marker", attrs = attrs, .children = allGoodChildern(args))
}, mask = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(wh = c("width", "height"
    ), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("mask", attrs = attrs, .children = allGoodChildern(args))
}, path = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "d"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["path-data-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("path", attrs = attrs, .children = allGoodChildern(args))
}, pattern = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(wh = c("width", "height"
    ), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class preserveAspectRatio"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage viewBox"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "patternTransform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("pattern", attrs = attrs, .children = allGoodChildern(args))
}, polygon = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "points"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("polygon", attrs = attrs, .children = allGoodChildern(args))
}, polyline = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "points"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("polyline", attrs = attrs, .children = allGoodChildern(args))
}, radialGradient = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(cxy = c("cx", "cy"
    ), fxy = c("fx", "fy")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "gradientTransform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    if ("colors" %in% names(attrs)) {
        colors <- attrs[["colors"]]
        attrs[["colors"]] <- NULL
        if ("offsets" %in% names(attrs)) {
            offsets <- attrs[["offsets"]]
            attrs[["offsets"]] <- NULL
        }
        else {
            offsets <- seq(0, 100, length.out = length(colors))
        }
        for (i in 1:length(colors)) {
            attrs.si <- list(offset = sprintf("%d%%", as.integer(offsets[i])), 
                "stop-color" = colors[i])
            stopi <- newXMLNode("stop", attrs = attrs.si)
            args <- c(args, stopi)
        }
    }
    node <- newXMLNode("radialGradient", attrs = attrs, .children = allGoodChildern(args))
}, rect = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(rxy = c("rx", "ry"
    ), wh = c("width", "height"), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("rect", attrs = attrs, .children = allGoodChildern(args))
}, script = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("script", attrs = attrs, .children = allGoodChildern(args))
}, switch = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("switch", attrs = attrs, .children = allGoodChildern(args))
}, symbol = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class preserveAspectRatio"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "viewBox"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    node <- newXMLNode("symbol", attrs = attrs, .children = allGoodChildern(args))
}, text = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(dxy = c("dx", "dy"
    ), xy = c("x", "y")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class dx dy rotate x y"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    if (!is.null(names(attrs))) {
        attr.names <- names(attrs)
        attr.names <- gsub("^(((style))|((weight))|((variant))|((size))|((family)))$", 
            "font-\\1", attr.names, fixed = F)
        attr.names <- gsub("^anchor$", "text-anchor", attr.names)
        names(attrs) <- attr.names
        if (!is.null(attrs[["cxy"]])) {
            attrs[["text-anchor"]] <- "middle"
            attrs[["dominant-baseline"]] = "central"
            attrs[["xy"]] = attrs[["cxy"]]
            attrs[["cxy"]] = NULL
        }
        attrs <- mapArg(attrs, "xy", c("x", "y"))
        text <- NULL
        if ("text" %in% attr.names) {
            text <- attrs["text"]
            attrs["text"] <- NULL
        }
    }
    node <- newXMLNode("text", attrs = attrs, .children = allGoodChildern(args))
}, textPath = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    if (!is.null(names(attrs))) {
        attr.names <- names(attrs)
        attr.names <- gsub("^(((style))|((weight))|((variant))|((size))|((family)))$", 
            "font-\\1", attr.names, fixed = F)
        attr.names <- gsub("^anchor$", "text-anchor", attr.names)
        names(attrs) <- attr.names
        if (!is.null(attrs[["cxy"]])) {
            attrs[["text-anchor"]] <- "middle"
            attrs[["dominant-baseline"]] = "central"
            attrs[["xy"]] = attrs[["cxy"]]
            attrs[["cxy"]] = NULL
        }
        attrs <- mapArg(attrs, "xy", c("x", "y"))
        text <- NULL
        if ("text" %in% attr.names) {
            text <- attrs["text"]
            attrs["text"] <- NULL
        }
    }
    node <- newXMLNode("textPath", attrs = attrs, .children = allGoodChildern(args))
}, tref = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(dxy = c("dx", "dy"
    ), xy = c("x", "y")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class dx dy rotate x y"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("tref", attrs = attrs, .children = allGoodChildern(args))
}, tspan = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(dxy = c("dx", "dy"
    ), xy = c("x", "y")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class dx dy rotate x y"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    if (!is.null(names(attrs))) {
        attr.names <- names(attrs)
        attr.names <- gsub("^(((style))|((weight))|((variant))|((size))|((family)))$", 
            "font-\\1", attr.names, fixed = F)
        attr.names <- gsub("^anchor$", "text-anchor", attr.names)
        names(attrs) <- attr.names
        if (!is.null(attrs[["cxy"]])) {
            attrs[["text-anchor"]] <- "middle"
            attrs[["dominant-baseline"]] = "central"
            attrs[["xy"]] = attrs[["cxy"]]
            attrs[["cxy"]] = NULL
        }
        attrs <- mapArg(attrs, "xy", c("x", "y"))
        text <- NULL
        if ("text" %in% attr.names) {
            text <- attrs["text"]
            attrs["text"] <- NULL
        }
    }
    node <- newXMLNode("tspan", attrs = attrs, .children = allGoodChildern(args))
}, use = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(wh = c("width", "height"
    ), xy = c("x", "y")))
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "transform"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["transform-list"]](x)
        })
    }
    node <- newXMLNode("use", attrs = attrs, .children = allGoodChildern(args))
}, view = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "preserveAspectRatio"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "viewBox"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    node <- newXMLNode("view", attrs = attrs, .children = allGoodChildern(args))
}, altGlyphDef = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("altGlyphDef", attrs = attrs, .children = allGoodChildern(args))
}, altGlyphItem = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("altGlyphItem", attrs = attrs, .children = allGoodChildern(args))
}, "color-profile" = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "local"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    node <- newXMLNode("color-profile", attrs = attrs, .children = allGoodChildern(args))
}, desc = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("desc", attrs = attrs, .children = allGoodChildern(args))
}, feMergeNode = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("feMergeNode", attrs = attrs, .children = allGoodChildern(args))
}, "font-face-src" = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("font-face-src", attrs = attrs, .children = allGoodChildern(args))
}, glyphRef = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(dxy = c("dx", "dy"
    ), xy = c("x", "y")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "format glyphRef"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    node <- newXMLNode("glyphRef", attrs = attrs, .children = allGoodChildern(args))
}, metadata = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("metadata", attrs = attrs, .children = allGoodChildern(args))
}, stop = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("stop", attrs = attrs, .children = allGoodChildern(args))
}, style = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "media"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    node <- newXMLNode("style", attrs = attrs, .children = allGoodChildern(args))
}, title = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("title", attrs = attrs, .children = allGoodChildern(args))
}, font.face = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "bbox font-family font-size unicode-range widths"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "panose-1"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    node <- newXMLNode("font-face", attrs = attrs, .children = allGoodChildern(args))
}, missing.glyph = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list("vert-origin-xy" = c("vert-origin-x", 
    "vert-origin-y")))
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "d"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["path-data-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "class"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cln-scln-list"]](x)
        })
    }
    node <- newXMLNode("missing-glyph", attrs = attrs, .children = allGoodChildern(args))
}, font.face.name = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("font-face-name", attrs = attrs, .children = allGoodChildern(args))
}, font.face.format = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("font-face-format", attrs = attrs, .children = allGoodChildern(args))
}, font.face.uri = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("font-face-uri", attrs = attrs, .children = allGoodChildern(args))
}, color.profile = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "local"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["cmm-list"]](x)
        })
    }
    node <- newXMLNode("color-profile", attrs = attrs, .children = allGoodChildern(args))
}, font.face.src = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    node <- newXMLNode("font-face-src", attrs = attrs, .children = allGoodChildern(args))
}, svgDoc = function (width = 1150, height = 860, ...) 
{
    args <- unlist(c(list(width = width, height = height), list(...)))
    namespaceDefinitions <- list(xmlns = "http://www.w3.org/2000/svg", 
        xmlns = "http://www.w3.org/1999/xlink")
    root <- newXMLNode("svg", attrs = named(args), namespaceDefinitions = namespaceDefinitions, 
        .children = unnamed(args))
    ensureNamespace(root, c(xlink = "http://www.w3.org/1999/xlink"))
    root
}, svgMarkup.new = function (width = 1150, height = 860, namespaceDefinitons = NULL, 
    ...) 
{
    args <- c(list(width = width, height = height), list(...))
    if (is.null(args[["namespaceDefinitons"]])) {
        namespaceDefinitions <- c("http://www.w3.org/2000/svg", 
            xlink = "http://www.w3.org/1999/xlink", ev = "http://www.w3.org/2001/xml-events")
    }
    else {
        namespaceDefinitions <- args[["namespaceDefiniton"]]
        args[["namespaceDefiniton"]] <- NULL
    }
    args[["id"]] <- "rootNode"
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- attrSplitX(attrs, "width", "height", "wh")
    attrs <- attrSplitX(attrs, "x", "y", "xy")
    attrs <- mapCenteredXY(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures class preserveAspectRatio"))
    attrs[indx] <- lapply(attrs[indx], function(x) {
        svgPreproc[["wsp-list"]](x)
    })
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "systemLanguage viewBox"))
    attrs[indx] <- lapply(attrs[indx], function(x) {
        svgPreproc[["cmm-list"]](x)
    })
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "style"))
    attrs[indx] <- lapply(attrs[indx], function(x) {
        svgPreproc[["cln-scln-list"]](x)
    })
    rootNode <- newXMLNode("svg", attrs = attrs, namespaceDefinitions = namespaceDefinitions, 
        .children = unnamed(args))
    doc <- structure(list(rootNode = rootNode, time = 0), class = "svgDoc", 
        wh = c(width, height), delta = 1)
    doc
}, getNode = function (rootNode, id) 
{
    if (id != "root") {
        kidV <- getNodeSet(rootNode, paste("//*[@id=\"", id, 
            "\"]", sep = ""))
    }
    else {
        kidV <- list(rootNode)
    }
    if (length(kidV) == 0) {
        stop("Cannot find node with id=", id)
    }
    kidV
}), .Names = c("font-face", "glyph", "missing-glyph", "hkern", 
"vkern", "font", "font-face-name", "font-face-format", "font-face-uri", 
"animate", "animateColor", "animateMotion", "animateTransform", 
"set", "mpath", "feFuncA", "feFuncB", "feFuncG", "feFuncR", "feDistantLight", 
"feTurbulence", "feConvolveMatrix", "feDiffuseLighting", "feOffset", 
"filter", "feBlend", "feColorMatrix", "feComponentTransfer", 
"feComposite", "feDisplacementMap", "feFlood", "feGaussianBlur", 
"feImage", "feMerge", "feMorphology", "feSpecularLighting", "feTile", 
"feSpotLight", "fePointLight", "svg", "a", "altGlyph", "circle", 
"clipPath", "cursor", "defs", "ellipse", "foreignObject", "g", 
"image", "line", "linearGradient", "marker", "mask", "path", 
"pattern", "polygon", "polyline", "radialGradient", "rect", "script", 
"switch", "symbol", "text", "textPath", "tref", "tspan", "use", 
"view", "altGlyphDef", "altGlyphItem", "color-profile", "desc", 
"feMergeNode", "font-face-src", "glyphRef", "metadata", "stop", 
"style", "title", "font.face", "missing.glyph", "font.face.name", 
"font.face.format", "font.face.uri", "color.profile", "font.face.src", 
"svgDoc", "svgMarkup.new", "getNode"))