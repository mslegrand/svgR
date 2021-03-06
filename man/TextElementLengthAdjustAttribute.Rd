% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_RegAttrPages.R
\name{TextElementLengthAdjustAttribute}
\alias{TextElementLengthAdjustAttribute}
\title{lengthAdjust}
\description{
Governs the adjustments to employ to try to render the text with a length matching that specified by the textLength attribute. More specifically, indicates whether to use just spacing or a combination of spacing and glyphs compression or stretching to match the rendered text length match with the value specified by the attribute  textLength.
}
\section{Available Attribute Values}{

The value can be either of the one of the following:
\describe{
\item{\emph{'spacing'}}{Specifies to the user agent, that when attempting to match the rendered text length with the value specified by the \emph{'textLength'} attribute, only spacing adjustments are allowed.}
\item{\emph{'spacingAndGlyphs'}}{Specifies to the user agent, that when attempting to match the rendered text length with the value specified by the \emph{textLength} attribute, both spacing and compressing/stretching of the \emph{glyphs} are allowed.}
}
}

\section{Used by the Elements}{

\describe{
\item{\emph{Text Content Elements}}{\code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
}
}

\keyword{internal}
