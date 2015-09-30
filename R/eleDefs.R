eleDefs<-
 structure(list("font-face" = function (...) 
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
    rtv <- list()
    node <- newXMLNode("font-face", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
glyph = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("glyph", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
"missing-glyph" = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("missing-glyph", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
hkern = function (...) 
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
    rtv <- list()
    node <- newXMLNode("hkern", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
vkern = function (...) 
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
    rtv <- list()
    node <- newXMLNode("vkern", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
font = function (...) 
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
    rtv <- list()
    node <- newXMLNode("font", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
"font-face-name" = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("font-face-name", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
"font-face-format" = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("font-face-format", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
"font-face-uri" = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("font-face-uri", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
animate = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    combos <- list(cxy = c("cx", "cy"), dxy = c("dx", "dy"), 
        fxy = c("fx", "fy"), g12 = c("g1", "g2"), "horiz-origin-xy" = c("horiz-origin-x", 
        "horiz-origin-y"), in12 = c("in", "in2"), k1234 = c("k1", 
        "k2", "k3", "k4"), pointsAtXYZ = c("pointsAtX", "pointsAtY", 
        "pointsAtZ"), refXY = c("refX", "refY"), rxy = c("rx", 
        "ry"), targetXY = c("targetX", "targetY"), u12 = c("u1", 
        "u2"), "vert-origin-xy" = c("vert-origin-x", "vert-origin-y"
        ), wh = c("width", "height"), x12 = c("x1", "x2"), xy = c("x", 
        "y"), xy1 = c("x1", "y1"), xy2 = c("x2", "y2"), xyz = c("x", 
        "y", "z"), y12 = c("y1", "y2"))
    attributeName <- args[["attributeName"]]
    "# combo should have (values) Xor (from or to)"
    if (is.null(attributeName)) 
        stop("missing attributName in animation")
    aNames <- combos[[attributeName]]
    if (!is.null(aNames)) {
        eListNames <- intersect(names(args), c("from", "to", 
            "values"))
        eList <- sapply(eListNames, function(an) {
            vals <- args[[an]]
            if (an == "values") {
                if (inherits(vals, "character")) {
                  vals <- paste(vals, collapse = ";")
                  vals <- strsplit(vals, ";")[[1]]
                  vals <- vals[grepl("[0-9]", vals)]
                  vals <- as.list(vals)
                  vals <- strsplit(vals, "[ ,]+")[[1]]
                }
                vals <- extractValues(vals, aNames)
            }
            else {
                if (inherits(vals, "character")) {
                  vals <- paste(vals, collapse = " ")
                  vals <- strsplit(vals, "[ ,]+")[[1]]
                }
                vals <- as.list(vals)
                if (!(length(vals)[1] == length(aNames))) 
                  stop(paste0("animated combo attribute has incorrect '", 
                    an, "' count"))
                names(vals) <- aNames
            }
            vals
        }, 
simplify = FALSE, USE.NAMES = TRUE)
        rtv <- lapply(aNames, function(an) {
            args2 <- args
            args2[["attributeName"]] <- an
            eListAN <- lapply(eList, function(el) {
                el[[an]]
            })
            args2[eListNames] <- eListAN
            node <- animate(args2)
            node
        })
        return(rtv)
    }
    attrs <- named(args)
    attrs <- mapAttributeName(attrs)
    attrs <- preProcAnimate(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "begin end keyTimes"))
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
        x, "($| )", sep = ""), "keySplines"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp4scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "values"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    rtv <- list()
    node <- newXMLNode("animate", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
animateColor = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- mapAttributeName(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "begin end keyTimes"))
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
        x, "($| )", sep = ""), "keySplines"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp4scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "values"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    rtv <- list()
    node <- newXMLNode("animateColor", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
animateMotion = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "begin end keyPoints keyTimes"))
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
        x, "($| )", sep = ""), "keySplines"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp4scln-list"]](x)
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
        x, "($| )", sep = ""), "values"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    rtv <- list()
    node <- newXMLNode("animateMotion", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
animateTransform = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- mapAttributeName(attrs)
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "begin end keyTimes"))
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
        x, "($| )", sep = ""), "keySplines"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp4scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "values"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-scln-list"]](x)
        })
    }
    indx <- sapply(names(attrs), function(x) grepl(paste("(^| )", 
        x, "($| )", sep = ""), "requiredExtensions requiredFeatures"))
    if (length(indx) > 0) {
        attrs[indx] <- lapply(attrs[indx], function(x) {
            svgPreproc[["wsp-list"]](x)
        })
    }
    rtv <- list()
    node <- newXMLNode("animateTransform", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
set = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    combos <- list(cxy = c("cx", "cy"), dxy = c("dx", "dy"), 
        fxy = c("fx", "fy"), g12 = c("g1", "g2"), "horiz-origin-xy" = c("horiz-origin-x", 
        "horiz-origin-y"), in12 = c("in", "in2"), k1234 = c("k1", 
        "k2", "k3", "k4"), pointsAtXYZ = c("pointsAtX", "pointsAtY", 
        "pointsAtZ"), refXY = c("refX", "refY"), rxy = c("rx", 
        "ry"), targetXY = c("targetX", "targetY"), u12 = c("u1", 
        "u2"), "vert-origin-xy" = c("vert-origin-x", "vert-origin-y"
        ), wh = c("width", "height"), x12 = c("x1", "x2"), xy = c("x", 
        "y"), xy1 = c("x1", "y1"), xy2 = c("x2", "y2"), xyz = c("x", 
        "y", "z"), y12 = c("y1", "y2"))
    attributeName <- args[["attributeName"]]
    "# combo should have (values) Xor (from or to)"
    if (is.null(attributeName)) 
        stop("missing attributName in animation")
    aNames <- combos[[attributeName]]
    if (!is.null(aNames)) {
        eListNames <- intersect(names(args), c("from", "to", 
            "values"))
        eList <- sapply(eListNames, function(an) {
            vals <- args[[an]]
            if (an == "values") {
                if (inherits(vals, "character")) {
                  vals <- paste(vals, collapse = ";")
                  vals <- strsplit(vals, ";")[[1]]
                  vals <- vals[grepl("[0-9]", vals)]
                  vals <- as.list(vals)
                  vals <- strsplit(vals, "[ ,]+")[[1]]
                }
                vals <- extractValues(vals, aNames)
            }
            else {
                if (inherits(vals, "character")) {
                  vals <- paste(vals, collapse = " ")
                  vals <- strsplit(vals, "[ ,]+")[[1]]
                }
                vals <- as.list(vals)
                if (!(length(vals)[1] == length(aNames))) 
                  stop(paste0("animated combo attribute has incorrect '", 
                    an, "' count"))
                names(vals) <- aNames
            }
            vals
        }, 
simplify = FALSE, USE.NAMES = TRUE)
        rtv <- lapply(aNames, function(an) {
            args2 <- args
            args2[["attributeName"]] <- an
            eListAN <- lapply(eList, function(el) {
                el[[an]]
            })
            args2[eListNames] <- eListAN
            node <- set(args2)
            node
        })
        return(rtv)
    }
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
    rtv <- list()
    node <- newXMLNode("set", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
mpath = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("mpath", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
feFuncA = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("feFuncA", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
feFuncB = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("feFuncB", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
feFuncG = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("feFuncG", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
feFuncR = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("feFuncR", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
feDistantLight = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("feDistantLight", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
feTurbulence = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feTurbulence", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feConvolveMatrix = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    if (inherits(attrs$kernelMatrix, "matrix")) {
        attrs$order <- paste(dim(attrs$kernelMatrix))
    }
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feConvolveMatrix", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feDiffuseLighting = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feDiffuseLighting", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feOffset = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feOffset", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
filter = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    if ("XfeNode" %in% names(args)) {
        tmp <- names(args)
        indx <- which(tmp == "XfeNode")
        tmp[indx] <- ""
        names(args) <- tmp
    }
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
    rtv <- list()
    node <- newXMLNode("filter", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
feBlend = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feBlend", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feColorMatrix = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feColorMatrix", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feComponentTransfer = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feComponentTransfer", attrs = attrs, 
        .children = allGoodChildern(args), suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feComposite = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feComposite", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feDisplacementMap = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feDisplacementMap", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feFlood = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feFlood", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feGaussianBlur = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feGaussianBlur", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feImage = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feImage", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feMerge = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feMerge", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feMorphology = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feMorphology", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feSpecularLighting = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feSpecularLighting", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feTile = function (...) 
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
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feTile", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
feSpotLight = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(pointsAtXYZ = c("pointsAtX", 
    "pointsAtY", "pointsAtZ"), xyz = c("x", "y", "z")))
    rtv <- list()
    node <- newXMLNode("feSpotLight", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
fePointLight = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(xyz = c("x", "y", 
    "z")))
    rtv <- list()
    node <- newXMLNode("fePointLight", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
svg = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("svg", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
a = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("a", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
altGlyph = function (...) 
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
    rtv <- list()
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("altGlyph", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
circle = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("circle", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
clipPath = function (...) 
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
    rtv <- list()
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("clipPath", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
cursor = function (...) 
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
    rtv <- list()
    node <- newXMLNode("cursor", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
defs = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("defs", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
ellipse = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("ellipse", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
foreignObject = function (...) 
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
    rtv <- list()
    node <- newXMLNode("foreignObject", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
g = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-end" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-end")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-mid" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-mid")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-start" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-start")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("g", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
image = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("image", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
line = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-end" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-end")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-mid" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-mid")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-start" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-start")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("line", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
linearGradient = function (...) 
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
    rtv <- list()
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
    node <- newXMLNode("linearGradient", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
marker = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("marker", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
mask = function (...) 
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
    rtv <- list()
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("mask", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
path = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-end" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-end")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-mid" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-mid")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-start" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-start")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("path", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
pattern = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("pattern", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
polygon = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-end" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-end")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-mid" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-mid")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-start" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-start")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("polygon", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
polyline = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-end" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-end")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-mid" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-mid")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("marker-start" %in% names(attrs)) {
        indx <- which(names(attrs) == "marker-start")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "marker")) {
                  stop("Bad marker parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("polyline", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
radialGradient = function (...) 
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
    rtv <- list()
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
    node <- newXMLNode("radialGradient", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
rect = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("rect", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
script = function (...) 
{
    args <- list(...)
    stopifnot(length(args) > 0, sapply(args, function(x) inherits(x, 
        "character")))
    js <- paste(args, collapse = "\n")
    newXMLNode("script", attrs = list(type = "text/JavaScript"), 
        newXMLCDataNode(js), suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
}, 
switch = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("switch", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
symbol = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("symbol", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
text = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
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
    node <- newXMLNode("text", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
textPath = function (...) 
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
    rtv <- list()
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
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
    node <- newXMLNode("textPath", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
tref = function (...) 
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
    rtv <- list()
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("tref", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
tspan = function (...) 
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
    rtv <- list()
    if ("fill" %in% names(attrs)) {
        indx <- which(names(attrs) == "fill")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% c("pattern", "linearGradient", 
                "radialGradient"))) {
                  stop("Bad fill parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
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
    node <- newXMLNode("tspan", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
use = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("use", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
view = function (...) 
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
    rtv <- list()
    node <- newXMLNode("view", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
altGlyphDef = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("altGlyphDef", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
altGlyphItem = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("altGlyphItem", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
"color-profile" = function (...) 
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
    rtv <- list()
    node <- newXMLNode("color-profile", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
desc = function (...) 
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
    rtv <- list()
    node <- newXMLNode("desc", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
feMergeNode = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    {
        indx <- which(names(attrs) == "XfeNode")
        if (length(indx) > 0) {
            tmp <- attrs[indx]
            attrs <- attrs[-indx]
            rtv <- c(rtv, tmp)
        }
        indx.in <- which(names(attrs) == "in" | names(attrs) == 
            "in2")
        for (n in indx.in) {
            an <- attrs[[n]]
            if (inherits(an, "list") && length(an) >= 1) {
                len <- length(an)
                rtv <- c(rtv, an[1:(len - 1)])
                feNode = an[[len]]
            }
            else {
                feNode = an
            }
            if (inherits(feNode, "XMLAbstractNode")) {
                resultStr <- getsafeNodeAttr("result", feNode)
                rtv <- c(rtv, XfeNode = feNode)
                attrs[[n]] <- resultStr
            }
        }
    }
    node <- newXMLNode("feMergeNode", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
    node <- c(rtv, node)
}, 
"font-face-src" = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("font-face-src", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
glyphRef = function (...) 
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
    rtv <- list()
    node <- newXMLNode("glyphRef", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
metadata = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("metadata", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
stop = function (...) 
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
    rtv <- list()
    node <- newXMLNode("stop", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
style = function (...) 
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
    rtv <- list()
    node <- newXMLNode("style", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
title = function (...) 
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
    rtv <- list()
    node <- newXMLNode("title", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
font.face = function (...) 
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
    rtv <- list()
    node <- newXMLNode("font-face", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
missing.glyph = function (...) 
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
    rtv <- list()
    if ("filter" %in% names(attrs)) {
        indx <- which(names(attrs) == "filter")
        for (n in indx) {
            filterNode <- attrs[[n]]
            if (inherits(filterNode, "XMLAbstractNode")) {
                if (xmlName(filterNode) != "filter") {
                  stop("Not a filter node")
                }
                fid <- getsafeNodeAttr("id", filterNode)
                rtv <- c(rtv, filterNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("clip-path" %in% names(attrs)) {
        indx <- which(names(attrs) == "clip-path")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "clipPath")) {
                  stop("Bad clipPath parameter")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    if ("mask" %in% names(attrs)) {
        indx <- which(names(attrs) == "mask")
        for (n in indx) {
            aNode <- attrs[[n]]
            if (inherits(aNode, "XMLAbstractNode")) {
                if (!(xmlName(aNode) %in% "mask")) {
                  stop("Bad mask")
                }
                fid <- getsafeNodeAttr("id", aNode)
                rtv <- c(rtv, aNode)
                attrs[[n]] = paste0("url(#", fid, ")")
            }
        }
    }
    node <- newXMLNode("missing-glyph", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
font.face.name = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("font-face-name", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
font.face.format = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("font-face-format", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
font.face.uri = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("font-face-uri", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
color.profile = function (...) 
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
    rtv <- list()
    node <- newXMLNode("color-profile", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
font.face.src = function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- newXMLNode("font-face-src", attrs = attrs, .children = allGoodChildern(args), 
        suppressNamespaceWarning = getOption("suppressXMLNamespaceWarning", 
            TRUE))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}, 
getNode = function (rootNode, id) 
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
"getNode"))