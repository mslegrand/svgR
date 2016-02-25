"font-face"<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "font-face", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

glyph<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(`vert-origin-xy` = c("vert-origin-x", 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "glyph", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

"missing-glyph"<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(`vert-origin-xy` = c("vert-origin-x", 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "missing-glyph", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

hkern<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "hkern", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

vkern<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "vkern", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

font<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(`horiz-origin-xy` = c("horiz-origin-x", 
    "horiz-origin-y"), `vert-origin-xy` = c("vert-origin-x", 
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
    node <- XMLAbstractNode$new(tag = "font", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

"font-face-name"<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "font-face-name", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

"font-face-format"<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "font-face-format", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

"font-face-uri"<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "font-face-uri", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

animate<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    combos <- list(cxy = c("cx", "cy"), dxy = c("dx", "dy"), 
        fxy = c("fx", "fy"), g12 = c("g1", "g2"), `horiz-origin-xy` = c("horiz-origin-x", 
        "horiz-origin-y"), in12 = c("in", "in2"), k1234 = c("k1", 
        "k2", "k3", "k4"), pointsAtXYZ = c("pointsAtX", "pointsAtY", 
        "pointsAtZ"), refXY = c("refX", "refY"), rxy = c("rx", 
        "ry"), targetXY = c("targetX", "targetY"), u12 = c("u1", 
        "u2"), `vert-origin-xy` = c("vert-origin-x", "vert-origin-y"
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
        }, simplify = FALSE, USE.NAMES = TRUE)
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
    node <- XMLAbstractNode$new(tag = "animate", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

animateColor<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "animateColor", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

animateMotion<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "animateMotion", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

animateTransform<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "animateTransform", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

set<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    combos <- list(cxy = c("cx", "cy"), dxy = c("dx", "dy"), 
        fxy = c("fx", "fy"), g12 = c("g1", "g2"), `horiz-origin-xy` = c("horiz-origin-x", 
        "horiz-origin-y"), in12 = c("in", "in2"), k1234 = c("k1", 
        "k2", "k3", "k4"), pointsAtXYZ = c("pointsAtX", "pointsAtY", 
        "pointsAtZ"), refXY = c("refX", "refY"), rxy = c("rx", 
        "ry"), targetXY = c("targetX", "targetY"), u12 = c("u1", 
        "u2"), `vert-origin-xy` = c("vert-origin-x", "vert-origin-y"
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
        }, simplify = FALSE, USE.NAMES = TRUE)
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
    node <- XMLAbstractNode$new(tag = "set", attrs = attrs, .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

mpath<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "mpath", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feFuncA<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "feFuncA", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feFuncB<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "feFuncB", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feFuncG<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "feFuncG", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feFuncR<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "feFuncR", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feDistantLight<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "feDistantLight", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feTurbulence<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feTurbulence", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feConvolveMatrix<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feConvolveMatrix", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feDiffuseLighting<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feDiffuseLighting", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feOffset<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feOffset", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

filter<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "filter", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feBlend<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feBlend", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feColorMatrix<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feColorMatrix", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feComponentTransfer<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feComponentTransfer", 
        attrs = attrs, .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feComposite<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feComposite", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feDisplacementMap<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feDisplacementMap", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feFlood<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feFlood", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feGaussianBlur<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feGaussianBlur", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feImage<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feImage", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feMerge<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feMerge", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feMorphology<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feMorphology", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feSpecularLighting<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feSpecularLighting", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feTile<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feTile", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feSpotLight<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(pointsAtXYZ = c("pointsAtX", 
    "pointsAtY", "pointsAtZ"), xyz = c("x", "y", "z")))
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "feSpotLight", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

fePointLight<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(xyz = c("x", "y", 
    "z")))
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "fePointLight", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

svg<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "svg", attrs = attrs, .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

a<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "a", attrs = attrs, .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

altGlyph<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "altGlyph", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

circle<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "circle", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

clipPath<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "clipPath", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

cursor<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "cursor", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

defs<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "defs", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

ellipse<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "ellipse", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

foreignObject<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "foreignObject", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

g<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "g", attrs = attrs, .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

image<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "image", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

line<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "line", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

linearGradient<-function (...) 
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
                `stop-color` = colors[i])
            stopi <- XMLAbstractNode$new("stop", attrs = attrs.si)
            args <- c(args, stopi)
        }
    }
    node <- XMLAbstractNode$new(tag = "linearGradient", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

marker<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "marker", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

mask<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "mask", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

path<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "path", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

pattern<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "pattern", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

polygon<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "polygon", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

polyline<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "polyline", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

radialGradient<-function (...) 
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
                `stop-color` = colors[i])
            stopi <- XMLAbstractNode$new("stop", attrs = attrs.si)
            args <- c(args, stopi)
        }
    }
    node <- XMLAbstractNode$new(tag = "radialGradient", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

rect<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "rect", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

script<-function (...) 
{
    args <- list(...)
    stopifnot(length(args) > 0, sapply(args, function(x) inherits(x, 
        "character")))
    js <- paste(args, collapse = "\n")
    XMLScriptNode$new("script", attrs = list(type = "application/ecmascript"), 
        .children = list(XMLCDataNode$new(.children = as.list(js))))
}

switch<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "switch", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

symbol<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "symbol", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

text<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    args <- insertImpliedTextNodes(args)
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "text", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

textPath<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    args <- insertImpliedTextNodes(args)
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
    node <- XMLAbstractNode$new(tag = "textPath", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

tref<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "tref", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

tspan<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    args <- insertImpliedTextNodes(args)
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
    node <- XMLAbstractNode$new(tag = "tspan", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

use<-function (...) 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "use", attrs = attrs, .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

view<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "view", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

altGlyphDef<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "altGlyphDef", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

altGlyphItem<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "altGlyphItem", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

"color-profile"<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "color-profile", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

desc<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "desc", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

feMergeNode<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "feMergeNode", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

"font-face-src"<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "font-face-src", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

glyphRef<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "glyphRef", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

metadata<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "metadata", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

stop<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "stop", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

style<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "style", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

title<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "title", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

font.face<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "font-face", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

missing.glyph<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    attrs <- comboParamHandler(attrs, list(`vert-origin-xy` = c("vert-origin-x", 
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
                filterNode$attrs[["id"]] <- fid
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
    node <- XMLAbstractNode$new(tag = "missing-glyph", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

font.face.name<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "font-face-name", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

font.face.format<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "font-face-format", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

font.face.uri<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "font-face-uri", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

color.profile<-function (...) 
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
    node <- XMLAbstractNode$new(tag = "color-profile", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

font.face.src<-function (...) 
{
    args <- list(...)
    args <- promoteUnamedLists(args)
    attrs <- named(args)
    rtv <- list()
    node <- XMLAbstractNode$new(tag = "font-face-src", attrs = attrs, 
        .children = allGoodChildern(args))
    {
        if (length(rtv) > 0) {
            node <- c(rtv, node)
        }
        node
    }
}

translate<-function (dx, dy = NULL) 
{
    if (length(c(dx, dy)) != 2) {
        stop("bad translate arguments")
    }
    list(translate = c(dx, dy))
}

rotate<-function (angle, x = NULL, y = NULL) 
{
    if (!(length(c(angle, x, y)) %in% c(1, 3))) {
        stop("bad rotate arguments")
    }
    list(rotate = c(angle, x, y))
}

rotatR<-function (angle, x = NULL, y = NULL) 
{
    if (!(length(c(angle, x, y)) %in% c(1, 3))) {
        stop("bad rotate arguments")
    }
    tmp <- c(angle, x, y)
    tmp[1] <- as.numeric(tmp[1]) * 180/pi
    list(rotate = tmp)
}

scale<-function (dx, dy = NULL) 
{
    if (!(length(c(dx, dy)) %in% 2)) {
        stop("bad scale arguments")
    }
    list(scale = c(dx, dy))
}

u.em<-function (x) 
paste0(x, "em")

u.ex<-function (x) 
paste0(x, "ex")

u.px<-function (x) 
paste0(x, "px")

u.pt<-function (x) 
paste0(x, "pt")

u.pc<-function (x) 
paste0(x, "pc")

u.cm<-function (x) 
paste0(x, "cm")

u.mm<-function (x) 
paste0(x, "mm")

u.in<-function (x) 
paste0(x, "in")

u.prct<-function (x) 
paste0(x, "%")

u.rad<-function (x) 
x * 180/pi