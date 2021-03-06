% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_RegAttrPages.R
\name{AltGlyphElementXAttribute}
\alias{AltGlyphElementXAttribute}
\title{x}
\description{
Sets the x-coordinates for the alternative glyphs..
}
\section{Available Attribute Values}{

\describe{
\item{<coordinate>}{Specifies corresponding absolute x-coordinates for \strong{altGlyph} element. If rendering only unicode characters inside a \strong{altGlyph} element, then this specifies the absolute x-coordinates for the first n characters where n is the length of the x-vector . If rendering alternate \emph{glyphs}, then x[1] specifies a new the absolute x-coordinate for the current text position, so that text begins as x[1], with the remainder, x[-1], being ignored.}
}
}

\section{Animatable}{

Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
Supports Additive: No .
}

\section{Used by the Elements}{

\describe{
\item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}}
}
}

\keyword{internal}
